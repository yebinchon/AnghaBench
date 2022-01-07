; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_net_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hns3_nic_priv = type { i32 }
%struct.hnae3_handle = type { %struct.TYPE_4__*, %struct.hnae3_knic_private_info }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32)* }
%struct.hnae3_knic_private_info = type { i32* }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"net up fail, ret=%d!\0A\00", align 1
@HNAE3_MAX_USER_PRIO = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"net open\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hns3_nic_net_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_nic_net_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hns3_nic_priv*, align 8
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca %struct.hnae3_knic_private_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.hns3_nic_priv* %10, %struct.hns3_nic_priv** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %11)
  store %struct.hnae3_handle* %12, %struct.hnae3_handle** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i64 @hns3_nic_resetting(%struct.net_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %87

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @netif_carrier_off(%struct.net_device* %20)
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @hns3_nic_set_real_num_queue(%struct.net_device* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %87

28:                                               ; preds = %19
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @hns3_nic_net_up(%struct.net_device* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @netdev_err(%struct.net_device* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %2, align 4
  br label %87

38:                                               ; preds = %28
  %39 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %40 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %39, i32 0, i32 1
  store %struct.hnae3_knic_private_info* %40, %struct.hnae3_knic_private_info** %6, align 8
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %56, %38
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @HNAE3_MAX_USER_PRIO, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %6, align 8
  %49 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @netdev_set_prio_tc_map(%struct.net_device* %46, i32 %47, i32 %54)
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %41

59:                                               ; preds = %41
  %60 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %61 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32 (i32, i32)*, i32 (i32, i32)** %65, align 8
  %67 = icmp ne i32 (i32, i32)* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %59
  %69 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %70 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32 (i32, i32)*, i32 (i32, i32)** %74, align 8
  %76 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %77 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 %75(i32 %78, i32 1)
  br label %80

80:                                               ; preds = %68, %59
  %81 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %82 = call i32 @hns3_config_xps(%struct.hns3_nic_priv* %81)
  %83 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %84 = load i32, i32* @drv, align 4
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  %86 = call i32 @netif_dbg(%struct.hnae3_handle* %83, i32 %84, %struct.net_device* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %80, %33, %26, %16
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

declare dso_local i64 @hns3_nic_resetting(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @hns3_nic_set_real_num_queue(%struct.net_device*) #1

declare dso_local i32 @hns3_nic_net_up(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netdev_set_prio_tc_map(%struct.net_device*, i32, i32) #1

declare dso_local i32 @hns3_config_xps(%struct.hns3_nic_priv*) #1

declare dso_local i32 @netif_dbg(%struct.hnae3_handle*, i32, %struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
