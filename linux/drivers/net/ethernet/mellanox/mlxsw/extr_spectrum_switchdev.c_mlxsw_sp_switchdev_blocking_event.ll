; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_switchdev_blocking_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_switchdev_blocking_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }

@mlxsw_sp_port_dev_check = common dso_local global i32 0, align 4
@mlxsw_sp_port_obj_add = common dso_local global i32 0, align 4
@mlxsw_sp_port_obj_del = common dso_local global i32 0, align 4
@mlxsw_sp_port_attr_set = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @mlxsw_sp_switchdev_blocking_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_switchdev_blocking_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call %struct.net_device* @switchdev_notifier_info_to_dev(i8* %10)
  store %struct.net_device* %11, %struct.net_device** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i64, i64* %6, align 8
  switch i64 %12, label %55 [
    i64 129, label %13
    i64 128, label %30
    i64 130, label %47
  ]

13:                                               ; preds = %3
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = call i32 @netif_is_vxlan(%struct.net_device* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @mlxsw_sp_switchdev_handle_vxlan_obj_add(%struct.net_device* %18, i8* %19)
  store i32 %20, i32* %9, align 4
  br label %27

21:                                               ; preds = %13
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @mlxsw_sp_port_dev_check, align 4
  %25 = load i32, i32* @mlxsw_sp_port_obj_add, align 4
  %26 = call i32 @switchdev_handle_port_obj_add(%struct.net_device* %22, i8* %23, i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %21, %17
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @notifier_from_errno(i32 %28)
  store i32 %29, i32* %4, align 4
  br label %57

30:                                               ; preds = %3
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = call i32 @netif_is_vxlan(%struct.net_device* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.net_device*, %struct.net_device** %8, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @mlxsw_sp_switchdev_handle_vxlan_obj_del(%struct.net_device* %35, i8* %36)
  br label %44

38:                                               ; preds = %30
  %39 = load %struct.net_device*, %struct.net_device** %8, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @mlxsw_sp_port_dev_check, align 4
  %42 = load i32, i32* @mlxsw_sp_port_obj_del, align 4
  %43 = call i32 @switchdev_handle_port_obj_del(%struct.net_device* %39, i8* %40, i32 %41, i32 %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @notifier_from_errno(i32 %45)
  store i32 %46, i32* %4, align 4
  br label %57

47:                                               ; preds = %3
  %48 = load %struct.net_device*, %struct.net_device** %8, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* @mlxsw_sp_port_dev_check, align 4
  %51 = load i32, i32* @mlxsw_sp_port_attr_set, align 4
  %52 = call i32 @switchdev_handle_port_attr_set(%struct.net_device* %48, i8* %49, i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @notifier_from_errno(i32 %53)
  store i32 %54, i32* %4, align 4
  br label %57

55:                                               ; preds = %3
  %56 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %47, %44, %27
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.net_device* @switchdev_notifier_info_to_dev(i8*) #1

declare dso_local i32 @netif_is_vxlan(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_switchdev_handle_vxlan_obj_add(%struct.net_device*, i8*) #1

declare dso_local i32 @switchdev_handle_port_obj_add(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @notifier_from_errno(i32) #1

declare dso_local i32 @mlxsw_sp_switchdev_handle_vxlan_obj_del(%struct.net_device*, i8*) #1

declare dso_local i32 @switchdev_handle_port_obj_del(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @switchdev_handle_port_attr_set(%struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
