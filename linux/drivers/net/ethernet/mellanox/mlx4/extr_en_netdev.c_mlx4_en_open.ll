; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Cannot open - device down/disabled\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed starting port:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mlx4_en_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.mlx4_en_priv* %7, %struct.mlx4_en_priv** %3, align 8
  %8 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %8, i32 0, i32 1
  %10 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  store %struct.mlx4_en_dev* %10, %struct.mlx4_en_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %20 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %37

23:                                               ; preds = %1
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @mlx4_en_clear_stats(%struct.net_device* %24)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = call i32 @mlx4_en_start_port(%struct.net_device* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %32 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %30, %23
  br label %37

37:                                               ; preds = %36, %18
  %38 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @mlx4_en_clear_stats(%struct.net_device*) #1

declare dso_local i32 @mlx4_en_start_port(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
