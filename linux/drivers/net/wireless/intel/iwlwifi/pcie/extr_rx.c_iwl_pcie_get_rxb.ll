; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_get_rxb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_get_rxb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_rx_mem_buffer = type { i32, i64 }
%struct.iwl_trans = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.iwl_rxq = type { i32*, %struct.TYPE_4__*, %struct.iwl_rx_mem_buffer** }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_trans_pcie = type { %struct.iwl_rx_mem_buffer** }

@IWL_DEVICE_FAMILY_22560 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Got virtual RB ID %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid rxb from HW %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_rx_mem_buffer* (%struct.iwl_trans*, %struct.iwl_rxq*, i32)* @iwl_pcie_get_rxb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_rx_mem_buffer* @iwl_pcie_get_rxb(%struct.iwl_trans* %0, %struct.iwl_rxq* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_rx_mem_buffer*, align 8
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca %struct.iwl_rxq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_trans_pcie*, align 8
  %9 = alloca %struct.iwl_rx_mem_buffer*, align 8
  %10 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store %struct.iwl_rxq* %1, %struct.iwl_rxq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %12 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %11)
  store %struct.iwl_trans_pcie* %12, %struct.iwl_trans_pcie** %8, align 8
  %13 = call i32 @BUILD_BUG_ON(i32 1)
  %14 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %15 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %3
  %21 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %22 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %21, i32 0, i32 2
  %23 = load %struct.iwl_rx_mem_buffer**, %struct.iwl_rx_mem_buffer*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %23, i64 %25
  %27 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %26, align 8
  store %struct.iwl_rx_mem_buffer* %27, %struct.iwl_rx_mem_buffer** %9, align 8
  %28 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %29 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %28, i32 0, i32 2
  %30 = load %struct.iwl_rx_mem_buffer**, %struct.iwl_rx_mem_buffer*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %30, i64 %32
  store %struct.iwl_rx_mem_buffer* null, %struct.iwl_rx_mem_buffer** %33, align 8
  %34 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %9, align 8
  store %struct.iwl_rx_mem_buffer* %34, %struct.iwl_rx_mem_buffer** %4, align 8
  br label %104

35:                                               ; preds = %3
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %37 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IWL_DEVICE_FAMILY_22560, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %35
  %44 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %45 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = and i32 %52, 4095
  store i32 %53, i32* %10, align 4
  br label %64

54:                                               ; preds = %35
  %55 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %56 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32_to_cpu(i32 %61)
  %63 = and i32 %62, 4095
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %54, %43
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %70 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %69, i32 0, i32 0
  %71 = load %struct.iwl_rx_mem_buffer**, %struct.iwl_rx_mem_buffer*** %70, align 8
  %72 = call i32 @ARRAY_SIZE(%struct.iwl_rx_mem_buffer** %71)
  %73 = icmp sgt i32 %68, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %67, %64
  br label %99

75:                                               ; preds = %67
  %76 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %77 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %76, i32 0, i32 0
  %78 = load %struct.iwl_rx_mem_buffer**, %struct.iwl_rx_mem_buffer*** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %78, i64 %81
  %83 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %82, align 8
  store %struct.iwl_rx_mem_buffer* %83, %struct.iwl_rx_mem_buffer** %9, align 8
  %84 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %9, align 8
  %85 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %99

89:                                               ; preds = %75
  %90 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %91 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %9, align 8
  %92 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @IWL_DEBUG_RX(%struct.iwl_trans* %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %9, align 8
  %97 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %9, align 8
  store %struct.iwl_rx_mem_buffer* %98, %struct.iwl_rx_mem_buffer** %4, align 8
  br label %104

99:                                               ; preds = %88, %74
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %103 = call i32 @iwl_force_nmi(%struct.iwl_trans* %102)
  store %struct.iwl_rx_mem_buffer* null, %struct.iwl_rx_mem_buffer** %4, align 8
  br label %104

104:                                              ; preds = %99, %89, %20
  %105 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %4, align 8
  ret %struct.iwl_rx_mem_buffer* %105
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.iwl_rx_mem_buffer**) #1

declare dso_local i32 @IWL_DEBUG_RX(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @iwl_force_nmi(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
