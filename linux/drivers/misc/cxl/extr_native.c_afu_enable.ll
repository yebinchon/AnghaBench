; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_afu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_afu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"AFU enable request\0A\00", align 1
@CXL_AFU_Cntl_An_E = common dso_local global i32 0, align 4
@CXL_AFU_Cntl_An_ES_Enabled = common dso_local global i32 0, align 4
@CXL_AFU_Cntl_An_ES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*)* @afu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afu_enable(%struct.cxl_afu* %0) #0 {
  %2 = alloca %struct.cxl_afu*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %2, align 8
  %3 = call i32 @pr_devel(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %5 = load i32, i32* @CXL_AFU_Cntl_An_E, align 4
  %6 = load i32, i32* @CXL_AFU_Cntl_An_ES_Enabled, align 4
  %7 = load i32, i32* @CXL_AFU_Cntl_An_ES_MASK, align 4
  %8 = call i32 @afu_control(%struct.cxl_afu* %4, i32 %5, i32 0, i32 %6, i32 %7, i32 1)
  ret i32 %8
}

declare dso_local i32 @pr_devel(i8*) #1

declare dso_local i32 @afu_control(%struct.cxl_afu*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
