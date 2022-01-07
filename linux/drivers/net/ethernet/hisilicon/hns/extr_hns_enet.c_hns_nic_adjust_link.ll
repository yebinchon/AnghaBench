; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.hns_nic_priv = type { i32, %struct.hnae_handle* }
%struct.hnae_handle = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.hnae_handle*)*, i32 (%struct.hnae_handle*, i32, i32)*, i64 (%struct.hnae_handle*, i32, i32)* }

@.str = private unnamed_addr constant [9 x i8] c"link up\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hns_nic_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_nic_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hns_nic_priv*, align 8
  %4 = alloca %struct.hnae_handle*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.hns_nic_priv* %7, %struct.hns_nic_priv** %3, align 8
  %8 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %9 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %8, i32 0, i32 1
  %10 = load %struct.hnae_handle*, %struct.hnae_handle** %9, align 8
  store %struct.hnae_handle* %10, %struct.hnae_handle** %4, align 8
  store i32 1, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %70

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %111

23:                                               ; preds = %15
  %24 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %25 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i64 (%struct.hnae_handle*, i32, i32)*, i64 (%struct.hnae_handle*, i32, i32)** %29, align 8
  %31 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 %30(%struct.hnae_handle* %31, i32 %36, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %23
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = call i32 @netif_carrier_off(%struct.net_device* %45)
  %47 = call i32 @msleep(i32 200)
  %48 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %49 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32 (%struct.hnae_handle*, i32, i32)*, i32 (%struct.hnae_handle*, i32, i32)** %53, align 8
  %55 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %54(%struct.hnae_handle* %55, i32 %60, i32 %65)
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = call i32 @netif_carrier_on(%struct.net_device* %67)
  br label %69

69:                                               ; preds = %44, %23
  br label %70

70:                                               ; preds = %69, %1
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %75 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64 (%struct.hnae_handle*)*, i64 (%struct.hnae_handle*)** %79, align 8
  %81 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %82 = call i64 %80(%struct.hnae_handle* %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %73, %70
  %85 = phi i1 [ false, %70 ], [ %83, %73 ]
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %89 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %87, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %84
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load %struct.net_device*, %struct.net_device** %2, align 8
  %97 = call i32 @netif_carrier_on(%struct.net_device* %96)
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = call i32 @netif_tx_wake_all_queues(%struct.net_device* %98)
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = call i32 @netdev_info(%struct.net_device* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %107

102:                                              ; preds = %92
  %103 = load %struct.net_device*, %struct.net_device** %2, align 8
  %104 = call i32 @netif_carrier_off(%struct.net_device* %103)
  %105 = load %struct.net_device*, %struct.net_device** %2, align 8
  %106 = call i32 @netdev_info(%struct.net_device* %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %102, %95
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %110 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %22, %107, %84
  ret void
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
