; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_ccdc_config_black_compense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_ccdc_config_black_compense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_ccdc = type { i32 }
%struct.vpfe_ccdc_black_compensation = type { i32, i32, i32, i32 }

@VPFE_BLK_COMP_MASK = common dso_local global i32 0, align 4
@VPFE_BLK_COMP_GB_COMP_SHIFT = common dso_local global i32 0, align 4
@VPFE_BLK_COMP_GR_COMP_SHIFT = common dso_local global i32 0, align 4
@VPFE_BLK_COMP_R_COMP_SHIFT = common dso_local global i32 0, align 4
@VPFE_BLKCMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpfe_ccdc*, %struct.vpfe_ccdc_black_compensation*)* @vpfe_ccdc_config_black_compense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpfe_ccdc_config_black_compense(%struct.vpfe_ccdc* %0, %struct.vpfe_ccdc_black_compensation* %1) #0 {
  %3 = alloca %struct.vpfe_ccdc*, align 8
  %4 = alloca %struct.vpfe_ccdc_black_compensation*, align 8
  %5 = alloca i32, align 4
  store %struct.vpfe_ccdc* %0, %struct.vpfe_ccdc** %3, align 8
  store %struct.vpfe_ccdc_black_compensation* %1, %struct.vpfe_ccdc_black_compensation** %4, align 8
  %6 = load %struct.vpfe_ccdc_black_compensation*, %struct.vpfe_ccdc_black_compensation** %4, align 8
  %7 = getelementptr inbounds %struct.vpfe_ccdc_black_compensation, %struct.vpfe_ccdc_black_compensation* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @VPFE_BLK_COMP_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load %struct.vpfe_ccdc_black_compensation*, %struct.vpfe_ccdc_black_compensation** %4, align 8
  %12 = getelementptr inbounds %struct.vpfe_ccdc_black_compensation, %struct.vpfe_ccdc_black_compensation* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @VPFE_BLK_COMP_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @VPFE_BLK_COMP_GB_COMP_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %10, %17
  %19 = load %struct.vpfe_ccdc_black_compensation*, %struct.vpfe_ccdc_black_compensation** %4, align 8
  %20 = getelementptr inbounds %struct.vpfe_ccdc_black_compensation, %struct.vpfe_ccdc_black_compensation* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VPFE_BLK_COMP_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @VPFE_BLK_COMP_GR_COMP_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %18, %25
  %27 = load %struct.vpfe_ccdc_black_compensation*, %struct.vpfe_ccdc_black_compensation** %4, align 8
  %28 = getelementptr inbounds %struct.vpfe_ccdc_black_compensation, %struct.vpfe_ccdc_black_compensation* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @VPFE_BLK_COMP_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @VPFE_BLK_COMP_R_COMP_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %26, %33
  store i32 %34, i32* %5, align 4
  %35 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @VPFE_BLKCMP, align 4
  %38 = call i32 @vpfe_reg_write(%struct.vpfe_ccdc* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @vpfe_reg_write(%struct.vpfe_ccdc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
