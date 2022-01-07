; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_tx_ctxtdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_tx_ctxtdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_ring = type { i64, i64, i32, i64, i32 }
%struct.igb_tx_buffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_adv_tx_context_desc = type { i8*, i8*, i8*, i8* }
%struct.timespec64 = type { i32 }

@E1000_TXD_CMD_DEXT = common dso_local global i32 0, align 4
@E1000_ADVTXD_DTYP_CTXT = common dso_local global i32 0, align 4
@IGB_RING_FLAG_TX_CTX_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_ring*, %struct.igb_tx_buffer*, i32, i32, i32)* @igb_tx_ctxtdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_tx_ctxtdesc(%struct.igb_ring* %0, %struct.igb_tx_buffer* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.igb_ring*, align 8
  %7 = alloca %struct.igb_tx_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.e1000_adv_tx_context_desc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.timespec64, align 4
  %14 = alloca %struct.timespec64, align 4
  store %struct.igb_ring* %0, %struct.igb_ring** %6, align 8
  store %struct.igb_tx_buffer* %1, %struct.igb_tx_buffer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.igb_ring*, %struct.igb_ring** %6, align 8
  %16 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %12, align 8
  %18 = load %struct.igb_ring*, %struct.igb_ring** %6, align 8
  %19 = load i64, i64* %12, align 8
  %20 = call %struct.e1000_adv_tx_context_desc* @IGB_TX_CTXTDESC(%struct.igb_ring* %18, i64 %19)
  store %struct.e1000_adv_tx_context_desc* %20, %struct.e1000_adv_tx_context_desc** %11, align 8
  %21 = load i64, i64* %12, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load %struct.igb_ring*, %struct.igb_ring** %6, align 8
  %25 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i64, i64* %12, align 8
  br label %31

30:                                               ; preds = %5
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i64 [ %29, %28 ], [ 0, %30 ]
  %33 = load %struct.igb_ring*, %struct.igb_ring** %6, align 8
  %34 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @E1000_TXD_CMD_DEXT, align 4
  %36 = load i32, i32* @E1000_ADVTXD_DTYP_CTXT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @IGB_RING_FLAG_TX_CTX_IDX, align 4
  %41 = load %struct.igb_ring*, %struct.igb_ring** %6, align 8
  %42 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %41, i32 0, i32 4
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %31
  %46 = load %struct.igb_ring*, %struct.igb_ring** %6, align 8
  %47 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %45, %31
  %53 = load i32, i32* %8, align 4
  %54 = call i8* @cpu_to_le32(i32 %53)
  %55 = load %struct.e1000_adv_tx_context_desc*, %struct.e1000_adv_tx_context_desc** %11, align 8
  %56 = getelementptr inbounds %struct.e1000_adv_tx_context_desc, %struct.e1000_adv_tx_context_desc* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = load %struct.e1000_adv_tx_context_desc*, %struct.e1000_adv_tx_context_desc** %11, align 8
  %60 = getelementptr inbounds %struct.e1000_adv_tx_context_desc, %struct.e1000_adv_tx_context_desc* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = load %struct.e1000_adv_tx_context_desc*, %struct.e1000_adv_tx_context_desc** %11, align 8
  %64 = getelementptr inbounds %struct.e1000_adv_tx_context_desc, %struct.e1000_adv_tx_context_desc* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.igb_ring*, %struct.igb_ring** %6, align 8
  %66 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %52
  %70 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %7, align 8
  %71 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ktime_to_timespec64(i32 %74)
  %76 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %14, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = bitcast %struct.timespec64* %13 to i8*
  %78 = bitcast %struct.timespec64* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 4, i1 false)
  %79 = call i32 @ktime_set(i32 0, i32 0)
  %80 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %7, align 8
  %81 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 4
  %84 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %13, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %85, 32
  %87 = call i8* @cpu_to_le32(i32 %86)
  %88 = load %struct.e1000_adv_tx_context_desc*, %struct.e1000_adv_tx_context_desc** %11, align 8
  %89 = getelementptr inbounds %struct.e1000_adv_tx_context_desc, %struct.e1000_adv_tx_context_desc* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  br label %93

90:                                               ; preds = %52
  %91 = load %struct.e1000_adv_tx_context_desc*, %struct.e1000_adv_tx_context_desc** %11, align 8
  %92 = getelementptr inbounds %struct.e1000_adv_tx_context_desc, %struct.e1000_adv_tx_context_desc* %91, i32 0, i32 0
  store i8* null, i8** %92, align 8
  br label %93

93:                                               ; preds = %90, %69
  ret void
}

declare dso_local %struct.e1000_adv_tx_context_desc* @IGB_TX_CTXTDESC(%struct.igb_ring*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ktime_to_timespec64(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ktime_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
