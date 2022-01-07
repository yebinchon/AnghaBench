; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_cq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_cq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { i32 }
%struct.mlxsw_pci_queue = type { i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@MLXSW_PCI_CQE_V1 = common dso_local global i64 0, align 8
@MLXSW_CMD_MBOX_SW2HW_CQ_CQE_VER_1 = common dso_local global i32 0, align 4
@MLXSW_PCI_CQE_V2 = common dso_local global i64 0, align 8
@MLXSW_CMD_MBOX_SW2HW_CQ_CQE_VER_2 = common dso_local global i32 0, align 4
@MLXSW_PCI_EQ_COMP_NUM = common dso_local global i32 0, align 4
@MLXSW_PCI_AQ_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_pci*, i8*, %struct.mlxsw_pci_queue*)* @mlxsw_pci_cq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_pci_cq_init(%struct.mlxsw_pci* %0, i8* %1, %struct.mlxsw_pci_queue* %2) #0 {
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
  %13 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %31, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %17 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @mlxsw_pci_queue_elem_get(%struct.mlxsw_pci_queue* %21, i32 %22)
  store i8* %23, i8** %10, align 8
  %24 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %25 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @mlxsw_pci_cqe_owner_set(i64 %28, i8* %29, i32 1)
  br label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %14

34:                                               ; preds = %14
  %35 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %36 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MLXSW_PCI_CQE_V1, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* @MLXSW_CMD_MBOX_SW2HW_CQ_CQE_VER_1, align 4
  %45 = call i32 @mlxsw_cmd_mbox_sw2hw_cq_cqe_ver_set(i8* %43, i32 %44)
  br label %59

46:                                               ; preds = %34
  %47 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %48 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MLXSW_PCI_CQE_V2, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* @MLXSW_CMD_MBOX_SW2HW_CQ_CQE_VER_2, align 4
  %57 = call i32 @mlxsw_cmd_mbox_sw2hw_cq_cqe_ver_set(i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %46
  br label %59

59:                                               ; preds = %58, %42
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* @MLXSW_PCI_EQ_COMP_NUM, align 4
  %62 = call i32 @mlxsw_cmd_mbox_sw2hw_cq_c_eqn_set(i8* %60, i32 %61)
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @mlxsw_cmd_mbox_sw2hw_cq_st_set(i8* %63, i32 0)
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %67 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ilog2(i32 %68)
  %70 = call i32 @mlxsw_cmd_mbox_sw2hw_cq_log_cq_size_set(i8* %65, i32 %69)
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %83, %59
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @MLXSW_PCI_AQ_PAGES, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @__mlxsw_pci_queue_page_get(%struct.mlxsw_pci_queue* %76, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @mlxsw_cmd_mbox_sw2hw_cq_pa_set(i8* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %71

86:                                               ; preds = %71
  %87 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %88 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %6, align 8
  %91 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %92 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @mlxsw_cmd_sw2hw_cq(i32 %89, i8* %90, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %86
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %4, align 4
  br label %106

99:                                               ; preds = %86
  %100 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %101 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %102 = call i32 @mlxsw_pci_queue_doorbell_consumer_ring(%struct.mlxsw_pci* %100, %struct.mlxsw_pci_queue* %101)
  %103 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %104 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %105 = call i32 @mlxsw_pci_queue_doorbell_arm_consumer_ring(%struct.mlxsw_pci* %103, %struct.mlxsw_pci_queue* %104)
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %99, %97
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i8* @mlxsw_pci_queue_elem_get(%struct.mlxsw_pci_queue*, i32) #1

declare dso_local i32 @mlxsw_pci_cqe_owner_set(i64, i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_sw2hw_cq_cqe_ver_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_sw2hw_cq_c_eqn_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_sw2hw_cq_st_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_sw2hw_cq_log_cq_size_set(i8*, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @__mlxsw_pci_queue_page_get(%struct.mlxsw_pci_queue*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_sw2hw_cq_pa_set(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_cmd_sw2hw_cq(i32, i8*, i32) #1

declare dso_local i32 @mlxsw_pci_queue_doorbell_consumer_ring(%struct.mlxsw_pci*, %struct.mlxsw_pci_queue*) #1

declare dso_local i32 @mlxsw_pci_queue_doorbell_arm_consumer_ring(%struct.mlxsw_pci*, %struct.mlxsw_pci_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
