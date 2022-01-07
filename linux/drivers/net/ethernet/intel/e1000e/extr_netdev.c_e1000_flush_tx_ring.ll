; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_flush_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_flush_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.e1000_ring*, %struct.e1000_hw }
%struct.e1000_ring = type { i32, i32, i32 }
%struct.e1000_hw = type { i32 }
%struct.e1000_tx_desc = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@E1000_TXD_CMD_IFCS = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_flush_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_flush_tx_ring(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_ring*, align 8
  %5 = alloca %struct.e1000_tx_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca { i64, i32 }, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %11, i32 0, i32 1
  store %struct.e1000_hw* %12, %struct.e1000_hw** %3, align 8
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %13, i32 0, i32 0
  %15 = load %struct.e1000_ring*, %struct.e1000_ring** %14, align 8
  store %struct.e1000_ring* %15, %struct.e1000_ring** %4, align 8
  store %struct.e1000_tx_desc* null, %struct.e1000_tx_desc** %5, align 8
  %16 = load i32, i32* @E1000_TXD_CMD_IFCS, align 4
  store i32 %16, i32* %8, align 4
  store i32 512, i32* %9, align 4
  %17 = load i32, i32* @TCTL, align 4
  %18 = call i32 @er32(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @TCTL, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @E1000_TCTL_EN, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @ew32(i32 %19, i32 %22)
  %24 = call i32 @TDT(i32 0)
  %25 = call i32 @er32(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %34 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %35 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = bitcast { i64, i32 }* %10 to i8*
  %38 = bitcast %struct.e1000_ring* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 12, i1 false)
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %40 = load i64, i64* %39, align 4
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.e1000_tx_desc* @E1000_TX_DESC(i64 %40, i32 %42, i32 %36)
  store %struct.e1000_tx_desc* %43, %struct.e1000_tx_desc** %5, align 8
  %44 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %45 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %5, align 8
  %48 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @cpu_to_le32(i32 %51)
  %53 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %5, align 8
  %54 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %5, align 8
  %57 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = call i32 (...) @wmb()
  %60 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %61 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %65 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %68 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %1
  %72 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %73 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %72, i32 0, i32 0
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %1
  %75 = call i32 @TDT(i32 0)
  %76 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %77 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ew32(i32 %75, i32 %78)
  %80 = call i32 @usleep_range(i32 200, i32 250)
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @TDT(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.e1000_tx_desc* @E1000_TX_DESC(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
