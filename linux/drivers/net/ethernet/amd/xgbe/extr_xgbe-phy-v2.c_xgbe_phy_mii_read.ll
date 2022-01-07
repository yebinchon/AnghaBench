; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_mii_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_mii_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.xgbe_prv_data* }
%struct.xgbe_prv_data = type { %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i32 }

@XGBE_CONN_TYPE_SFP = common dso_local global i32 0, align 4
@XGBE_CONN_TYPE_MDIO = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @xgbe_phy_mii_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_mii_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xgbe_prv_data*, align 8
  %9 = alloca %struct.xgbe_phy_data*, align 8
  %10 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 0
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %12, align 8
  store %struct.xgbe_prv_data* %13, %struct.xgbe_prv_data** %8, align 8
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %8, align 8
  %15 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %14, i32 0, i32 0
  %16 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %15, align 8
  store %struct.xgbe_phy_data* %16, %struct.xgbe_phy_data** %9, align 8
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %8, align 8
  %18 = call i32 @xgbe_phy_get_comm_ownership(%struct.xgbe_prv_data* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %53

23:                                               ; preds = %3
  %24 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %9, align 8
  %25 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @XGBE_CONN_TYPE_SFP, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @xgbe_phy_i2c_mii_read(%struct.xgbe_prv_data* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  br label %49

33:                                               ; preds = %23
  %34 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %9, align 8
  %35 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @XGBE_CONN_TYPE_MDIO, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @xgbe_phy_mdio_mii_read(%struct.xgbe_prv_data* %41, i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  br label %48

45:                                               ; preds = %33
  %46 = load i32, i32* @ENOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %45, %40
  br label %49

49:                                               ; preds = %48, %29
  %50 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %8, align 8
  %51 = call i32 @xgbe_phy_put_comm_ownership(%struct.xgbe_prv_data* %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %21
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @xgbe_phy_get_comm_ownership(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_i2c_mii_read(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_phy_mdio_mii_read(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @xgbe_phy_put_comm_ownership(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
