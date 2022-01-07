; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_ccdc_config_black_clamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_ccdc_config_black_clamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_ccdc = type { i32 }
%struct.vpfe_ccdc_black_clamp = type { i32, i32, i32, i32, i32, i32 }

@VPFE_BLK_DC_SUB_MASK = common dso_local global i32 0, align 4
@VPFE_DCSUB = common dso_local global i32 0, align 4
@VPFE_CLAMP_DEFAULT_VAL = common dso_local global i32 0, align 4
@VPFE_CLAMP = common dso_local global i32 0, align 4
@VPFE_BLK_SGAIN_MASK = common dso_local global i32 0, align 4
@VPFE_BLK_ST_PXL_MASK = common dso_local global i32 0, align 4
@VPFE_BLK_ST_PXL_SHIFT = common dso_local global i32 0, align 4
@VPFE_BLK_SAMPLE_LINE_MASK = common dso_local global i32 0, align 4
@VPFE_BLK_SAMPLE_LINE_SHIFT = common dso_local global i32 0, align 4
@VPFE_BLK_SAMPLE_LN_MASK = common dso_local global i32 0, align 4
@VPFE_BLK_SAMPLE_LN_SHIFT = common dso_local global i32 0, align 4
@VPFE_BLK_CLAMP_ENABLE = common dso_local global i32 0, align 4
@VPFE_DCSUB_DEFAULT_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpfe_ccdc*, %struct.vpfe_ccdc_black_clamp*)* @vpfe_ccdc_config_black_clamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpfe_ccdc_config_black_clamp(%struct.vpfe_ccdc* %0, %struct.vpfe_ccdc_black_clamp* %1) #0 {
  %3 = alloca %struct.vpfe_ccdc*, align 8
  %4 = alloca %struct.vpfe_ccdc_black_clamp*, align 8
  %5 = alloca i32, align 4
  store %struct.vpfe_ccdc* %0, %struct.vpfe_ccdc** %3, align 8
  store %struct.vpfe_ccdc_black_clamp* %1, %struct.vpfe_ccdc_black_clamp** %4, align 8
  %6 = load %struct.vpfe_ccdc_black_clamp*, %struct.vpfe_ccdc_black_clamp** %4, align 8
  %7 = getelementptr inbounds %struct.vpfe_ccdc_black_clamp, %struct.vpfe_ccdc_black_clamp* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = load %struct.vpfe_ccdc_black_clamp*, %struct.vpfe_ccdc_black_clamp** %4, align 8
  %12 = getelementptr inbounds %struct.vpfe_ccdc_black_clamp, %struct.vpfe_ccdc_black_clamp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @VPFE_BLK_DC_SUB_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @VPFE_DCSUB, align 4
  %19 = call i32 @vpfe_reg_write(%struct.vpfe_ccdc* %16, i32 %17, i32 %18)
  %20 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %3, align 8
  %21 = load i32, i32* @VPFE_CLAMP_DEFAULT_VAL, align 4
  %22 = load i32, i32* @VPFE_CLAMP, align 4
  %23 = call i32 @vpfe_reg_write(%struct.vpfe_ccdc* %20, i32 %21, i32 %22)
  br label %64

24:                                               ; preds = %2
  %25 = load %struct.vpfe_ccdc_black_clamp*, %struct.vpfe_ccdc_black_clamp** %4, align 8
  %26 = getelementptr inbounds %struct.vpfe_ccdc_black_clamp, %struct.vpfe_ccdc_black_clamp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VPFE_BLK_SGAIN_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load %struct.vpfe_ccdc_black_clamp*, %struct.vpfe_ccdc_black_clamp** %4, align 8
  %31 = getelementptr inbounds %struct.vpfe_ccdc_black_clamp, %struct.vpfe_ccdc_black_clamp* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @VPFE_BLK_ST_PXL_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @VPFE_BLK_ST_PXL_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %29, %36
  %38 = load %struct.vpfe_ccdc_black_clamp*, %struct.vpfe_ccdc_black_clamp** %4, align 8
  %39 = getelementptr inbounds %struct.vpfe_ccdc_black_clamp, %struct.vpfe_ccdc_black_clamp* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @VPFE_BLK_SAMPLE_LINE_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @VPFE_BLK_SAMPLE_LINE_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = or i32 %37, %44
  %46 = load %struct.vpfe_ccdc_black_clamp*, %struct.vpfe_ccdc_black_clamp** %4, align 8
  %47 = getelementptr inbounds %struct.vpfe_ccdc_black_clamp, %struct.vpfe_ccdc_black_clamp* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @VPFE_BLK_SAMPLE_LN_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @VPFE_BLK_SAMPLE_LN_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %45, %52
  %54 = load i32, i32* @VPFE_BLK_CLAMP_ENABLE, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %5, align 4
  %56 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @VPFE_CLAMP, align 4
  %59 = call i32 @vpfe_reg_write(%struct.vpfe_ccdc* %56, i32 %57, i32 %58)
  %60 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %3, align 8
  %61 = load i32, i32* @VPFE_DCSUB_DEFAULT_VAL, align 4
  %62 = load i32, i32* @VPFE_DCSUB, align 4
  %63 = call i32 @vpfe_reg_write(%struct.vpfe_ccdc* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %24, %10
  ret void
}

declare dso_local i32 @vpfe_reg_write(%struct.vpfe_ccdc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
