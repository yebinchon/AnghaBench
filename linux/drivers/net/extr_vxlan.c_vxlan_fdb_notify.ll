; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_dev = type { i32 }
%struct.vxlan_fdb = type { i32 }
%struct.vxlan_rdst = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_dev*, %struct.vxlan_fdb*, %struct.vxlan_rdst*, i32, i32, %struct.netlink_ext_ack*)* @vxlan_fdb_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fdb_notify(%struct.vxlan_dev* %0, %struct.vxlan_fdb* %1, %struct.vxlan_rdst* %2, i32 %3, i32 %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vxlan_dev*, align 8
  %9 = alloca %struct.vxlan_fdb*, align 8
  %10 = alloca %struct.vxlan_rdst*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca i32, align 4
  store %struct.vxlan_dev* %0, %struct.vxlan_dev** %8, align 8
  store %struct.vxlan_fdb* %1, %struct.vxlan_fdb** %9, align 8
  store %struct.vxlan_rdst* %2, %struct.vxlan_rdst** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %6
  %18 = load i32, i32* %11, align 4
  switch i32 %18, label %36 [
    i32 128, label %19
    i32 129, label %30
  ]

19:                                               ; preds = %17
  %20 = load %struct.vxlan_dev*, %struct.vxlan_dev** %8, align 8
  %21 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %9, align 8
  %22 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %10, align 8
  %23 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %24 = call i32 @vxlan_fdb_switchdev_call_notifiers(%struct.vxlan_dev* %20, %struct.vxlan_fdb* %21, %struct.vxlan_rdst* %22, i32 1, %struct.netlink_ext_ack* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %7, align 4
  br label %43

29:                                               ; preds = %19
  br label %36

30:                                               ; preds = %17
  %31 = load %struct.vxlan_dev*, %struct.vxlan_dev** %8, align 8
  %32 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %9, align 8
  %33 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %10, align 8
  %34 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %35 = call i32 @vxlan_fdb_switchdev_call_notifiers(%struct.vxlan_dev* %31, %struct.vxlan_fdb* %32, %struct.vxlan_rdst* %33, i32 0, %struct.netlink_ext_ack* %34)
  br label %36

36:                                               ; preds = %17, %30, %29
  br label %37

37:                                               ; preds = %36, %6
  %38 = load %struct.vxlan_dev*, %struct.vxlan_dev** %8, align 8
  %39 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %9, align 8
  %40 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @__vxlan_fdb_notify(%struct.vxlan_dev* %38, %struct.vxlan_fdb* %39, %struct.vxlan_rdst* %40, i32 %41)
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %37, %27
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @vxlan_fdb_switchdev_call_notifiers(%struct.vxlan_dev*, %struct.vxlan_fdb*, %struct.vxlan_rdst*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @__vxlan_fdb_notify(%struct.vxlan_dev*, %struct.vxlan_fdb*, %struct.vxlan_rdst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
