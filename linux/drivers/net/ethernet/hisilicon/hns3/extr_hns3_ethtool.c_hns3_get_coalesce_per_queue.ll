; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_get_coalesce_per_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_get_coalesce_per_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32 }
%struct.hns3_enet_tqp_vector = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.hns3_nic_priv = type { %struct.TYPE_9__*, %struct.hnae3_handle* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.hns3_enet_tqp_vector* }
%struct.hnae3_handle = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Invalid queue value %d! Queue max id=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, %struct.ethtool_coalesce*)* @hns3_get_coalesce_per_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_get_coalesce_per_queue(%struct.net_device* %0, i32 %1, %struct.ethtool_coalesce* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ethtool_coalesce*, align 8
  %8 = alloca %struct.hns3_enet_tqp_vector*, align 8
  %9 = alloca %struct.hns3_enet_tqp_vector*, align 8
  %10 = alloca %struct.hns3_nic_priv*, align 8
  %11 = alloca %struct.hnae3_handle*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ethtool_coalesce* %2, %struct.ethtool_coalesce** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.hns3_nic_priv* %14, %struct.hns3_nic_priv** %10, align 8
  %15 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %10, align 8
  %16 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %15, i32 0, i32 1
  %17 = load %struct.hnae3_handle*, %struct.hnae3_handle** %16, align 8
  store %struct.hnae3_handle* %17, %struct.hnae3_handle** %11, align 8
  %18 = load %struct.hnae3_handle*, %struct.hnae3_handle** %11, align 8
  %19 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i64 @hns3_nic_resetting(%struct.net_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %103

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %12, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @netdev_err(%struct.net_device* %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %103

40:                                               ; preds = %28
  %41 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %10, align 8
  %42 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %49, align 8
  store %struct.hns3_enet_tqp_vector* %50, %struct.hns3_enet_tqp_vector** %8, align 8
  %51 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %10, align 8
  %52 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %61, align 8
  store %struct.hns3_enet_tqp_vector* %62, %struct.hns3_enet_tqp_vector** %9, align 8
  %63 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %8, align 8
  %64 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %69 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %9, align 8
  %71 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %76 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %8, align 8
  %78 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %83 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %9, align 8
  %85 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %90 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.hnae3_handle*, %struct.hnae3_handle** %11, align 8
  %92 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %96 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.hnae3_handle*, %struct.hnae3_handle** %11, align 8
  %98 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %102 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %40, %32, %25
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @hns3_nic_resetting(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
