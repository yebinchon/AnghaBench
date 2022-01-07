; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_rxq_parse_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_rxq_parse_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%union.core_rx_cqe_union = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.qed_ll2_comp_rx_data = type { %struct.TYPE_11__, i8*, i8*, i8*, %struct.TYPE_9__, i8*, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %union.core_rx_cqe_union*, %struct.qed_ll2_comp_rx_data*)* @qed_ll2_rxq_parse_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_ll2_rxq_parse_reg(%struct.qed_hwfn* %0, %union.core_rx_cqe_union* %1, %struct.qed_ll2_comp_rx_data* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %union.core_rx_cqe_union*, align 8
  %6 = alloca %struct.qed_ll2_comp_rx_data*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %union.core_rx_cqe_union* %1, %union.core_rx_cqe_union** %5, align 8
  store %struct.qed_ll2_comp_rx_data* %2, %struct.qed_ll2_comp_rx_data** %6, align 8
  %7 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %5, align 8
  %8 = bitcast %union.core_rx_cqe_union* %7 to %struct.TYPE_12__*
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @le16_to_cpu(i32 %11)
  %13 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %6, align 8
  %14 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %13, i32 0, i32 6
  store i8* %12, i8** %14, align 8
  %15 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %5, align 8
  %16 = bitcast %union.core_rx_cqe_union* %15 to %struct.TYPE_12__*
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @le16_to_cpu(i32 %19)
  %21 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %6, align 8
  %22 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %5, align 8
  %24 = bitcast %union.core_rx_cqe_union* %23 to %struct.TYPE_12__*
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @le16_to_cpu(i32 %26)
  %28 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %6, align 8
  %29 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %5, align 8
  %32 = bitcast %union.core_rx_cqe_union* %31 to %struct.TYPE_12__*
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @le16_to_cpu(i32 %34)
  %36 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %6, align 8
  %37 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %5, align 8
  %39 = bitcast %union.core_rx_cqe_union* %38 to %struct.TYPE_12__*
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @le32_to_cpu(i32 %44)
  %46 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %6, align 8
  %47 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %5, align 8
  %49 = bitcast %union.core_rx_cqe_union* %48 to %struct.TYPE_12__*
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @le32_to_cpu(i32 %54)
  %56 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %6, align 8
  %57 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %5, align 8
  %59 = bitcast %union.core_rx_cqe_union* %58 to %struct.TYPE_12__*
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %6, align 8
  %63 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  ret void
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
