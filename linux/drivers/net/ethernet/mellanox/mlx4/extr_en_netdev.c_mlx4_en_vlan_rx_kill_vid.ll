; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_vlan_rx_kill_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_vlan_rx_kill_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i64, i32, i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32, i32, i64 }

@HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Killing VID:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed configuring VLAN filter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @mlx4_en_vlan_rx_kill_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_vlan_rx_kill_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca %struct.mlx4_en_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx4_en_priv* %11, %struct.mlx4_en_priv** %7, align 8
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 3
  %14 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %13, align 8
  store %struct.mlx4_en_dev* %14, %struct.mlx4_en_dev** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @HW, align 4
  %16 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @en_dbg(i32 %15, %struct.mlx4_en_priv* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clear_bit(i32 %19, i32 %22)
  %24 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @mlx4_unregister_vlan(i32 %29, i32 %32, i32 %33)
  %35 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %3
  %40 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %49 = call i32 @mlx4_SET_VLAN_FLTR(i32 %47, %struct.mlx4_en_priv* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %54 = call i32 @en_err(%struct.mlx4_en_priv* %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %44
  br label %56

56:                                               ; preds = %55, %39, %3
  %57 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_unregister_vlan(i32, i32, i32) #1

declare dso_local i32 @mlx4_SET_VLAN_FLTR(i32, %struct.mlx4_en_priv*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
