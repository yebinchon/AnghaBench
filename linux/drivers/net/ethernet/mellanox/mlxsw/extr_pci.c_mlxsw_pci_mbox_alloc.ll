; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_mbox_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_mbox_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.mlxsw_pci_mem_item = type { i32, i32, i32 }

@MLXSW_CMD_MBOX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed allocating memory for mailbox\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_pci*, %struct.mlxsw_pci_mem_item*)* @mlxsw_pci_mbox_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_pci_mbox_alloc(%struct.mlxsw_pci* %0, %struct.mlxsw_pci_mem_item* %1) #0 {
  %3 = alloca %struct.mlxsw_pci*, align 8
  %4 = alloca %struct.mlxsw_pci_mem_item*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %3, align 8
  store %struct.mlxsw_pci_mem_item* %1, %struct.mlxsw_pci_mem_item** %4, align 8
  %7 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %7, i32 0, i32 0
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @MLXSW_CMD_MBOX_SIZE, align 4
  %11 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = load i32, i32* @MLXSW_CMD_MBOX_SIZE, align 4
  %15 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item* %15, i32 0, i32 1
  %17 = call i32 @pci_alloc_consistent(%struct.pci_dev* %13, i32 %14, i32* %16)
  %18 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %4, align 8
  %19 = getelementptr inbounds %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %4, align 8
  %21 = getelementptr inbounds %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %24, %2
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @pci_alloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
