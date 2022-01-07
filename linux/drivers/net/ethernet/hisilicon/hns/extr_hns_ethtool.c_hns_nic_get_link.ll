; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_nic_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_nic_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.hns_nic_priv = type { i32, %struct.hnae_handle* }
%struct.hnae_handle = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.hnae_handle*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hns_nic_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_nic_get_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hns_nic_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae_handle*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.hns_nic_priv* %7, %struct.hns_nic_priv** %3, align 8
  %8 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %9 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %12 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %11, i32 0, i32 1
  %13 = load %struct.hnae_handle*, %struct.hnae_handle** %12, align 8
  store %struct.hnae_handle* %13, %struct.hnae_handle** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = call i32 @genphy_read_status(%struct.TYPE_6__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  br label %31

30:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %24
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %34 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %37, label %70

37:                                               ; preds = %32
  %38 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %39 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %44, label %70

44:                                               ; preds = %37
  %45 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %46 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64 (%struct.hnae_handle*)*, i64 (%struct.hnae_handle*)** %50, align 8
  %52 = icmp ne i64 (%struct.hnae_handle*)* %51, null
  br i1 %52, label %53, label %70

53:                                               ; preds = %44
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %58 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64 (%struct.hnae_handle*)*, i64 (%struct.hnae_handle*)** %62, align 8
  %64 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %65 = call i64 %63(%struct.hnae_handle* %64)
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %56, %53
  %68 = phi i1 [ false, %53 ], [ %66, %56 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %4, align 4
  br label %71

70:                                               ; preds = %44, %37, %32
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @genphy_read_status(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
