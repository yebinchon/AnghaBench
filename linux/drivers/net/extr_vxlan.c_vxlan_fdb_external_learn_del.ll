; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_external_learn_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_external_learn_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_notifier_vxlan_fdb_info = type { i32, i32, i32, i32, i32, i32 }
%struct.vxlan_dev = type { i32* }
%struct.vxlan_fdb = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@NTF_EXT_LEARNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_notifier_vxlan_fdb_info*)* @vxlan_fdb_external_learn_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fdb_external_learn_del(%struct.net_device* %0, %struct.switchdev_notifier_vxlan_fdb_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.switchdev_notifier_vxlan_fdb_info*, align 8
  %5 = alloca %struct.vxlan_dev*, align 8
  %6 = alloca %struct.vxlan_fdb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.switchdev_notifier_vxlan_fdb_info* %1, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %9)
  store %struct.vxlan_dev* %10, %struct.vxlan_dev** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %12 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %13 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %16 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @fdb_head_index(%struct.vxlan_dev* %11, i32 %14, i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %20 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %26 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %27 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %30 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.vxlan_fdb* @vxlan_find_mac(%struct.vxlan_dev* %25, i32 %28, i32 %31)
  store %struct.vxlan_fdb* %32, %struct.vxlan_fdb** %6, align 8
  %33 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %6, align 8
  %34 = icmp ne %struct.vxlan_fdb* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %67

38:                                               ; preds = %2
  %39 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %6, align 8
  %40 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NTF_EXT_LEARNED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %38
  %46 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %47 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %48 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %51 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %54 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %57 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %60 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %63 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @__vxlan_fdb_delete(%struct.vxlan_dev* %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 0)
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %45, %38
  br label %67

67:                                               ; preds = %66, %35
  %68 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %69 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = call i32 @spin_unlock_bh(i32* %72)
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @fdb_head_index(%struct.vxlan_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.vxlan_fdb* @vxlan_find_mac(%struct.vxlan_dev*, i32, i32) #1

declare dso_local i32 @__vxlan_fdb_delete(%struct.vxlan_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
