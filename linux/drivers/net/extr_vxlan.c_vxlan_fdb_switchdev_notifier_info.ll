; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_switchdev_notifier_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_switchdev_notifier_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_dev = type { i32 }
%struct.vxlan_fdb = type { i32, i32, i32 }
%struct.vxlan_rdst = type { i32, i32, i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.switchdev_notifier_vxlan_fdb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.netlink_ext_ack*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NTF_VXLAN_ADDED_BY_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxlan_dev*, %struct.vxlan_fdb*, %struct.vxlan_rdst*, %struct.netlink_ext_ack*, %struct.switchdev_notifier_vxlan_fdb_info*)* @vxlan_fdb_switchdev_notifier_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_fdb_switchdev_notifier_info(%struct.vxlan_dev* %0, %struct.vxlan_fdb* %1, %struct.vxlan_rdst* %2, %struct.netlink_ext_ack* %3, %struct.switchdev_notifier_vxlan_fdb_info* %4) #0 {
  %6 = alloca %struct.vxlan_dev*, align 8
  %7 = alloca %struct.vxlan_fdb*, align 8
  %8 = alloca %struct.vxlan_rdst*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.switchdev_notifier_vxlan_fdb_info*, align 8
  store %struct.vxlan_dev* %0, %struct.vxlan_dev** %6, align 8
  store %struct.vxlan_fdb* %1, %struct.vxlan_fdb** %7, align 8
  store %struct.vxlan_rdst* %2, %struct.vxlan_rdst** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  store %struct.switchdev_notifier_vxlan_fdb_info* %4, %struct.switchdev_notifier_vxlan_fdb_info** %10, align 8
  %11 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %12 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %10, align 8
  %15 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 8
  %17 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %18 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %10, align 8
  %19 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.netlink_ext_ack* %17, %struct.netlink_ext_ack** %20, align 8
  %21 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %8, align 8
  %22 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %10, align 8
  %25 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %8, align 8
  %27 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %10, align 8
  %30 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %8, align 8
  %32 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %10, align 8
  %35 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %8, align 8
  %37 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %10, align 8
  %40 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %10, align 8
  %42 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %7, align 8
  %45 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @memcpy(i32 %43, i32 %46, i32 %47)
  %49 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %7, align 8
  %50 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %10, align 8
  %53 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %8, align 8
  %55 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %10, align 8
  %58 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %7, align 8
  %60 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @NTF_VXLAN_ADDED_BY_USER, align 4
  %63 = and i32 %61, %62
  %64 = load %struct.switchdev_notifier_vxlan_fdb_info*, %struct.switchdev_notifier_vxlan_fdb_info** %10, align 8
  %65 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
