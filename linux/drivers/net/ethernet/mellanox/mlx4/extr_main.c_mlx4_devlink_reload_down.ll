; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_devlink_reload_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_devlink_reload_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlx4_priv = type { %struct.mlx4_dev }
%struct.mlx4_dev = type { %struct.mlx4_dev_persistent* }
%struct.mlx4_dev_persistent = type { i32, i32, i64 }

@.str = private unnamed_addr constant [73 x i8] c"Reload performed on PF, will cause reset on operating Virtual Functions\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, %struct.netlink_ext_ack*)* @mlx4_devlink_reload_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_devlink_reload_down(%struct.devlink* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca %struct.devlink*, align 8
  %4 = alloca %struct.netlink_ext_ack*, align 8
  %5 = alloca %struct.mlx4_priv*, align 8
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca %struct.mlx4_dev_persistent*, align 8
  store %struct.devlink* %0, %struct.devlink** %3, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %4, align 8
  %8 = load %struct.devlink*, %struct.devlink** %3, align 8
  %9 = call %struct.mlx4_priv* @devlink_priv(%struct.devlink* %8)
  store %struct.mlx4_priv* %9, %struct.mlx4_priv** %5, align 8
  %10 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %10, i32 0, i32 0
  store %struct.mlx4_dev* %11, %struct.mlx4_dev** %6, align 8
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %13 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %12, i32 0, i32 0
  %14 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %13, align 8
  store %struct.mlx4_dev_persistent* %14, %struct.mlx4_dev_persistent** %7, align 8
  %15 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %7, align 8
  %21 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mlx4_warn(i32 %22, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %7, align 8
  %26 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @mlx4_restart_one_down(i32 %27)
  ret i32 0
}

declare dso_local %struct.mlx4_priv* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @mlx4_warn(i32, i8*) #1

declare dso_local i32 @mlx4_restart_one_down(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
