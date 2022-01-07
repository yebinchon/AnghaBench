; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.mlx5_core_dev = type { i32, %struct.pci_dev*, i32* }
%struct.devlink = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"devlink alloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_PCI_DEV_IS_VF = common dso_local global i32 0, align 4
@MLX5_COREDEV_VF = common dso_local global i32 0, align 4
@MLX5_COREDEV_PF = common dso_local global i32 0, align 4
@prof_sel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"mlx5_pci_init failed with error code %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"mlx5_load_one failed with error code %d\0A\00", align 1
@MLX5_IB_MOD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"mlx5_crdump_enable failed with error code %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.devlink*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = call %struct.devlink* (...) @mlx5_devlink_alloc()
  store %struct.devlink* %9, %struct.devlink** %7, align 8
  %10 = load %struct.devlink*, %struct.devlink** %7, align 8
  %11 = icmp ne %struct.devlink* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_err(i32* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %104

18:                                               ; preds = %2
  %19 = load %struct.devlink*, %struct.devlink** %7, align 8
  %20 = call %struct.mlx5_core_dev* @devlink_priv(%struct.devlink* %19)
  store %struct.mlx5_core_dev* %20, %struct.mlx5_core_dev** %6, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %24 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %27 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %26, i32 0, i32 1
  store %struct.pci_dev* %25, %struct.pci_dev** %27, align 8
  %28 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %29 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MLX5_PCI_DEV_IS_VF, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %18
  %35 = load i32, i32* @MLX5_COREDEV_VF, align 4
  br label %38

36:                                               ; preds = %18
  %37 = load i32, i32* @MLX5_COREDEV_PF, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %43 = load i32, i32* @prof_sel, align 4
  %44 = call i32 @mlx5_mdev_init(%struct.mlx5_core_dev* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %100

48:                                               ; preds = %38
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %52 = call i32 @mlx5_pci_init(%struct.mlx5_core_dev* %49, %struct.pci_dev* %50, %struct.pci_device_id* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %97

59:                                               ; preds = %48
  %60 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %61 = call i32 @mlx5_load_one(%struct.mlx5_core_dev* %60, i32 1)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %94

68:                                               ; preds = %59
  %69 = load i32, i32* @MLX5_IB_MOD, align 4
  %70 = call i32 @request_module_nowait(i32 %69)
  %71 = load %struct.devlink*, %struct.devlink** %7, align 8
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = call i32 @mlx5_devlink_register(%struct.devlink* %71, i32* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %91

78:                                               ; preds = %68
  %79 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %80 = call i32 @mlx5_crdump_enable(%struct.mlx5_core_dev* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (i32*, i8*, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %83, %78
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = call i32 @pci_save_state(%struct.pci_dev* %89)
  store i32 0, i32* %3, align 4
  br label %104

91:                                               ; preds = %77
  %92 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %93 = call i32 @mlx5_unload_one(%struct.mlx5_core_dev* %92, i32 1)
  br label %94

94:                                               ; preds = %91, %64
  %95 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %96 = call i32 @mlx5_pci_close(%struct.mlx5_core_dev* %95)
  br label %97

97:                                               ; preds = %94, %55
  %98 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %99 = call i32 @mlx5_mdev_uninit(%struct.mlx5_core_dev* %98)
  br label %100

100:                                              ; preds = %97, %47
  %101 = load %struct.devlink*, %struct.devlink** %7, align 8
  %102 = call i32 @mlx5_devlink_free(%struct.devlink* %101)
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %88, %12
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.devlink* @mlx5_devlink_alloc(...) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.mlx5_core_dev* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @mlx5_mdev_init(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_pci_init(%struct.mlx5_core_dev*, %struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_load_one(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @request_module_nowait(i32) #1

declare dso_local i32 @mlx5_devlink_register(%struct.devlink*, i32*) #1

declare dso_local i32 @mlx5_crdump_enable(%struct.mlx5_core_dev*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @mlx5_unload_one(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_pci_close(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_mdev_uninit(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_devlink_free(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
