; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_phy_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_phy_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tlan_priv = type { i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TLAN_ADAPTER_UNMANAGED_PHY = common dso_local global i32 0, align 4
@TLAN_PHY_MAX_ADDR = common dso_local global i64 0, align 8
@MII_GEN_ID_HI = common dso_local global i32 0, align 4
@TLAN_PHY_NONE = common dso_local global i64 0, align 8
@MII_GEN_CTL = common dso_local global i32 0, align 4
@MII_GEN_ID_LO = common dso_local global i32 0, align 4
@TLAN_DEBUG_GNRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"PHY found at %02x %04x %04x %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Cannot initialize device, no PHY was found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tlan_phy_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlan_phy_detect(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tlan_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.tlan_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.tlan_priv* %9, %struct.tlan_priv** %3, align 8
  %10 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %11 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TLAN_ADAPTER_UNMANAGED_PHY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %20 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %19, i32 0, i32 0
  store i32 65535, i32* %20, align 8
  br label %126

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = load i64, i64* @TLAN_PHY_MAX_ADDR, align 8
  %24 = load i32, i32* @MII_GEN_ID_HI, align 4
  %25 = call i32 @tlan_mii_read_reg(%struct.net_device* %22, i64 %23, i32 %24, i32* %5)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 65535
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i64, i64* @TLAN_PHY_MAX_ADDR, align 8
  %30 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %31 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  store i64 %29, i64* %33, align 8
  br label %40

34:                                               ; preds = %21
  %35 = load i64, i64* @TLAN_PHY_NONE, align 8
  %36 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %37 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  store i64 %35, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %28
  %41 = load i64, i64* @TLAN_PHY_NONE, align 8
  %42 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %43 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  store i64 %41, i64* %45, align 8
  store i64 0, i64* %7, align 8
  br label %46

46:                                               ; preds = %97, %40
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @TLAN_PHY_MAX_ADDR, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %100

50:                                               ; preds = %46
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* @MII_GEN_CTL, align 4
  %54 = call i32 @tlan_mii_read_reg(%struct.net_device* %51, i64 %52, i32 %53, i32* %4)
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* @MII_GEN_ID_HI, align 4
  %58 = call i32 @tlan_mii_read_reg(%struct.net_device* %55, i64 %56, i32 %57, i32* %5)
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i32, i32* @MII_GEN_ID_LO, align 4
  %62 = call i32 @tlan_mii_read_reg(%struct.net_device* %59, i64 %60, i32 %61, i32* %6)
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 65535
  br i1 %64, label %71, label %65

65:                                               ; preds = %50
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 65535
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 65535
  br i1 %70, label %71, label %96

71:                                               ; preds = %68, %65, %50
  %72 = load i32, i32* @TLAN_DEBUG_GNRL, align 4
  %73 = load i64, i64* %7, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @TLAN_DBG(i32 %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %79 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TLAN_PHY_NONE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %71
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @TLAN_PHY_MAX_ADDR, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %92 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  store i64 %90, i64* %94, align 8
  br label %95

95:                                               ; preds = %89, %85, %71
  br label %96

96:                                               ; preds = %95, %68
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %7, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %7, align 8
  br label %46

100:                                              ; preds = %46
  %101 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %102 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TLAN_PHY_NONE, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %110 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  br label %126

111:                                              ; preds = %100
  %112 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %113 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TLAN_PHY_NONE, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %121 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  br label %125

122:                                              ; preds = %111
  %123 = load %struct.net_device*, %struct.net_device** %2, align 8
  %124 = call i32 @netdev_info(%struct.net_device* %123, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %18, %125, %108
  ret void
}

declare dso_local %struct.tlan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @tlan_mii_read_reg(%struct.net_device*, i64, i32, i32*) #1

declare dso_local i32 @TLAN_DBG(i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
