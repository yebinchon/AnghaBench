; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_offloaded_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_offloaded_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_notifier_vxlan_fdb_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.vxlan_dev = type { i32* }
%struct.vxlan_rdst = type { i32 }
%struct.vxlan_fdb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.switchdev_notifier_vxlan_fdb_info*)* @vxlan_fdb_offloaded_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_fdb_offloaded_set(%struct.net_device* %0, %struct.switchdev_notifier_vxlan_fdb_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.switchdev_notifier_vxlan_fdb_info*, align 8
  %5 = alloca %struct.vxlan_dev*, align 8
  %6 = alloca %struct.vxlan_rdst*, align 8
  %7 = alloca %struct.vxlan_fdb*, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.switchdev_notifier_vxlan_fdb_info* %1, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %9)
  store %struct.vxlan_dev* %10, %struct.vxlan_dev** %5, align 8
  %11 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %12 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %13 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %16 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @fdb_head_index(%struct.vxlan_dev* %11, i32 %14, i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %20 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %26 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %27 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %30 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.vxlan_fdb* @vxlan_find_mac(%struct.vxlan_dev* %25, i32 %28, i32 %31)
  store %struct.vxlan_fdb* %32, %struct.vxlan_fdb** %7, align 8
  %33 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %7, align 8
  %34 = icmp ne %struct.vxlan_fdb* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  br label %59

36:                                               ; preds = %2
  %37 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %7, align 8
  %38 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %39 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %38, i32 0, i32 4
  %40 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %41 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %44 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %47 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.vxlan_rdst* @vxlan_fdb_find_rdst(%struct.vxlan_fdb* %37, i32* %39, i32 %42, i32 %45, i32 %48)
  store %struct.vxlan_rdst* %49, %struct.vxlan_rdst** %6, align 8
  %50 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %6, align 8
  %51 = icmp ne %struct.vxlan_rdst* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %36
  br label %59

53:                                               ; preds = %36
  %54 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %55 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %6, align 8
  %58 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %52, %35
  %60 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %61 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = call i32 @spin_unlock_bh(i32* %64)
  ret void
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @fdb_head_index(%struct.vxlan_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.vxlan_fdb* @vxlan_find_mac(%struct.vxlan_dev*, i32, i32) #1

declare dso_local %struct.vxlan_rdst* @vxlan_fdb_find_rdst(%struct.vxlan_fdb*, i32*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
