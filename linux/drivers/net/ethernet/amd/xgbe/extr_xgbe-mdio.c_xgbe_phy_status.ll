; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_phy_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_phy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.xgbe_prv_data.0*, i32*)* }
%struct.xgbe_prv_data.0 = type opaque

@XGBE_LINK_ERR = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@XGBE_LINK_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_phy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_phy_status(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %5 = load i32, i32* @XGBE_LINK_ERR, align 4
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 1
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @netif_carrier_off(i32 %13)
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %16 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  br label %97

18:                                               ; preds = %1
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %20 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AUTONEG_ENABLE, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %27 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64 (%struct.xgbe_prv_data.0*, i32*)*, i64 (%struct.xgbe_prv_data.0*, i32*)** %29, align 8
  %31 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %32 = bitcast %struct.xgbe_prv_data* %31 to %struct.xgbe_prv_data.0*
  %33 = call i64 %30(%struct.xgbe_prv_data.0* %32, i32* %4)
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %35 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i64 %33, i64* %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %18
  %40 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %41 = call i32 @xgbe_phy_config_aneg(%struct.xgbe_prv_data* %40)
  br label %100

42:                                               ; preds = %18
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %44 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %42
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %53 = call i32 @xgbe_phy_aneg_done(%struct.xgbe_prv_data* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %57 = call i32 @xgbe_check_link_timeout(%struct.xgbe_prv_data* %56)
  br label %100

58:                                               ; preds = %51, %48
  %59 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %60 = call i32 @xgbe_phy_status_result(%struct.xgbe_prv_data* %59)
  %61 = load i32, i32* @XGBE_LINK_INIT, align 4
  %62 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %63 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %62, i32 0, i32 1
  %64 = call i64 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load i32, i32* @XGBE_LINK_INIT, align 4
  %68 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %69 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %68, i32 0, i32 1
  %70 = call i32 @clear_bit(i32 %67, i32* %69)
  br label %71

71:                                               ; preds = %66, %58
  %72 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %73 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @netif_carrier_on(i32 %74)
  br label %96

76:                                               ; preds = %42
  %77 = load i32, i32* @XGBE_LINK_INIT, align 4
  %78 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %79 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %78, i32 0, i32 1
  %80 = call i64 @test_bit(i32 %77, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %84 = call i32 @xgbe_check_link_timeout(%struct.xgbe_prv_data* %83)
  %85 = load i32, i32* %3, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %100

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %76
  %90 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %91 = call i32 @xgbe_phy_status_result(%struct.xgbe_prv_data* %90)
  %92 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %93 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @netif_carrier_off(i32 %94)
  br label %96

96:                                               ; preds = %89, %71
  br label %97

97:                                               ; preds = %96, %10
  %98 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %99 = call i32 @xgbe_phy_adjust_link(%struct.xgbe_prv_data* %98)
  br label %100

100:                                              ; preds = %97, %87, %55, %39
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @xgbe_phy_config_aneg(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_aneg_done(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_check_link_timeout(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_status_result(%struct.xgbe_prv_data*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @xgbe_phy_adjust_link(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
