; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwxgmac2_core.c_dwxgmac2_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwxgmac2_core.c_dwxgmac2_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { %struct.TYPE_7__*, i32, %struct.TYPE_6__*, i32, %struct.mac_device_info* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.mac_device_info = type { %struct.TYPE_10__, %struct.TYPE_9__, i64, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i8*, i8*, i64, i8*, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"\09XGMAC2\0A\00", align 1
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@XGMAC_CONFIG_SS_10_MII = common dso_local global i32 0, align 4
@XGMAC_CONFIG_SS_100_MII = common dso_local global i32 0, align 4
@XGMAC_CONFIG_SS_1000_GMII = common dso_local global i32 0, align 4
@XGMAC_CONFIG_SS_2500_GMII = common dso_local global i32 0, align 4
@XGMAC_CONFIG_SS_2500 = common dso_local global i32 0, align 4
@XGMAC_CONFIG_SS_5000 = common dso_local global i32 0, align 4
@XGMAC_CONFIG_SS_10000 = common dso_local global i32 0, align 4
@XGMAC_CONFIG_SS_MASK = common dso_local global i32 0, align 4
@XGMAC_MDIO_ADDR = common dso_local global i32 0, align 4
@XGMAC_MDIO_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwxgmac2_setup(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  %3 = alloca %struct.mac_device_info*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  %4 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %5 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %4, i32 0, i32 4
  %6 = load %struct.mac_device_info*, %struct.mac_device_info** %5, align 8
  store %struct.mac_device_info* %6, %struct.mac_device_info** %3, align 8
  %7 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %8 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dev_info(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %12 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %13 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %11
  store i32 %17, i32* %15, align 4
  %18 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %19 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %22 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %24 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %29 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %31 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %36 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %38 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %40 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %1
  %44 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %45 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @ilog2(i64 %46)
  %48 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %49 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %43, %1
  %51 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %52 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @XGMAC_CONFIG_SS_10_MII, align 4
  %55 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %56 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 5
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @XGMAC_CONFIG_SS_100_MII, align 4
  %59 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %60 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* @XGMAC_CONFIG_SS_1000_GMII, align 4
  %63 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %64 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @XGMAC_CONFIG_SS_2500_GMII, align 4
  %67 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %68 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* @XGMAC_CONFIG_SS_2500, align 4
  %71 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %72 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* @XGMAC_CONFIG_SS_5000, align 4
  %76 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %77 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* @XGMAC_CONFIG_SS_10000, align 4
  %81 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %82 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 4
  %85 = load i32, i32* @XGMAC_CONFIG_SS_MASK, align 4
  %86 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %87 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load i32, i32* @XGMAC_MDIO_ADDR, align 4
  %90 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %91 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 7
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* @XGMAC_MDIO_DATA, align 4
  %94 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %95 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 6
  store i32 %93, i32* %96, align 8
  %97 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %98 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i32 16, i32* %99, align 8
  %100 = call i8* @GENMASK(i32 20, i32 16)
  %101 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %102 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 5
  store i8* %100, i8** %103, align 8
  %104 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %105 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 4
  store i64 0, i64* %106, align 8
  %107 = call i8* @GENMASK(i32 15, i32 0)
  %108 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %109 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 3
  store i8* %107, i8** %110, align 8
  %111 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %112 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  store i32 19, i32* %113, align 4
  %114 = call i8* @GENMASK(i32 21, i32 19)
  %115 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %116 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  store i8* %114, i8** %117, align 8
  ret i32 0
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i64 @ilog2(i64) #1

declare dso_local i8* @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
