; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_eq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_eq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { i32 }
%struct.mlxsw_pci_queue = type { i32, i32, i64 }

@MLXSW_PCI_AQ_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_pci*, i8*, %struct.mlxsw_pci_queue*)* @mlxsw_pci_eq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_pci_eq_init(%struct.mlxsw_pci* %0, i8* %1, %struct.mlxsw_pci_queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_pci*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_pci_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mlxsw_pci_queue* %2, %struct.mlxsw_pci_queue** %7, align 8
  %12 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %13 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %26, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %17 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @mlxsw_pci_queue_elem_get(%struct.mlxsw_pci_queue* %21, i32 %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @mlxsw_pci_eqe_owner_set(i8* %24, i32 1)
  br label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %14

29:                                               ; preds = %14
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @mlxsw_cmd_mbox_sw2hw_eq_int_msix_set(i8* %30, i32 1)
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @mlxsw_cmd_mbox_sw2hw_eq_st_set(i8* %32, i32 1)
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %36 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ilog2(i32 %37)
  %39 = call i32 @mlxsw_cmd_mbox_sw2hw_eq_log_eq_size_set(i8* %34, i32 %38)
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %52, %29
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @MLXSW_PCI_AQ_PAGES, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @__mlxsw_pci_queue_page_get(%struct.mlxsw_pci_queue* %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @mlxsw_cmd_mbox_sw2hw_eq_pa_set(i8* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %40

55:                                               ; preds = %40
  %56 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %57 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %61 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @mlxsw_cmd_sw2hw_eq(i32 %58, i8* %59, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %75

68:                                               ; preds = %55
  %69 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %70 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %71 = call i32 @mlxsw_pci_queue_doorbell_consumer_ring(%struct.mlxsw_pci* %69, %struct.mlxsw_pci_queue* %70)
  %72 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %73 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %74 = call i32 @mlxsw_pci_queue_doorbell_arm_consumer_ring(%struct.mlxsw_pci* %72, %struct.mlxsw_pci_queue* %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %68, %66
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i8* @mlxsw_pci_queue_elem_get(%struct.mlxsw_pci_queue*, i32) #1

declare dso_local i32 @mlxsw_pci_eqe_owner_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_sw2hw_eq_int_msix_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_sw2hw_eq_st_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_sw2hw_eq_log_eq_size_set(i8*, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @__mlxsw_pci_queue_page_get(%struct.mlxsw_pci_queue*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_sw2hw_eq_pa_set(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_cmd_sw2hw_eq(i32, i8*, i32) #1

declare dso_local i32 @mlxsw_pci_queue_doorbell_consumer_ring(%struct.mlxsw_pci*, %struct.mlxsw_pci_queue*) #1

declare dso_local i32 @mlxsw_pci_queue_doorbell_arm_consumer_ring(%struct.mlxsw_pci*, %struct.mlxsw_pci_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
