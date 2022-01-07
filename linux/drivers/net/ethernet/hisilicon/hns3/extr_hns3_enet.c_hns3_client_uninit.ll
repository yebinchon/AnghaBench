; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_client_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_client_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i64 }
%struct.hns3_nic_priv = type { i32 }

@NETREG_UNINITIALIZED = common dso_local global i64 0, align 8
@HNS3_NIC_STATE_INITED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"already uninitialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"dealloc vector error\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"uninit ring error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*, i32)* @hns3_client_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_client_uninit(%struct.hnae3_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.hns3_nic_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %9 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.hns3_nic_priv* %13, %struct.hns3_nic_priv** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call i32 @hns3_remove_hw_addr(%struct.net_device* %14)
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NETREG_UNINITIALIZED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i32 @unregister_netdev(%struct.net_device* %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %26 = call i32 @hns3_client_stop(%struct.hnae3_handle* %25)
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @hns3_uninit_phy(%struct.net_device* %27)
  %29 = load i32, i32* @HNS3_NIC_STATE_INITED, align 4
  %30 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %31 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %30, i32 0, i32 0
  %32 = call i32 @test_and_clear_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call i32 @netdev_warn(%struct.net_device* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %64

37:                                               ; preds = %24
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = call i32 @hns3_del_all_fd_rules(%struct.net_device* %38, i32 1)
  %40 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %41 = call i32 @hns3_clear_all_ring(%struct.hnae3_handle* %40, i32 1)
  %42 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %43 = call i32 @hns3_nic_uninit_vector_data(%struct.hns3_nic_priv* %42)
  %44 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %45 = call i32 @hns3_nic_dealloc_vector_data(%struct.hns3_nic_priv* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = call i32 @netdev_err(%struct.net_device* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %37
  %52 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %53 = call i32 @hns3_uninit_all_ring(%struct.hns3_nic_priv* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = call i32 @netdev_err(%struct.net_device* %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %61 = call i32 @hns3_put_ring_config(%struct.hns3_nic_priv* %60)
  %62 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %63 = call i32 @hns3_dbg_uninit(%struct.hnae3_handle* %62)
  br label %64

64:                                               ; preds = %59, %34
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = call i32 @free_netdev(%struct.net_device* %65)
  ret void
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hns3_remove_hw_addr(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @hns3_client_stop(%struct.hnae3_handle*) #1

declare dso_local i32 @hns3_uninit_phy(%struct.net_device*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @hns3_del_all_fd_rules(%struct.net_device*, i32) #1

declare dso_local i32 @hns3_clear_all_ring(%struct.hnae3_handle*, i32) #1

declare dso_local i32 @hns3_nic_uninit_vector_data(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_nic_dealloc_vector_data(%struct.hns3_nic_priv*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @hns3_uninit_all_ring(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_put_ring_config(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_dbg_uninit(%struct.hnae3_handle*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
