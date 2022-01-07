; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_net_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_net_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hns3_nic_priv = type { %struct.hnae3_handle* }
%struct.hnae3_handle = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, %struct.hnae3_handle*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hns3_nic_net_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_nic_net_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hns3_nic_priv*, align 8
  %4 = alloca %struct.hnae3_handle*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.hns3_nic_priv* %6, %struct.hns3_nic_priv** %3, align 8
  %7 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %8 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %7, i32 0, i32 0
  %9 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  store %struct.hnae3_handle* %9, %struct.hnae3_handle** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @hns3_get_tx_timeo_queue_info(%struct.net_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %16 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (i32, %struct.hnae3_handle*)*, i32 (i32, %struct.hnae3_handle*)** %20, align 8
  %22 = icmp ne i32 (i32, %struct.hnae3_handle*)* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %14
  %24 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %25 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (i32, %struct.hnae3_handle*)*, i32 (i32, %struct.hnae3_handle*)** %29, align 8
  %31 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %32 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %35 = call i32 %30(i32 %33, %struct.hnae3_handle* %34)
  br label %36

36:                                               ; preds = %13, %23, %14
  ret void
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hns3_get_tx_timeo_queue_info(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
