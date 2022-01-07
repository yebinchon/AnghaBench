; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_set_real_num_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_set_real_num_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hnae3_handle = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"netdev_set_num_tc fail, ret=%d!\0A\00", align 1
@HNAE3_MAX_TC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"netif_set_real_num_tx_queues fail, ret=%d!\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"netif_set_real_num_rx_queues fail, ret=%d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hns3_nic_set_real_num_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_nic_set_real_num_queue(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.hnae3_knic_private_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %9)
  store %struct.hnae3_handle* %10, %struct.hnae3_handle** %4, align 8
  %11 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %12 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %11, i32 0, i32 0
  store %struct.hnae3_knic_private_info* %12, %struct.hnae3_knic_private_info** %5, align 8
  %13 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %5, align 8
  %14 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %5, align 8
  %17 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul i32 %15, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %5, align 8
  %21 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ule i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @netdev_reset_tc(%struct.net_device* %25)
  br label %87

27:                                               ; preds = %1
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %5, align 8
  %30 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @netdev_set_num_tc(%struct.net_device* %28, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @netdev_err(%struct.net_device* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %110

40:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %83, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @HNAE3_MAX_TC, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %86

45:                                               ; preds = %41
  %46 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %5, align 8
  %47 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  br label %83

56:                                               ; preds = %45
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %5, align 8
  %59 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %5, align 8
  %67 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %5, align 8
  %75 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @netdev_set_tc_queue(%struct.net_device* %57, i32 %65, i32 %73, i32 %81)
  br label %83

83:                                               ; preds = %56, %55
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %41

86:                                               ; preds = %41
  br label %87

87:                                               ; preds = %86, %24
  %88 = load %struct.net_device*, %struct.net_device** %3, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %88, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.net_device*, %struct.net_device** %3, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @netdev_err(%struct.net_device* %94, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %2, align 4
  br label %110

98:                                               ; preds = %87
  %99 = load %struct.net_device*, %struct.net_device** %3, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %99, i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load %struct.net_device*, %struct.net_device** %3, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @netdev_err(%struct.net_device* %105, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %2, align 4
  br label %110

109:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %104, %93, %35
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

declare dso_local i32 @netdev_reset_tc(%struct.net_device*) #1

declare dso_local i32 @netdev_set_num_tc(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netdev_set_tc_queue(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
