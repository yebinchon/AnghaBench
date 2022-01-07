; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_an73_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_an73_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_PMA_10GBR_PMD_CTRL = common dso_local global i32 0, align 4
@XGBE_KR_TRAINING_ENABLE = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_AN_CTRL1_ENABLE = common dso_local global i32 0, align 4
@MDIO_AN_CTRL1_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, i32, i32)* @xgbe_an73_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_an73_set(%struct.xgbe_prv_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %9 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %10 = load i32, i32* @MDIO_PMA_10GBR_PMD_CTRL, align 4
  %11 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %8, i32 %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @XGBE_KR_TRAINING_ENABLE, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %17 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %18 = load i32, i32* @MDIO_PMA_10GBR_PMD_CTRL, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %22 = load i32, i32* @MDIO_MMD_AN, align 4
  %23 = load i32, i32* @MDIO_CTRL1, align 4
  %24 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %21, i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @MDIO_AN_CTRL1_ENABLE, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load i32, i32* @MDIO_AN_CTRL1_ENABLE, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %3
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @MDIO_AN_CTRL1_RESTART, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %44 = load i32, i32* @MDIO_MMD_AN, align 4
  %45 = load i32, i32* @MDIO_CTRL1, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %43, i32 %44, i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @XMDIO_READ(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XMDIO_WRITE(%struct.xgbe_prv_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
