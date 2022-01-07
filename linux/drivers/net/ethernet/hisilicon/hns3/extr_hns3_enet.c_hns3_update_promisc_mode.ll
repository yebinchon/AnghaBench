; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_update_promisc_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_update_promisc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hns3_nic_priv = type { %struct.hnae3_handle* }
%struct.hnae3_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hnae3_handle*, i32, i32)* }

@HNAE3_UPE = common dso_local global i32 0, align 4
@HNAE3_MPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns3_update_promisc_mode(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns3_nic_priv*, align 8
  %7 = alloca %struct.hnae3_handle*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.hns3_nic_priv* %9, %struct.hns3_nic_priv** %6, align 8
  %10 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %11 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %10, i32 0, i32 0
  %12 = load %struct.hnae3_handle*, %struct.hnae3_handle** %11, align 8
  store %struct.hnae3_handle* %12, %struct.hnae3_handle** %7, align 8
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %7, align 8
  %14 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.hnae3_handle*, i32, i32)*, i32 (%struct.hnae3_handle*, i32, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.hnae3_handle*, i32, i32)* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.hnae3_handle*, %struct.hnae3_handle** %7, align 8
  %23 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.hnae3_handle*, i32, i32)*, i32 (%struct.hnae3_handle*, i32, i32)** %27, align 8
  %29 = load %struct.hnae3_handle*, %struct.hnae3_handle** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @HNAE3_UPE, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @HNAE3_MPE, align 4
  %35 = and i32 %33, %34
  %36 = call i32 %28(%struct.hnae3_handle* %29, i32 %32, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %21
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
