; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_activate_dedicated_process_psl8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_activate_dedicated_process_psl8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Activating dedicated process mode\0A\00", align 1
@CXL_PSL_SCNTL_An = common dso_local global i32 0, align 4
@CXL_PSL_SCNTL_An_PM_Process = common dso_local global i32 0, align 4
@CXL_PSL_CtxTime_An = common dso_local global i32 0, align 4
@CXL_PSL_SPAP_An = common dso_local global i32 0, align 4
@CXL_PSL_AMOR_An = common dso_local global i32 0, align 4
@CXL_PSL_LPID_An = common dso_local global i32 0, align 4
@SPRN_LPID = common dso_local global i32 0, align 4
@CXL_HAURP_An = common dso_local global i32 0, align 4
@CXL_PSL_SDR_An = common dso_local global i32 0, align 4
@SPRN_SDR1 = common dso_local global i32 0, align 4
@CXL_CSRP_An = common dso_local global i32 0, align 4
@CXL_AURP0_An = common dso_local global i32 0, align 4
@CXL_AURP1_An = common dso_local global i32 0, align 4
@CXL_MODE_DEDICATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_activate_dedicated_process_psl8(%struct.cxl_afu* %0) #0 {
  %2 = alloca %struct.cxl_afu*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %2, align 8
  %3 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %4 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %3, i32 0, i32 2
  %5 = call i32 @dev_info(i32* %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %7 = load i32, i32* @CXL_PSL_SCNTL_An, align 4
  %8 = load i32, i32* @CXL_PSL_SCNTL_An_PM_Process, align 4
  %9 = call i32 @cxl_p1n_write(%struct.cxl_afu* %6, i32 %7, i32 %8)
  %10 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %11 = load i32, i32* @CXL_PSL_CtxTime_An, align 4
  %12 = call i32 @cxl_p1n_write(%struct.cxl_afu* %10, i32 %11, i32 0)
  %13 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %14 = load i32, i32* @CXL_PSL_SPAP_An, align 4
  %15 = call i32 @cxl_p1n_write(%struct.cxl_afu* %13, i32 %14, i32 0)
  %16 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %17 = load i32, i32* @CXL_PSL_AMOR_An, align 4
  %18 = call i32 @cxl_p1n_write(%struct.cxl_afu* %16, i32 %17, i32 -1)
  %19 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %20 = load i32, i32* @CXL_PSL_LPID_An, align 4
  %21 = load i32, i32* @SPRN_LPID, align 4
  %22 = call i32 @mfspr(i32 %21)
  %23 = call i32 @cxl_p1n_write(%struct.cxl_afu* %19, i32 %20, i32 %22)
  %24 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %25 = load i32, i32* @CXL_HAURP_An, align 4
  %26 = call i32 @cxl_p1n_write(%struct.cxl_afu* %24, i32 %25, i32 0)
  %27 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %28 = load i32, i32* @CXL_PSL_SDR_An, align 4
  %29 = load i32, i32* @SPRN_SDR1, align 4
  %30 = call i32 @mfspr(i32 %29)
  %31 = call i32 @cxl_p1n_write(%struct.cxl_afu* %27, i32 %28, i32 %30)
  %32 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %33 = load i32, i32* @CXL_CSRP_An, align 4
  %34 = call i32 @cxl_p2n_write(%struct.cxl_afu* %32, i32 %33, i32 0)
  %35 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %36 = load i32, i32* @CXL_AURP0_An, align 4
  %37 = call i32 @cxl_p2n_write(%struct.cxl_afu* %35, i32 %36, i32 0)
  %38 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %39 = load i32, i32* @CXL_AURP1_An, align 4
  %40 = call i32 @cxl_p2n_write(%struct.cxl_afu* %38, i32 %39, i32 0)
  %41 = load i32, i32* @CXL_MODE_DEDICATED, align 4
  %42 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %43 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %45 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %47 = call i32 @cxl_chardev_d_afu_add(%struct.cxl_afu* %46)
  ret i32 %47
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @cxl_p1n_write(%struct.cxl_afu*, i32, i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @cxl_p2n_write(%struct.cxl_afu*, i32, i32) #1

declare dso_local i32 @cxl_chardev_d_afu_add(%struct.cxl_afu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
