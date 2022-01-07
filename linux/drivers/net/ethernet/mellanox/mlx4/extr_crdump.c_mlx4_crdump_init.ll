; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_crdump.c_mlx4_crdump_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_crdump.c_mlx4_crdump_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev*, %struct.mlx4_fw_crdump }
%struct.pci_dev = type { i32 }
%struct.mlx4_fw_crdump = type { i32, i8*, i8* }
%struct.devlink = type { i32 }

@region_cr_space_str = common dso_local global i32 0, align 4
@MAX_NUM_OF_DUMPS_TO_STORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"crdump: create devlink region %s err %ld\0A\00", align 1
@region_fw_health_str = common dso_local global i32 0, align 4
@HEALTH_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_crdump_init(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca %struct.devlink*, align 8
  %4 = alloca %struct.mlx4_fw_crdump*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %6 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %7 = call i32 @mlx4_priv(%struct.mlx4_dev* %6)
  %8 = call %struct.devlink* @priv_to_devlink(i32 %7)
  store %struct.devlink* %8, %struct.devlink** %3, align 8
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store %struct.mlx4_fw_crdump* %12, %struct.mlx4_fw_crdump** %4, align 8
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %14 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  %18 = load %struct.mlx4_fw_crdump*, %struct.mlx4_fw_crdump** %4, align 8
  %19 = getelementptr inbounds %struct.mlx4_fw_crdump, %struct.mlx4_fw_crdump* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.devlink*, %struct.devlink** %3, align 8
  %21 = load i32, i32* @region_cr_space_str, align 4
  %22 = load i32, i32* @MAX_NUM_OF_DUMPS_TO_STORE, align 4
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = call i32 @pci_resource_len(%struct.pci_dev* %23, i32 0)
  %25 = call i8* @devlink_region_create(%struct.devlink* %20, i32 %21, i32 %22, i32 %24)
  %26 = load %struct.mlx4_fw_crdump*, %struct.mlx4_fw_crdump** %4, align 8
  %27 = getelementptr inbounds %struct.mlx4_fw_crdump, %struct.mlx4_fw_crdump* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.mlx4_fw_crdump*, %struct.mlx4_fw_crdump** %4, align 8
  %29 = getelementptr inbounds %struct.mlx4_fw_crdump, %struct.mlx4_fw_crdump* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %1
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %35 = load i32, i32* @region_cr_space_str, align 4
  %36 = load %struct.mlx4_fw_crdump*, %struct.mlx4_fw_crdump** %4, align 8
  %37 = getelementptr inbounds %struct.mlx4_fw_crdump, %struct.mlx4_fw_crdump* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @PTR_ERR(i8* %38)
  %40 = call i32 @mlx4_warn(%struct.mlx4_dev* %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %33, %1
  %42 = load %struct.devlink*, %struct.devlink** %3, align 8
  %43 = load i32, i32* @region_fw_health_str, align 4
  %44 = load i32, i32* @MAX_NUM_OF_DUMPS_TO_STORE, align 4
  %45 = load i32, i32* @HEALTH_BUFFER_SIZE, align 4
  %46 = call i8* @devlink_region_create(%struct.devlink* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.mlx4_fw_crdump*, %struct.mlx4_fw_crdump** %4, align 8
  %48 = getelementptr inbounds %struct.mlx4_fw_crdump, %struct.mlx4_fw_crdump* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.mlx4_fw_crdump*, %struct.mlx4_fw_crdump** %4, align 8
  %50 = getelementptr inbounds %struct.mlx4_fw_crdump, %struct.mlx4_fw_crdump* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @IS_ERR(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %41
  %55 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %56 = load i32, i32* @region_fw_health_str, align 4
  %57 = load %struct.mlx4_fw_crdump*, %struct.mlx4_fw_crdump** %4, align 8
  %58 = getelementptr inbounds %struct.mlx4_fw_crdump, %struct.mlx4_fw_crdump* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @PTR_ERR(i8* %59)
  %61 = call i32 @mlx4_warn(%struct.mlx4_dev* %55, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %60)
  br label %62

62:                                               ; preds = %54, %41
  ret i32 0
}

declare dso_local %struct.devlink* @priv_to_devlink(i32) #1

declare dso_local i32 @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i8* @devlink_region_create(%struct.devlink*, i32, i32, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
