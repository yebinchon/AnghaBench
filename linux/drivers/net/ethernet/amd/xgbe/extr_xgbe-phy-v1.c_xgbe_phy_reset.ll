; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v1.c_xgbe_phy_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v1.c_xgbe_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_CTRL1_RESET = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_reset(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %7 = load i32, i32* @MDIO_MMD_PCS, align 4
  %8 = load i32, i32* @MDIO_CTRL1, align 4
  %9 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %6, i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @MDIO_CTRL1_RESET, align 4
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %14 = load i32, i32* @MDIO_MMD_PCS, align 4
  %15 = load i32, i32* @MDIO_CTRL1, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %13, i32 %14, i32 %15, i32 %16)
  store i32 50, i32* %5, align 4
  br label %18

18:                                               ; preds = %33, %1
  %19 = call i32 @msleep(i32 20)
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %21 = load i32, i32* @MDIO_MMD_PCS, align 4
  %22 = load i32, i32* @MDIO_CTRL1, align 4
  %23 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %20, i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MDIO_CTRL1_RESET, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, -1
  store i32 %31, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i1 [ false, %24 ], [ %32, %29 ]
  br i1 %34, label %18, label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @MDIO_CTRL1_RESET, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @ETIMEDOUT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @XMDIO_READ(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XMDIO_WRITE(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
