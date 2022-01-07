; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.aq_nic_s = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@AQ_NIC_FC_RX = common dso_local global i32 0, align 4
@AQ_NIC_FC_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @aq_ethtool_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_ethtool_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.aq_nic_s*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.aq_nic_s* @netdev_priv(%struct.net_device* %8)
  store %struct.aq_nic_s* %9, %struct.aq_nic_s** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %11 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %13, align 8
  %15 = icmp ne i32 (%struct.TYPE_6__*)* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %97

19:                                               ; preds = %2
  %20 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AUTONEG_ENABLE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %97

28:                                               ; preds = %19
  %29 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32, i32* @AQ_NIC_FC_RX, align 4
  %35 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %36 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %34
  store i32 %42, i32* %40, align 4
  br label %54

43:                                               ; preds = %28
  %44 = load i32, i32* @AQ_NIC_FC_RX, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %47 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %45
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %43, %33
  %55 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load i32, i32* @AQ_NIC_FC_TX, align 4
  %61 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %62 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %60
  store i32 %68, i32* %66, align 4
  br label %80

69:                                               ; preds = %54
  %70 = load i32, i32* @AQ_NIC_FC_TX, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %73 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %71
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %69, %59
  %81 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %82 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %81, i32 0, i32 0
  %83 = call i32 @mutex_lock(i32* %82)
  %84 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %85 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %84, i32 0, i32 2
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %87, align 8
  %89 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %90 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = call i32 %88(%struct.TYPE_6__* %91)
  store i32 %92, i32* %7, align 4
  %93 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %94 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %80, %25, %16
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.aq_nic_s* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
