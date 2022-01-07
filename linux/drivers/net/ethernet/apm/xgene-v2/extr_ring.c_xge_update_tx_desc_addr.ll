; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_ring.c_xge_update_tx_desc_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_ring.c_xge_update_tx_desc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xge_pdata = type { %struct.xge_desc_ring* }
%struct.xge_desc_ring = type { i64, i64, i32 }

@DMATXDESCL = common dso_local global i32 0, align 4
@DMATXDESCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xge_update_tx_desc_addr(%struct.xge_pdata* %0) #0 {
  %2 = alloca %struct.xge_pdata*, align 8
  %3 = alloca %struct.xge_desc_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.xge_pdata* %0, %struct.xge_pdata** %2, align 8
  %5 = load %struct.xge_pdata*, %struct.xge_pdata** %2, align 8
  %6 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %5, i32 0, i32 0
  %7 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %6, align 8
  store %struct.xge_desc_ring* %7, %struct.xge_desc_ring** %3, align 8
  %8 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %3, align 8
  %9 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.xge_pdata*, %struct.xge_pdata** %2, align 8
  %12 = load i32, i32* @DMATXDESCL, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @xge_wr_csr(%struct.xge_pdata* %11, i32 %12, i32 %13)
  %15 = load %struct.xge_pdata*, %struct.xge_pdata** %2, align 8
  %16 = load i32, i32* @DMATXDESCH, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @upper_32_bits(i32 %17)
  %19 = call i32 @xge_wr_csr(%struct.xge_pdata* %15, i32 %16, i32 %18)
  %20 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %3, align 8
  %21 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %3, align 8
  %23 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  ret void
}

declare dso_local i32 @xge_wr_csr(%struct.xge_pdata*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
