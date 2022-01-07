; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.devlink = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"mlx5_unload_one failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.devlink*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.mlx5_core_dev* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.mlx5_core_dev* %6, %struct.mlx5_core_dev** %3, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %8 = call %struct.devlink* @priv_to_devlink(%struct.mlx5_core_dev* %7)
  store %struct.devlink* %8, %struct.devlink** %4, align 8
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %10 = call i32 @mlx5_crdump_disable(%struct.mlx5_core_dev* %9)
  %11 = load %struct.devlink*, %struct.devlink** %4, align 8
  %12 = call i32 @mlx5_devlink_unregister(%struct.devlink* %11)
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %14 = call i64 @mlx5_unload_one(%struct.mlx5_core_dev* %13, i32 1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %18 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %20 = call i32 @mlx5_health_flush(%struct.mlx5_core_dev* %19)
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %23 = call i32 @mlx5_pci_close(%struct.mlx5_core_dev* %22)
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %25 = call i32 @mlx5_mdev_uninit(%struct.mlx5_core_dev* %24)
  %26 = load %struct.devlink*, %struct.devlink** %4, align 8
  %27 = call i32 @mlx5_devlink_free(%struct.devlink* %26)
  br label %28

28:                                               ; preds = %21, %16
  ret void
}

declare dso_local %struct.mlx5_core_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.devlink* @priv_to_devlink(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_crdump_disable(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_devlink_unregister(%struct.devlink*) #1

declare dso_local i64 @mlx5_unload_one(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @mlx5_health_flush(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_pci_close(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_mdev_uninit(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_devlink_free(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
