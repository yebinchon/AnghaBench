; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_switchdev_call_notifiers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_switchdev_call_notifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_dev = type { i32 }
%struct.vxlan_fdb = type { i32 }
%struct.vxlan_rdst = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.switchdev_notifier_vxlan_fdb_info = type { i32 }

@SWITCHDEV_VXLAN_FDB_ADD_TO_DEVICE = common dso_local global i32 0, align 4
@SWITCHDEV_VXLAN_FDB_DEL_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_dev*, %struct.vxlan_fdb*, %struct.vxlan_rdst*, i32, %struct.netlink_ext_ack*)* @vxlan_fdb_switchdev_call_notifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fdb_switchdev_call_notifiers(%struct.vxlan_dev* %0, %struct.vxlan_fdb* %1, %struct.vxlan_rdst* %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vxlan_dev*, align 8
  %8 = alloca %struct.vxlan_fdb*, align 8
  %9 = alloca %struct.vxlan_rdst*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.switchdev_notifier_vxlan_fdb_info, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vxlan_dev* %0, %struct.vxlan_dev** %7, align 8
  store %struct.vxlan_fdb* %1, %struct.vxlan_fdb** %8, align 8
  store %struct.vxlan_rdst* %2, %struct.vxlan_rdst** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %15 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %9, align 8
  %16 = icmp ne %struct.vxlan_rdst* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %44

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @SWITCHDEV_VXLAN_FDB_ADD_TO_DEVICE, align 4
  br label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @SWITCHDEV_VXLAN_FDB_DEL_TO_DEVICE, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %13, align 4
  %31 = load %struct.vxlan_dev*, %struct.vxlan_dev** %7, align 8
  %32 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %8, align 8
  %33 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %9, align 8
  %34 = call i32 @vxlan_fdb_switchdev_notifier_info(%struct.vxlan_dev* %31, %struct.vxlan_fdb* %32, %struct.vxlan_rdst* %33, i32* null, %struct.switchdev_notifier_vxlan_fdb_info* %12)
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.vxlan_dev*, %struct.vxlan_dev** %7, align 8
  %37 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, %struct.switchdev_notifier_vxlan_fdb_info* %12, i32 0, i32 0
  %40 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %41 = call i32 @call_switchdev_notifiers(i32 %35, i32 %38, i32* %39, %struct.netlink_ext_ack* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @notifier_to_errno(i32 %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %29, %21
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @vxlan_fdb_switchdev_notifier_info(%struct.vxlan_dev*, %struct.vxlan_fdb*, %struct.vxlan_rdst*, i32*, %struct.switchdev_notifier_vxlan_fdb_info*) #1

declare dso_local i32 @call_switchdev_notifiers(i32, i32, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @notifier_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
