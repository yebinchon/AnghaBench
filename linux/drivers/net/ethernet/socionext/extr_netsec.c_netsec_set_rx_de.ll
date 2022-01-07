; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_set_rx_de.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_set_rx_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsec_priv = type { i32 }
%struct.netsec_desc_ring = type { %struct.TYPE_2__*, %struct.netsec_de* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.netsec_de = type { i32, i32, i32, i32 }
%struct.netsec_desc = type { i32, i32, i32 }

@DESC_SZ = common dso_local global i32 0, align 4
@NETSEC_RX_PKT_OWN_FIELD = common dso_local global i32 0, align 4
@NETSEC_RX_PKT_FS_FIELD = common dso_local global i32 0, align 4
@NETSEC_RX_PKT_LS_FIELD = common dso_local global i32 0, align 4
@DESC_NUM = common dso_local global i32 0, align 4
@NETSEC_RX_PKT_LD_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netsec_priv*, %struct.netsec_desc_ring*, i32, %struct.netsec_desc*)* @netsec_set_rx_de to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netsec_set_rx_de(%struct.netsec_priv* %0, %struct.netsec_desc_ring* %1, i32 %2, %struct.netsec_desc* %3) #0 {
  %5 = alloca %struct.netsec_priv*, align 8
  %6 = alloca %struct.netsec_desc_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netsec_desc*, align 8
  %9 = alloca %struct.netsec_de*, align 8
  %10 = alloca i32, align 4
  store %struct.netsec_priv* %0, %struct.netsec_priv** %5, align 8
  store %struct.netsec_desc_ring* %1, %struct.netsec_desc_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.netsec_desc* %3, %struct.netsec_desc** %8, align 8
  %11 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %6, align 8
  %12 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %11, i32 0, i32 1
  %13 = load %struct.netsec_de*, %struct.netsec_de** %12, align 8
  %14 = load i32, i32* @DESC_SZ, align 4
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.netsec_de, %struct.netsec_de* %13, i64 %17
  store %struct.netsec_de* %18, %struct.netsec_de** %9, align 8
  %19 = load i32, i32* @NETSEC_RX_PKT_OWN_FIELD, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* @NETSEC_RX_PKT_FS_FIELD, align 4
  %22 = shl i32 1, %21
  %23 = or i32 %20, %22
  %24 = load i32, i32* @NETSEC_RX_PKT_LS_FIELD, align 4
  %25 = shl i32 1, %24
  %26 = or i32 %23, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @DESC_NUM, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load i32, i32* @NETSEC_RX_PKT_LD_FIELD, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %31, %4
  %37 = load %struct.netsec_desc*, %struct.netsec_desc** %8, align 8
  %38 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @upper_32_bits(i32 %39)
  %41 = load %struct.netsec_de*, %struct.netsec_de** %9, align 8
  %42 = getelementptr inbounds %struct.netsec_de, %struct.netsec_de* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.netsec_desc*, %struct.netsec_desc** %8, align 8
  %44 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @lower_32_bits(i32 %45)
  %47 = load %struct.netsec_de*, %struct.netsec_de** %9, align 8
  %48 = getelementptr inbounds %struct.netsec_de, %struct.netsec_de* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.netsec_desc*, %struct.netsec_desc** %8, align 8
  %50 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.netsec_de*, %struct.netsec_de** %9, align 8
  %53 = getelementptr inbounds %struct.netsec_de, %struct.netsec_de* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.netsec_de*, %struct.netsec_de** %9, align 8
  %56 = getelementptr inbounds %struct.netsec_de, %struct.netsec_de* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = call i32 (...) @dma_wmb()
  %58 = load %struct.netsec_desc*, %struct.netsec_desc** %8, align 8
  %59 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %6, align 8
  %62 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i32 %60, i32* %67, align 4
  %68 = load %struct.netsec_desc*, %struct.netsec_desc** %8, align 8
  %69 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %6, align 8
  %72 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %70, i32* %77, align 4
  %78 = load %struct.netsec_desc*, %struct.netsec_desc** %8, align 8
  %79 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %6, align 8
  %82 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 %80, i32* %87, align 4
  ret void
}

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @dma_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
