; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_devlink_reload_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_devlink_reload_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlx4_priv = type { %struct.mlx4_dev }
%struct.mlx4_dev = type { %struct.mlx4_dev_persistent* }
%struct.mlx4_dev_persistent = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"mlx4_restart_one_up failed, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, %struct.netlink_ext_ack*)* @mlx4_devlink_reload_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_devlink_reload_up(%struct.devlink* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca %struct.devlink*, align 8
  %4 = alloca %struct.netlink_ext_ack*, align 8
  %5 = alloca %struct.mlx4_priv*, align 8
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca %struct.mlx4_dev_persistent*, align 8
  %8 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %3, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %4, align 8
  %9 = load %struct.devlink*, %struct.devlink** %3, align 8
  %10 = call %struct.mlx4_priv* @devlink_priv(%struct.devlink* %9)
  store %struct.mlx4_priv* %10, %struct.mlx4_priv** %5, align 8
  %11 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %11, i32 0, i32 0
  store %struct.mlx4_dev* %12, %struct.mlx4_dev** %6, align 8
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %14 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %13, i32 0, i32 0
  %15 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %14, align 8
  store %struct.mlx4_dev_persistent* %15, %struct.mlx4_dev_persistent** %7, align 8
  %16 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %7, align 8
  %17 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.devlink*, %struct.devlink** %3, align 8
  %20 = call i32 @mlx4_restart_one_up(i32 %18, i32 1, %struct.devlink* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %7, align 8
  %25 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @mlx4_err(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %23, %2
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local %struct.mlx4_priv* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @mlx4_restart_one_up(i32, i32, %struct.devlink*) #1

declare dso_local i32 @mlx4_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
