; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_ofldtxq_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_ofldtxq_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_uld_txq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fw_wr_hdr = type { i32 }

@FW_WR_EQUEQ_F = common dso_local global i32 0, align 4
@FW_WR_EQUIQ_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_uld_txq*, %struct.fw_wr_hdr*)* @ofldtxq_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ofldtxq_stop(%struct.sge_uld_txq* %0, %struct.fw_wr_hdr* %1) #0 {
  %3 = alloca %struct.sge_uld_txq*, align 8
  %4 = alloca %struct.fw_wr_hdr*, align 8
  store %struct.sge_uld_txq* %0, %struct.sge_uld_txq** %3, align 8
  store %struct.fw_wr_hdr* %1, %struct.fw_wr_hdr** %4, align 8
  %5 = load i32, i32* @FW_WR_EQUEQ_F, align 4
  %6 = load i32, i32* @FW_WR_EQUIQ_F, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @htonl(i32 %7)
  %9 = load %struct.fw_wr_hdr*, %struct.fw_wr_hdr** %4, align 8
  %10 = getelementptr inbounds %struct.fw_wr_hdr, %struct.fw_wr_hdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %3, align 8
  %14 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %3, align 8
  %19 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  ret void
}

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
