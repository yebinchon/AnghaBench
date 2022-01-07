; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_tx_ctxtdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_tx_ctxtdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_ring = type { i64, i64, %struct.igbvf_buffer* }
%struct.igbvf_buffer = type { i64, i32 }
%struct.e1000_adv_tx_context_desc = type { i8*, i8*, i64, i8* }

@E1000_TXD_CMD_DEXT = common dso_local global i32 0, align 4
@E1000_ADVTXD_DTYP_CTXT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igbvf_ring*, i32, i32, i32)* @igbvf_tx_ctxtdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igbvf_tx_ctxtdesc(%struct.igbvf_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.igbvf_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.e1000_adv_tx_context_desc*, align 8
  %10 = alloca %struct.igbvf_buffer*, align 8
  %11 = alloca i64, align 8
  store %struct.igbvf_ring* %0, %struct.igbvf_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %13 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %11, align 8
  %15 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %16 = load i64, i64* %11, align 8
  %17 = call %struct.e1000_adv_tx_context_desc* @IGBVF_TX_CTXTDESC_ADV(%struct.igbvf_ring* byval(%struct.igbvf_ring) align 8 %15, i64 %16)
  store %struct.e1000_adv_tx_context_desc* %17, %struct.e1000_adv_tx_context_desc** %9, align 8
  %18 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %19 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %18, i32 0, i32 2
  %20 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %19, align 8
  %21 = load i64, i64* %11, align 8
  %22 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %20, i64 %21
  store %struct.igbvf_buffer* %22, %struct.igbvf_buffer** %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %27 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i64, i64* %11, align 8
  br label %33

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i64 [ %31, %30 ], [ 0, %32 ]
  %35 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %36 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @E1000_TXD_CMD_DEXT, align 4
  %38 = load i32, i32* @E1000_ADVTXD_DTYP_CTXT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.e1000_adv_tx_context_desc*, %struct.e1000_adv_tx_context_desc** %9, align 8
  %45 = getelementptr inbounds %struct.e1000_adv_tx_context_desc, %struct.e1000_adv_tx_context_desc* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.e1000_adv_tx_context_desc*, %struct.e1000_adv_tx_context_desc** %9, align 8
  %47 = getelementptr inbounds %struct.e1000_adv_tx_context_desc, %struct.e1000_adv_tx_context_desc* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.e1000_adv_tx_context_desc*, %struct.e1000_adv_tx_context_desc** %9, align 8
  %51 = getelementptr inbounds %struct.e1000_adv_tx_context_desc, %struct.e1000_adv_tx_context_desc* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = load %struct.e1000_adv_tx_context_desc*, %struct.e1000_adv_tx_context_desc** %9, align 8
  %55 = getelementptr inbounds %struct.e1000_adv_tx_context_desc, %struct.e1000_adv_tx_context_desc* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @jiffies, align 4
  %57 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %10, align 8
  %58 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %10, align 8
  %60 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  ret void
}

declare dso_local %struct.e1000_adv_tx_context_desc* @IGBVF_TX_CTXTDESC_ADV(%struct.igbvf_ring* byval(%struct.igbvf_ring) align 8, i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
