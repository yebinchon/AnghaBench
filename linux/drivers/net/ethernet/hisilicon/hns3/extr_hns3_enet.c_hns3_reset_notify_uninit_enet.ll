; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_reset_notify_uninit_enet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_reset_notify_uninit_enet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.hns3_nic_priv = type { i32, i32 }

@HNS3_NIC_STATE_INITED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"already uninitialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"dealloc vector error\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"uninit ring error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*)* @hns3_reset_notify_uninit_enet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_reset_notify_uninit_enet(%struct.hnae3_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.hns3_nic_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  %7 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %8 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.hns3_nic_priv* %12, %struct.hns3_nic_priv** %5, align 8
  %13 = load i32, i32* @HNS3_NIC_STATE_INITED, align 4
  %14 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %15 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %14, i32 0, i32 1
  %16 = call i32 @test_and_clear_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call i32 @netdev_warn(%struct.net_device* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %51

21:                                               ; preds = %1
  %22 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %23 = call i32 @hns3_clear_all_ring(%struct.hnae3_handle* %22, i32 1)
  %24 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %25 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @hns3_reset_tx_queue(i32 %26)
  %28 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %29 = call i32 @hns3_nic_uninit_vector_data(%struct.hns3_nic_priv* %28)
  %30 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %31 = call i32 @hns3_store_coal(%struct.hns3_nic_priv* %30)
  %32 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %33 = call i32 @hns3_nic_dealloc_vector_data(%struct.hns3_nic_priv* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %21
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call i32 @netdev_err(%struct.net_device* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %21
  %40 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %41 = call i32 @hns3_uninit_all_ring(%struct.hns3_nic_priv* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = call i32 @netdev_err(%struct.net_device* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %49 = call i32 @hns3_put_ring_config(%struct.hns3_nic_priv* %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %18
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @hns3_clear_all_ring(%struct.hnae3_handle*, i32) #1

declare dso_local i32 @hns3_reset_tx_queue(i32) #1

declare dso_local i32 @hns3_nic_uninit_vector_data(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_store_coal(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_nic_dealloc_vector_data(%struct.hns3_nic_priv*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @hns3_uninit_all_ring(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_put_ring_config(%struct.hns3_nic_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
