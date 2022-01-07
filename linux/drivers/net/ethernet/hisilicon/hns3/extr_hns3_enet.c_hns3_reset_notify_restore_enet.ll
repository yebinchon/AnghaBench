; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_reset_notify_restore_enet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_reset_notify_restore_enet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_5__*, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*)* @hns3_reset_notify_restore_enet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_reset_notify_restore_enet(%struct.hnae3_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  %7 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %8 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i32 @hns3_init_mac_addr(%struct.net_device* %11, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %69

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i32 @hns3_recover_hw_addr(%struct.net_device* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %69

24:                                               ; preds = %17
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %27 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @hns3_update_promisc_mode(%struct.net_device* %25, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %69

34:                                               ; preds = %24
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFF_PROMISC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 1
  store i32 %42, i32* %5, align 4
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @hns3_enable_vlan_filter(%struct.net_device* %43, i32 %44)
  %46 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %47 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = bitcast {}** %51 to i32 (%struct.hnae3_handle*)**
  %53 = load i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)** %52, align 8
  %54 = icmp ne i32 (%struct.hnae3_handle*)* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %34
  %56 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %57 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = bitcast {}** %61 to i32 (%struct.hnae3_handle*)**
  %63 = load i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)** %62, align 8
  %64 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %65 = call i32 %63(%struct.hnae3_handle* %64)
  br label %66

66:                                               ; preds = %55, %34
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = call i32 @hns3_restore_fd_rules(%struct.net_device* %67)
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %66, %32, %22, %15
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @hns3_init_mac_addr(%struct.net_device*, i32) #1

declare dso_local i32 @hns3_recover_hw_addr(%struct.net_device*) #1

declare dso_local i32 @hns3_update_promisc_mode(%struct.net_device*, i32) #1

declare dso_local i32 @hns3_enable_vlan_filter(%struct.net_device*, i32) #1

declare dso_local i32 @hns3_restore_fd_rules(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
