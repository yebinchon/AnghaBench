; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_pcie_qstats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_pcie_qstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32 }
%struct.hwrm_pcie_qstats_input = type { i32, i32, i32 }

@BNXT_FLAG_PCIE_STATS = common dso_local global i32 0, align 4
@HWRM_PCIE_QSTATS = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_hwrm_pcie_qstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_pcie_qstats(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.hwrm_pcie_qstats_input, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %5 = bitcast %struct.hwrm_pcie_qstats_input* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 12, i1 false)
  %6 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %7 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @BNXT_FLAG_PCIE_STATS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %15 = load i32, i32* @HWRM_PCIE_QSTATS, align 4
  %16 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %14, %struct.hwrm_pcie_qstats_input* %4, i32 %15, i32 -1, i32 -1)
  %17 = call i32 @cpu_to_le16(i32 4)
  %18 = getelementptr inbounds %struct.hwrm_pcie_qstats_input, %struct.hwrm_pcie_qstats_input* %4, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %20 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cpu_to_le64(i32 %21)
  %23 = getelementptr inbounds %struct.hwrm_pcie_qstats_input, %struct.hwrm_pcie_qstats_input* %4, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %25 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %26 = call i32 @hwrm_send_message(%struct.bnxt* %24, %struct.hwrm_pcie_qstats_input* %4, i32 12, i32 %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %13, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_pcie_qstats_input*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @cpu_to_le64(i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_pcie_qstats_input*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
