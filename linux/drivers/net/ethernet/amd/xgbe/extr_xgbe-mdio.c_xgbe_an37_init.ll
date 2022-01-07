; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_an37_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_an37_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.xgbe_prv_data.0*, %struct.ethtool_link_ksettings*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.ethtool_link_ksettings = type opaque
%struct.ethtool_link_ksettings.1 = type { i32 }

@MDIO_MMD_VEND2 = common dso_local global i32 0, align 4
@MDIO_VEND2_AN_ADVERTISE = common dso_local global i32 0, align 4
@Pause = common dso_local global i32 0, align 4
@Asym_Pause = common dso_local global i32 0, align 4
@XGBE_AN_CL37_FD_MASK = common dso_local global i32 0, align 4
@XGBE_AN_CL37_HD_MASK = common dso_local global i32 0, align 4
@MDIO_VEND2_AN_CTRL = common dso_local global i32 0, align 4
@XGBE_AN_CL37_TX_CONFIG_MASK = common dso_local global i32 0, align 4
@XGBE_AN_CL37_PCS_MODE_MASK = common dso_local global i32 0, align 4
@XGBE_AN_CL37_PCS_MODE_BASEX = common dso_local global i32 0, align 4
@XGBE_AN_CL37_PCS_MODE_SGMII = common dso_local global i32 0, align 4
@XGBE_AN_CL37_MII_CTRL_8BIT = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"CL37 AN (%s) initialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"BaseX\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"SGMII\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_an37_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_an37_init(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.ethtool_link_ksettings.1, align 4
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %6 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32 (%struct.xgbe_prv_data.0*, %struct.ethtool_link_ksettings*)*, i32 (%struct.xgbe_prv_data.0*, %struct.ethtool_link_ksettings*)** %8, align 8
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %11 = bitcast %struct.xgbe_prv_data* %10 to %struct.xgbe_prv_data.0*
  %12 = bitcast %struct.ethtool_link_ksettings.1* %3 to %struct.ethtool_link_ksettings*
  %13 = call i32 %9(%struct.xgbe_prv_data.0* %11, %struct.ethtool_link_ksettings* %12)
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %15 = load i32, i32* @MDIO_MMD_VEND2, align 4
  %16 = load i32, i32* @MDIO_VEND2_AN_ADVERTISE, align 4
  %17 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %14, i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @Pause, align 4
  %19 = call i64 @XGBE_ADV(%struct.ethtool_link_ksettings.1* %3, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, 256
  store i32 %23, i32* %4, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, -257
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* @Asym_Pause, align 4
  %29 = call i64 @XGBE_ADV(%struct.ethtool_link_ksettings.1* %3, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, 128
  store i32 %33, i32* %4, align 4
  br label %37

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, -129
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @XGBE_AN_CL37_FD_MASK, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @XGBE_AN_CL37_HD_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %46 = load i32, i32* @MDIO_MMD_VEND2, align 4
  %47 = load i32, i32* @MDIO_VEND2_AN_ADVERTISE, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %51 = load i32, i32* @MDIO_MMD_VEND2, align 4
  %52 = load i32, i32* @MDIO_VEND2_AN_CTRL, align 4
  %53 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %50, i32 %51, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @XGBE_AN_CL37_TX_CONFIG_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @XGBE_AN_CL37_PCS_MODE_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %63 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %73 [
    i32 129, label %65
    i32 128, label %69
  ]

65:                                               ; preds = %37
  %66 = load i32, i32* @XGBE_AN_CL37_PCS_MODE_BASEX, align 4
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  br label %74

69:                                               ; preds = %37
  %70 = load i32, i32* @XGBE_AN_CL37_PCS_MODE_SGMII, align 4
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %4, align 4
  br label %74

73:                                               ; preds = %37
  br label %74

74:                                               ; preds = %73, %69, %65
  %75 = load i32, i32* @XGBE_AN_CL37_MII_CTRL_8BIT, align 4
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  %78 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %79 = load i32, i32* @MDIO_MMD_VEND2, align 4
  %80 = load i32, i32* @MDIO_VEND2_AN_CTRL, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %78, i32 %79, i32 %80, i32 %81)
  %83 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %84 = load i32, i32* @link, align 4
  %85 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %86 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %89 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 129
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %94 = call i32 @netif_dbg(%struct.xgbe_prv_data* %83, i32 %84, i32 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %93)
  ret void
}

declare dso_local i32 @XMDIO_READ(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i64 @XGBE_ADV(%struct.ethtool_link_ksettings.1*, i32) #1

declare dso_local i32 @XMDIO_WRITE(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
