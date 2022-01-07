; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_wqe_frag_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_wqe_frag_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"failed to dma map tx frag\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_pci*, i8*, i32, i8*, i64, i32)* @mlxsw_pci_wqe_frag_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_pci_wqe_frag_map(%struct.mlxsw_pci* %0, i8* %1, i32 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_pci*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pci_dev*, align 8
  %15 = alloca i32, align 4
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %8, align 8
  %17 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %16, i32 0, i32 0
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %14, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @pci_map_single(%struct.pci_dev* %19, i8* %20, i64 %21, i32 %22)
  store i32 %23, i32* %15, align 4
  %24 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %25 = load i32, i32* %15, align 4
  %26 = call i32 @pci_dma_mapping_error(%struct.pci_dev* %24, i32 %25)
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %6
  %30 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = call i32 @dev_err_ratelimited(i32* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %44

35:                                               ; preds = %6
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @mlxsw_pci_wqe_address_set(i8* %36, i32 %37, i32 %38)
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @mlxsw_pci_wqe_byte_count_set(i8* %40, i32 %41, i64 %42)
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %35, %29
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @pci_map_single(%struct.pci_dev*, i8*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_dma_mapping_error(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32*, i8*) #1

declare dso_local i32 @mlxsw_pci_wqe_address_set(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_pci_wqe_byte_count_set(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
