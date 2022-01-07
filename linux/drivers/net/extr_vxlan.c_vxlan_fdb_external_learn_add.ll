; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_external_learn_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_external_learn_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_notifier_vxlan_fdb_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.vxlan_dev = type { i32* }
%struct.netlink_ext_ack = type { i32 }

@NUD_REACHABLE = common dso_local global i32 0, align 4
@NLM_F_CREATE = common dso_local global i32 0, align 4
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@NTF_USE = common dso_local global i32 0, align 4
@NTF_SELF = common dso_local global i32 0, align 4
@NTF_EXT_LEARNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_notifier_vxlan_fdb_info*)* @vxlan_fdb_external_learn_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fdb_external_learn_add(%struct.net_device* %0, %struct.switchdev_notifier_vxlan_fdb_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.switchdev_notifier_vxlan_fdb_info*, align 8
  %5 = alloca %struct.vxlan_dev*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.switchdev_notifier_vxlan_fdb_info* %1, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %9)
  store %struct.vxlan_dev* %10, %struct.vxlan_dev** %5, align 8
  %11 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %12 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %13 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %16 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @fdb_head_index(%struct.vxlan_dev* %11, i32 %14, i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %20 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %19, i32 0, i32 6
  %21 = call %struct.netlink_ext_ack* @switchdev_notifier_info_to_extack(i32* %20)
  store %struct.netlink_ext_ack* %21, %struct.netlink_ext_ack** %6, align 8
  %22 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %23 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %29 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %30 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %33 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %32, i32 0, i32 4
  %34 = load i32, i32* @NUD_REACHABLE, align 4
  %35 = load i32, i32* @NLM_F_CREATE, align 4
  %36 = load i32, i32* @NLM_F_REPLACE, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %39 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %42 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %45 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %4, align 8
  %48 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NTF_USE, align 4
  %51 = load i32, i32* @NTF_SELF, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @NTF_EXT_LEARNED, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %56 = call i32 @vxlan_fdb_update(%struct.vxlan_dev* %28, i32 %31, i32* %33, i32 %34, i32 %37, i32 %40, i32 %43, i32 %46, i32 %49, i32 %54, i32 0, %struct.netlink_ext_ack* %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %58 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = call i32 @spin_unlock_bh(i32* %61)
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @fdb_head_index(%struct.vxlan_dev*, i32, i32) #1

declare dso_local %struct.netlink_ext_ack* @switchdev_notifier_info_to_extack(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @vxlan_fdb_update(%struct.vxlan_dev*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
