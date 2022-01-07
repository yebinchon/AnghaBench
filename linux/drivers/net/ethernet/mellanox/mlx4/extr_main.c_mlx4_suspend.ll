; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mlx4_dev_persistent = type { i32, i32, %struct.mlx4_dev* }
%struct.mlx4_dev = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"suspend was called\0A\00", align 1
@MLX4_INTERFACE_STATE_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @mlx4_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_suspend(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev_persistent*, align 8
  %6 = alloca %struct.mlx4_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.mlx4_dev_persistent* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.mlx4_dev_persistent* %8, %struct.mlx4_dev_persistent** %5, align 8
  %9 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %5, align 8
  %10 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %9, i32 0, i32 2
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  store %struct.mlx4_dev* %11, %struct.mlx4_dev** %6, align 8
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %13 = call i32 @mlx4_err(%struct.mlx4_dev* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %5, align 8
  %15 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %5, align 8
  %18 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MLX4_INTERFACE_STATE_UP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = call i32 @mlx4_unload_one(%struct.pci_dev* %24)
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %5, align 8
  %28 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %27, i32 0, i32 1
  %29 = call i32 @mutex_unlock(i32* %28)
  ret i32 0
}

declare dso_local %struct.mlx4_dev_persistent* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_unload_one(%struct.pci_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
