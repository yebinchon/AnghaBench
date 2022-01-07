; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_afu_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_afu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"AFU reset request\0A\00", align 1
@CXL_AFU_Cntl_An_RA = common dso_local global i32 0, align 4
@CXL_AFU_Cntl_An_RS_Complete = common dso_local global i32 0, align 4
@CXL_AFU_Cntl_An_ES_Disabled = common dso_local global i32 0, align 4
@CXL_AFU_Cntl_An_RS_MASK = common dso_local global i32 0, align 4
@CXL_AFU_Cntl_An_ES_MASK = common dso_local global i32 0, align 4
@CXL_PSL_SERR_An = common dso_local global i32 0, align 4
@CXL_PSL_SERR_An_IRQ_MASKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*)* @native_afu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_afu_reset(%struct.cxl_afu* %0) #0 {
  %2 = alloca %struct.cxl_afu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %2, align 8
  %5 = call i32 @pr_devel(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %7 = load i32, i32* @CXL_AFU_Cntl_An_RA, align 4
  %8 = load i32, i32* @CXL_AFU_Cntl_An_RS_Complete, align 4
  %9 = load i32, i32* @CXL_AFU_Cntl_An_ES_Disabled, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @CXL_AFU_Cntl_An_RS_MASK, align 4
  %12 = load i32, i32* @CXL_AFU_Cntl_An_ES_MASK, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @afu_control(%struct.cxl_afu* %6, i32 %7, i32 0, i32 %10, i32 %13, i32 0)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %16 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %21 = load i32, i32* @CXL_PSL_SERR_An, align 4
  %22 = call i32 @cxl_p1n_read(%struct.cxl_afu* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @CXL_PSL_SERR_An_IRQ_MASKS, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %28 = load i32, i32* @CXL_PSL_SERR_An, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @cxl_p1n_write(%struct.cxl_afu* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %19, %1
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @pr_devel(i8*) #1

declare dso_local i32 @afu_control(%struct.cxl_afu*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cxl_p1n_read(%struct.cxl_afu*, i32) #1

declare dso_local i32 @cxl_p1n_write(%struct.cxl_afu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
