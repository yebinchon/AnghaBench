; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_configure_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_configure_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32*, %struct.fm10k_hw }
%struct.fm10k_hw = type { i32 }
%struct.fm10k_ring = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i64, i64, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@FM10K_INT_MAP_DISABLE = common dso_local global i32 0, align 4
@FM10K_TXDCTL_MAX_TIME_SHIFT = common dso_local global i32 0, align 4
@FM10K_TXDCTL_ENABLE = common dso_local global i32 0, align 4
@NON_Q_VECTORS = common dso_local global i32 0, align 4
@FM10K_INT_MAP_TIMER0 = common dso_local global i32 0, align 4
@FM10K_PFVTCTL_FTAG_DESC_ENABLE = common dso_local global i32 0, align 4
@__FM10K_TX_XPS_INIT_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_intfc*, %struct.fm10k_ring*)* @fm10k_configure_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_configure_tx_ring(%struct.fm10k_intfc* %0, %struct.fm10k_ring* %1) #0 {
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca %struct.fm10k_ring*, align 8
  %5 = alloca %struct.fm10k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  store %struct.fm10k_ring* %1, %struct.fm10k_ring** %4, align 8
  %11 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %12 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %11, i32 0, i32 1
  store %struct.fm10k_hw* %12, %struct.fm10k_hw** %5, align 8
  %13 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %14 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %17 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @FM10K_INT_MAP_DISABLE, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @FM10K_TXDCTL_MAX_TIME_SHIFT, align 4
  %24 = call i32 @BIT(i32 %23)
  %25 = load i32, i32* @FM10K_TXDCTL_ENABLE, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %28 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @FM10K_TXDCTL(i32 %31)
  %33 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %30, i64 %32, i32 0)
  %34 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %35 = call i32 @fm10k_write_flush(%struct.fm10k_hw* %34)
  %36 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @FM10K_TDBAL(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @DMA_BIT_MASK(i32 32)
  %41 = and i32 %39, %40
  %42 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %36, i64 %38, i32 %41)
  %43 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @FM10K_TDBAH(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = ashr i32 %46, 32
  %48 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %43, i64 %45, i32 %47)
  %49 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @FM10K_TDLEN(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %49, i64 %51, i32 %52)
  %54 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i64 @FM10K_TDH(i32 %55)
  %57 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %54, i64 %56, i32 0)
  %58 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @FM10K_TDT(i32 %59)
  %61 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %58, i64 %60, i32 0)
  %62 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %63 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @FM10K_TDT(i32 %65)
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %69 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %68, i32 0, i32 8
  store i32* %67, i32** %69, align 8
  %70 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %71 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %70, i32 0, i32 7
  store i64 0, i64* %71, align 8
  %72 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %73 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %72, i32 0, i32 6
  store i64 0, i64* %73, align 8
  %74 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %75 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = icmp ne %struct.TYPE_2__* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %2
  %79 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %80 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @NON_Q_VECTORS, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* @FM10K_INT_MAP_TIMER0, align 4
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %78, %2
  %90 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i64 @FM10K_TXINT(i32 %91)
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %90, i64 %92, i32 %93)
  %95 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i64 @FM10K_PFVTCTL(i32 %96)
  %98 = load i32, i32* @FM10K_PFVTCTL_FTAG_DESC_ENABLE, align 4
  %99 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %95, i64 %97, i32 %98)
  %100 = load i32, i32* @__FM10K_TX_XPS_INIT_DONE, align 4
  %101 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %102 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @test_and_set_bit(i32 %100, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %123, label %106

106:                                              ; preds = %89
  %107 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %108 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %107, i32 0, i32 3
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = icmp ne %struct.TYPE_2__* %109, null
  br i1 %110, label %111, label %123

111:                                              ; preds = %106
  %112 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %113 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %116 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %115, i32 0, i32 3
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %120 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @netif_set_xps_queue(i32 %114, i32* %118, i32 %121)
  br label %123

123:                                              ; preds = %111, %106, %89
  %124 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i64 @FM10K_TXDCTL(i32 %125)
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %124, i64 %126, i32 %127)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i64, i32) #1

declare dso_local i64 @FM10K_TXDCTL(i32) #1

declare dso_local i32 @fm10k_write_flush(%struct.fm10k_hw*) #1

declare dso_local i64 @FM10K_TDBAL(i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @FM10K_TDBAH(i32) #1

declare dso_local i64 @FM10K_TDLEN(i32) #1

declare dso_local i64 @FM10K_TDH(i32) #1

declare dso_local i64 @FM10K_TDT(i32) #1

declare dso_local i64 @FM10K_TXINT(i32) #1

declare dso_local i64 @FM10K_PFVTCTL(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @netif_set_xps_queue(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
