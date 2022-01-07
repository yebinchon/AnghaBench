; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_devlink_eswitch_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_devlink_eswitch_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@DEVLINK_ESWITCH_MODE_SWITCHDEV = common dso_local global i64 0, align 8
@DEVLINK_ESWITCH_MODE_LEGACY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_devlink_eswitch_mode_set(%struct.devlink* %0, i64 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %12 = load %struct.devlink*, %struct.devlink** %5, align 8
  %13 = call %struct.mlx5_core_dev* @devlink_priv(%struct.devlink* %12)
  store %struct.mlx5_core_dev* %13, %struct.mlx5_core_dev** %8, align 8
  store i64 0, i64* %10, align 8
  %14 = load %struct.devlink*, %struct.devlink** %5, align 8
  %15 = call i32 @mlx5_devlink_eswitch_check(%struct.devlink* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %4, align 4
  br label %63

20:                                               ; preds = %3
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %22 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @esw_mode_from_devlink(i64 %27, i64* %10)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %63

33:                                               ; preds = %20
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %63

38:                                               ; preds = %33
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @DEVLINK_ESWITCH_MODE_SWITCHDEV, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %44 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %48 = call i32 @esw_offloads_start(%struct.TYPE_5__* %46, %struct.netlink_ext_ack* %47)
  store i32 %48, i32* %4, align 4
  br label %63

49:                                               ; preds = %38
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @DEVLINK_ESWITCH_MODE_LEGACY, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %55 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %59 = call i32 @esw_offloads_stop(%struct.TYPE_5__* %57, %struct.netlink_ext_ack* %58)
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %49
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %53, %42, %37, %30, %18
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.mlx5_core_dev* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @mlx5_devlink_eswitch_check(%struct.devlink*) #1

declare dso_local i64 @esw_mode_from_devlink(i64, i64*) #1

declare dso_local i32 @esw_offloads_start(%struct.TYPE_5__*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @esw_offloads_stop(%struct.TYPE_5__*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
