; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_devlink.c_mlx5_devlink_flash_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_devlink.c_mlx5_devlink_flash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i8*, i8*, %struct.netlink_ext_ack*)* @mlx5_devlink_flash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_devlink_flash_update(%struct.devlink* %0, i8* %1, i8* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.mlx5_core_dev*, align 8
  %11 = alloca %struct.firmware*, align 8
  %12 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %13 = load %struct.devlink*, %struct.devlink** %6, align 8
  %14 = call %struct.mlx5_core_dev* @devlink_priv(%struct.devlink* %13)
  store %struct.mlx5_core_dev* %14, %struct.mlx5_core_dev** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %36

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %23 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @request_firmware_direct(%struct.firmware** %11, i8* %21, i32* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %36

31:                                               ; preds = %20
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %33 = load %struct.firmware*, %struct.firmware** %11, align 8
  %34 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %35 = call i32 @mlx5_firmware_flash(%struct.mlx5_core_dev* %32, %struct.firmware* %33, %struct.netlink_ext_ack* %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %29, %17
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.mlx5_core_dev* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @request_firmware_direct(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @mlx5_firmware_flash(%struct.mlx5_core_dev*, %struct.firmware*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
