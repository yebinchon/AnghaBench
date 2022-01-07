; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_phy_finish_auto_neg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_phy_finish_auto_neg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tlan_priv = type { i32*, i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MII_GEN_STS = common dso_local global i32 0, align 4
@MII_GS_AUTOCMPLT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@TLAN_TIMER_PHY_FINISH_AN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Autonegotiation complete\0A\00", align 1
@MII_AN_ADV = common dso_local global i32 0, align 4
@MII_AN_LPA = common dso_local global i32 0, align 4
@TLAN_ADAPTER_USE_INTERN_10 = common dso_local global i32 0, align 4
@TLAN_TIMER_PHY_PDOWN = common dso_local global i32 0, align 4
@TLAN_DUPLEX_FULL = common dso_local global i64 0, align 8
@MII_GEN_CTL = common dso_local global i32 0, align 4
@MII_GC_AUTOENB = common dso_local global i32 0, align 4
@MII_GC_DUPLEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Starting internal PHY with FULL-DUPLEX\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Starting internal PHY with HALF-DUPLEX\0A\00", align 1
@TLAN_TIMER_FINISH_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tlan_phy_finish_auto_neg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlan_phy_finish_auto_neg(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tlan_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.tlan_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.tlan_priv* %10, %struct.tlan_priv** %3, align 8
  %11 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %12 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %15 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MII_GEN_STS, align 4
  %22 = call i32 @tlan_mii_read_reg(%struct.net_device* %19, i32 %20, i32 %21, i32* %8)
  %23 = call i32 @udelay(i32 1000)
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MII_GEN_STS, align 4
  %27 = call i32 @tlan_mii_read_reg(%struct.net_device* %24, i32 %25, i32 %26, i32* %8)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MII_GS_AUTOCMPLT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %1
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = load i32, i32* @HZ, align 4
  %35 = mul nsw i32 2, %34
  %36 = load i32, i32* @TLAN_TIMER_PHY_FINISH_AN, align 4
  %37 = call i32 @tlan_set_timer(%struct.net_device* %33, i32 %35, i32 %36)
  br label %137

38:                                               ; preds = %1
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = call i32 @netdev_info(%struct.net_device* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @MII_AN_ADV, align 4
  %44 = call i32 @tlan_mii_read_reg(%struct.net_device* %41, i32 %42, i32 %43, i32* %4)
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MII_AN_LPA, align 4
  %48 = call i32 @tlan_mii_read_reg(%struct.net_device* %45, i32 %46, i32 %47, i32* %5)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %49, %50
  %52 = and i32 %51, 992
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 256
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %38
  %57 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %58 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %57, i32 0, i32 2
  store i32 1, i32* %58, align 8
  br label %71

59:                                               ; preds = %38
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 128
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %69 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %68, i32 0, i32 2
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %63, %59
  br label %71

71:                                               ; preds = %70, %56
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, 384
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %96, label %75

75:                                               ; preds = %71
  %76 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %77 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %76, i32 0, i32 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @TLAN_ADAPTER_USE_INTERN_10, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %75
  %85 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %86 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %91 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = call i32 @msecs_to_jiffies(i32 400)
  %94 = load i32, i32* @TLAN_TIMER_PHY_PDOWN, align 4
  %95 = call i32 @tlan_set_timer(%struct.net_device* %92, i32 %93, i32 %94)
  br label %137

96:                                               ; preds = %84, %75, %71
  %97 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %98 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %132

101:                                              ; preds = %96
  %102 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %103 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @TLAN_DUPLEX_FULL, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %5, align 4
  %110 = and i32 %108, %109
  %111 = and i32 %110, 64
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %107, %101
  %114 = load %struct.net_device*, %struct.net_device** %2, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @MII_GEN_CTL, align 4
  %117 = load i32, i32* @MII_GC_AUTOENB, align 4
  %118 = load i32, i32* @MII_GC_DUPLEX, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @tlan_mii_write_reg(%struct.net_device* %114, i32 %115, i32 %116, i32 %119)
  %121 = load %struct.net_device*, %struct.net_device** %2, align 8
  %122 = call i32 @netdev_info(%struct.net_device* %121, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %131

123:                                              ; preds = %107
  %124 = load %struct.net_device*, %struct.net_device** %2, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @MII_GEN_CTL, align 4
  %127 = load i32, i32* @MII_GC_AUTOENB, align 4
  %128 = call i32 @tlan_mii_write_reg(%struct.net_device* %124, i32 %125, i32 %126, i32 %127)
  %129 = load %struct.net_device*, %struct.net_device** %2, align 8
  %130 = call i32 @netdev_info(%struct.net_device* %129, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %131

131:                                              ; preds = %123, %113
  br label %132

132:                                              ; preds = %131, %96
  %133 = load %struct.net_device*, %struct.net_device** %2, align 8
  %134 = call i32 @msecs_to_jiffies(i32 100)
  %135 = load i32, i32* @TLAN_TIMER_FINISH_RESET, align 4
  %136 = call i32 @tlan_set_timer(%struct.net_device* %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %132, %89, %32
  ret void
}

declare dso_local %struct.tlan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @tlan_mii_read_reg(%struct.net_device*, i32, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tlan_set_timer(%struct.net_device*, i32, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @tlan_mii_write_reg(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
