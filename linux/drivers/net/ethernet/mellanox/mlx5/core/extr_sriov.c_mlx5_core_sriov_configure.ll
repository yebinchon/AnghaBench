; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_sriov.c_mlx5_core_sriov_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_sriov.c_mlx5_core_sriov_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_core_sriov }
%struct.mlx5_core_sriov = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"requested num_vfs %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_sriov_configure(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5_core_sriov*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.mlx5_core_dev* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.mlx5_core_dev* %9, %struct.mlx5_core_dev** %5, align 8
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.mlx5_core_sriov* %12, %struct.mlx5_core_sriov** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @mlx5_sriov_enable(%struct.pci_dev* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = call i32 @mlx5_sriov_disable(%struct.pci_dev* %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.mlx5_core_sriov*, %struct.mlx5_core_sriov** %6, align 8
  %31 = getelementptr inbounds %struct.mlx5_core_sriov, %struct.mlx5_core_sriov* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  ret i32 %40
}

declare dso_local %struct.mlx5_core_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_sriov_enable(%struct.pci_dev*, i32) #1

declare dso_local i32 @mlx5_sriov_disable(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
