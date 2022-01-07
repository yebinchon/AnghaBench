; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_enable_vlan_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_enable_vlan_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hns3_nic_priv = type { %struct.hnae3_handle* }
%struct.hnae3_handle = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.hnae3_handle*, i32)* }
%struct.TYPE_4__ = type { i32 }

@HNAE3_VLAN_FLTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s vlan filter\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns3_enable_vlan_filter(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns3_nic_priv*, align 8
  %6 = alloca %struct.hnae3_handle*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.hns3_nic_priv* %9, %struct.hns3_nic_priv** %5, align 8
  %10 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %11 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %10, i32 0, i32 0
  %12 = load %struct.hnae3_handle*, %struct.hnae3_handle** %11, align 8
  store %struct.hnae3_handle* %12, %struct.hnae3_handle** %6, align 8
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %14 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 33
  br i1 %18, label %19, label %58

19:                                               ; preds = %2
  %20 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %21 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.hnae3_handle*, i32)* %26, null
  br i1 %27, label %28, label %58

28:                                               ; preds = %19
  %29 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %30 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @HNAE3_VLAN_FLTR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %28
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %46 = call i32 @netdev_info(%struct.net_device* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %48 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %52, align 8
  %54 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 %53(%struct.hnae3_handle* %54, i32 %55)
  br label %57

57:                                               ; preds = %40, %28
  br label %58

58:                                               ; preds = %57, %19, %2
  ret void
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
