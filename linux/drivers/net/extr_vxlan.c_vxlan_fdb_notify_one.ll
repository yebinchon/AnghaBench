; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_notify_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_notify_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 (%struct.notifier_block*, i32, %struct.switchdev_notifier_vxlan_fdb_info*)* }
%struct.switchdev_notifier_vxlan_fdb_info = type { i32 }
%struct.vxlan_dev = type { i32 }
%struct.vxlan_fdb = type { i32 }
%struct.vxlan_rdst = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@SWITCHDEV_VXLAN_FDB_ADD_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, %struct.vxlan_dev*, %struct.vxlan_fdb*, %struct.vxlan_rdst*, %struct.netlink_ext_ack*)* @vxlan_fdb_notify_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fdb_notify_one(%struct.notifier_block* %0, %struct.vxlan_dev* %1, %struct.vxlan_fdb* %2, %struct.vxlan_rdst* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.notifier_block*, align 8
  %7 = alloca %struct.vxlan_dev*, align 8
  %8 = alloca %struct.vxlan_fdb*, align 8
  %9 = alloca %struct.vxlan_rdst*, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca %struct.switchdev_notifier_vxlan_fdb_info, align 4
  %12 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %6, align 8
  store %struct.vxlan_dev* %1, %struct.vxlan_dev** %7, align 8
  store %struct.vxlan_fdb* %2, %struct.vxlan_fdb** %8, align 8
  store %struct.vxlan_rdst* %3, %struct.vxlan_rdst** %9, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %13 = load %struct.vxlan_dev*, %struct.vxlan_dev** %7, align 8
  %14 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %8, align 8
  %15 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %9, align 8
  %16 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %17 = call i32 @vxlan_fdb_switchdev_notifier_info(%struct.vxlan_dev* %13, %struct.vxlan_fdb* %14, %struct.vxlan_rdst* %15, %struct.netlink_ext_ack* %16, %struct.switchdev_notifier_vxlan_fdb_info* %11)
  %18 = load %struct.notifier_block*, %struct.notifier_block** %6, align 8
  %19 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %18, i32 0, i32 0
  %20 = load i32 (%struct.notifier_block*, i32, %struct.switchdev_notifier_vxlan_fdb_info*)*, i32 (%struct.notifier_block*, i32, %struct.switchdev_notifier_vxlan_fdb_info*)** %19, align 8
  %21 = load %struct.notifier_block*, %struct.notifier_block** %6, align 8
  %22 = load i32, i32* @SWITCHDEV_VXLAN_FDB_ADD_TO_DEVICE, align 4
  %23 = call i32 %20(%struct.notifier_block* %21, i32 %22, %struct.switchdev_notifier_vxlan_fdb_info* %11)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @notifier_to_errno(i32 %24)
  ret i32 %25
}

declare dso_local i32 @vxlan_fdb_switchdev_notifier_info(%struct.vxlan_dev*, %struct.vxlan_fdb*, %struct.vxlan_rdst*, %struct.netlink_ext_ack*, %struct.switchdev_notifier_vxlan_fdb_info*) #1

declare dso_local i32 @notifier_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
