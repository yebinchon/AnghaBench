; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_fw_area_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_fw_area_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.mlxsw_pci_mem_item* }
%struct.mlxsw_pci_mem_item = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_pci*)* @mlxsw_pci_fw_area_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_pci_fw_area_fini(%struct.mlxsw_pci* %0) #0 {
  %2 = alloca %struct.mlxsw_pci*, align 8
  %3 = alloca %struct.mlxsw_pci_mem_item*, align 8
  %4 = alloca i32, align 4
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %2, align 8
  %5 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %2, align 8
  %6 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @mlxsw_cmd_unmap_fa(i32 %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %37, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %2, align 8
  %12 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %9
  %17 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %2, align 8
  %18 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item* %20, i64 %22
  store %struct.mlxsw_pci_mem_item* %23, %struct.mlxsw_pci_mem_item** %3, align 8
  %24 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %2, align 8
  %25 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %3, align 8
  %28 = getelementptr inbounds %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %3, align 8
  %31 = getelementptr inbounds %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %3, align 8
  %34 = getelementptr inbounds %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pci_free_consistent(i32 %26, i32 %29, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %16
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %9

40:                                               ; preds = %9
  %41 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %2, align 8
  %42 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %43, align 8
  %45 = call i32 @kfree(%struct.mlxsw_pci_mem_item* %44)
  ret void
}

declare dso_local i32 @mlxsw_cmd_unmap_fa(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_pci_mem_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
