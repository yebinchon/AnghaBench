; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_rdq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_rdq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { i32 }
%struct.mlxsw_pci_queue = type { i32, i64, i64, i64 }
%struct.mlxsw_pci_queue_elem_info = type { i32 }

@MLXSW_PCI_AQ_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_pci*, i8*, %struct.mlxsw_pci_queue*)* @mlxsw_pci_rdq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_pci_rdq_init(%struct.mlxsw_pci* %0, i8* %1, %struct.mlxsw_pci_queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_pci*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_pci_queue*, align 8
  %8 = alloca %struct.mlxsw_pci_queue_elem_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mlxsw_pci_queue* %2, %struct.mlxsw_pci_queue** %7, align 8
  %13 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %14 = call i64 @mlxsw_pci_sdq_count(%struct.mlxsw_pci* %13)
  store i64 %14, i64* %9, align 8
  %15 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %16 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %18 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %22 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = call i32 @mlxsw_cmd_mbox_sw2hw_dq_cq_set(i8* %19, i64 %24)
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @mlxsw_cmd_mbox_sw2hw_dq_log2_dq_sz_set(i8* %26, i32 3)
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %40, %3
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @MLXSW_PCI_AQ_PAGES, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @__mlxsw_pci_queue_page_get(%struct.mlxsw_pci_queue* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @mlxsw_cmd_mbox_sw2hw_dq_pa_set(i8* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %28

43:                                               ; preds = %28
  %44 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %45 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %49 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @mlxsw_cmd_sw2hw_rdq(i32 %46, i8* %47, i64 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %117

56:                                               ; preds = %43
  %57 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %58 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %59 = call i32 @mlxsw_pci_queue_doorbell_producer_ring(%struct.mlxsw_pci* %57, %struct.mlxsw_pci_queue* %58)
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %88, %56
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %63 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %60
  %67 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %68 = call %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_producer_get(%struct.mlxsw_pci_queue* %67)
  store %struct.mlxsw_pci_queue_elem_info* %68, %struct.mlxsw_pci_queue_elem_info** %8, align 8
  %69 = load %struct.mlxsw_pci_queue_elem_info*, %struct.mlxsw_pci_queue_elem_info** %8, align 8
  %70 = icmp ne %struct.mlxsw_pci_queue_elem_info* %69, null
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @BUG_ON(i32 %72)
  %74 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %75 = load %struct.mlxsw_pci_queue_elem_info*, %struct.mlxsw_pci_queue_elem_info** %8, align 8
  %76 = call i32 @mlxsw_pci_rdq_skb_alloc(%struct.mlxsw_pci* %74, %struct.mlxsw_pci_queue_elem_info* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %92

80:                                               ; preds = %66
  %81 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %82 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %86 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %87 = call i32 @mlxsw_pci_queue_doorbell_producer_ring(%struct.mlxsw_pci* %85, %struct.mlxsw_pci_queue* %86)
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %60

91:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %117

92:                                               ; preds = %79
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %105, %92
  %96 = load i32, i32* %10, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_get(%struct.mlxsw_pci_queue* %99, i32 %100)
  store %struct.mlxsw_pci_queue_elem_info* %101, %struct.mlxsw_pci_queue_elem_info** %8, align 8
  %102 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %103 = load %struct.mlxsw_pci_queue_elem_info*, %struct.mlxsw_pci_queue_elem_info** %8, align 8
  %104 = call i32 @mlxsw_pci_rdq_skb_free(%struct.mlxsw_pci* %102, %struct.mlxsw_pci_queue_elem_info* %103)
  br label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %10, align 4
  br label %95

108:                                              ; preds = %95
  %109 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %110 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %113 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @mlxsw_cmd_hw2sw_rdq(i32 %111, i64 %114)
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %108, %91, %54
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i64 @mlxsw_pci_sdq_count(%struct.mlxsw_pci*) #1

declare dso_local i32 @mlxsw_cmd_mbox_sw2hw_dq_cq_set(i8*, i64) #1

declare dso_local i32 @mlxsw_cmd_mbox_sw2hw_dq_log2_dq_sz_set(i8*, i32) #1

declare dso_local i32 @__mlxsw_pci_queue_page_get(%struct.mlxsw_pci_queue*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_sw2hw_dq_pa_set(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_cmd_sw2hw_rdq(i32, i8*, i64) #1

declare dso_local i32 @mlxsw_pci_queue_doorbell_producer_ring(%struct.mlxsw_pci*, %struct.mlxsw_pci_queue*) #1

declare dso_local %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_producer_get(%struct.mlxsw_pci_queue*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlxsw_pci_rdq_skb_alloc(%struct.mlxsw_pci*, %struct.mlxsw_pci_queue_elem_info*) #1

declare dso_local %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_get(%struct.mlxsw_pci_queue*, i32) #1

declare dso_local i32 @mlxsw_pci_rdq_skb_free(%struct.mlxsw_pci*, %struct.mlxsw_pci_queue_elem_info*) #1

declare dso_local i32 @mlxsw_cmd_hw2sw_rdq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
