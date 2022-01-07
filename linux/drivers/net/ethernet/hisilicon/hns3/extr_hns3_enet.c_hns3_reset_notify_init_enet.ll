; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_reset_notify_init_enet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_reset_notify_init_enet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.hns3_nic_priv = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"hns3_client_start fail! ret=%d\0A\00", align 1
@HNS3_NIC_STATE_INITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*)* @hns3_reset_notify_init_enet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_reset_notify_init_enet(%struct.hnae3_handle* %0) #0 {
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
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @netif_carrier_off(%struct.net_device* %13)
  %15 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %16 = call i32 @hns3_get_ring_config(%struct.hns3_nic_priv* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %71

21:                                               ; preds = %1
  %22 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %23 = call i32 @hns3_nic_alloc_vector_data(%struct.hns3_nic_priv* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %67

27:                                               ; preds = %21
  %28 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %29 = call i32 @hns3_restore_coal(%struct.hns3_nic_priv* %28)
  %30 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %31 = call i32 @hns3_nic_init_vector_data(%struct.hns3_nic_priv* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %64

35:                                               ; preds = %27
  %36 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %37 = call i32 @hns3_init_all_ring(%struct.hns3_nic_priv* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %61

41:                                               ; preds = %35
  %42 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %43 = call i32 @hns3_client_start(%struct.hnae3_handle* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %48 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %58

52:                                               ; preds = %41
  %53 = load i32, i32* @HNS3_NIC_STATE_INITED, align 4
  %54 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %55 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %54, i32 0, i32 0
  %56 = call i32 @set_bit(i32 %53, i32* %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %71

58:                                               ; preds = %46
  %59 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %60 = call i32 @hns3_uninit_all_ring(%struct.hns3_nic_priv* %59)
  br label %61

61:                                               ; preds = %58, %40
  %62 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %63 = call i32 @hns3_nic_uninit_vector_data(%struct.hns3_nic_priv* %62)
  br label %64

64:                                               ; preds = %61, %34
  %65 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %66 = call i32 @hns3_nic_dealloc_vector_data(%struct.hns3_nic_priv* %65)
  br label %67

67:                                               ; preds = %64, %26
  %68 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %69 = call i32 @hns3_put_ring_config(%struct.hns3_nic_priv* %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %52, %19
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @hns3_get_ring_config(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_nic_alloc_vector_data(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_restore_coal(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_nic_init_vector_data(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_init_all_ring(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_client_start(%struct.hnae3_handle*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hns3_uninit_all_ring(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_nic_uninit_vector_data(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_nic_dealloc_vector_data(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_put_ring_config(%struct.hns3_nic_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
