; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.jme_adapter = type { i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@TXPFC_PF_EN = common dso_local global i32 0, align 4
@JME_TXPFC = common dso_local global i32 0, align 4
@RXMCS_FLOWCTRL = common dso_local global i32 0, align 4
@JME_RXMCS = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @jme_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.jme_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.jme_adapter* %8, %struct.jme_adapter** %5, align 8
  %9 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TXPFC_PF_EN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = xor i32 %15, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %2
  %24 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* @TXPFC_PF_EN, align 4
  %30 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %31 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %41

34:                                               ; preds = %23
  %35 = load i32, i32* @TXPFC_PF_EN, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %28
  %42 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %43 = load i32, i32* @JME_TXPFC, align 4
  %44 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %45 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @jwrite32(%struct.jme_adapter* %42, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %41, %2
  %49 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %49, i32 0, i32 5
  %51 = call i32 @spin_lock_bh(i32* %50)
  %52 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @RXMCS_FLOWCTRL, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = xor i32 %58, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %48
  %67 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %68 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32, i32* @RXMCS_FLOWCTRL, align 4
  %73 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %74 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %84

77:                                               ; preds = %66
  %78 = load i32, i32* @RXMCS_FLOWCTRL, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %81 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %77, %71
  %85 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %86 = load i32, i32* @JME_RXMCS, align 4
  %87 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %88 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @jwrite32(%struct.jme_adapter* %85, i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %84, %48
  %92 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %93 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %92, i32 0, i32 5
  %94 = call i32 @spin_unlock_bh(i32* %93)
  %95 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %96 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %95, i32 0, i32 2
  %97 = call i32 @spin_lock_bh(i32* %96)
  %98 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %99 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %102 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MII_ADVERTISE, align 4
  %106 = call i32 @jme_mdio_read(i32 %100, i32 %104, i32 %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %109 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %115 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = xor i32 %113, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %150

121:                                              ; preds = %91
  %122 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %123 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %128 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %6, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %6, align 4
  br label %139

132:                                              ; preds = %121
  %133 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %134 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %135 = or i32 %133, %134
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %6, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %132, %126
  %140 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %141 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %144 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @MII_ADVERTISE, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @jme_mdio_write(i32 %142, i32 %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %139, %91
  %151 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %152 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %151, i32 0, i32 2
  %153 = call i32 @spin_unlock_bh(i32* %152)
  ret i32 0
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @jme_mdio_read(i32, i32, i32) #1

declare dso_local i32 @jme_mdio_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
