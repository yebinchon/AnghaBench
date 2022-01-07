; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_configure_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_configure_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, i32, i32, i32*, %struct.fm10k_hw }
%struct.fm10k_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fm10k_ring = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32, i64, i64, i64, i32* }
%struct.TYPE_4__ = type { i32 }

@FM10K_RXDCTL_WRITE_BACK_MIN_DELAY = common dso_local global i32 0, align 4
@FM10K_SRRCTL_BUFFER_CHAINING_EN = common dso_local global i32 0, align 4
@FM10K_INT_MAP_DISABLE = common dso_local global i32 0, align 4
@FM10K_RXQCTL_ENABLE = common dso_local global i32 0, align 4
@FM10K_RX_BUFSZ = common dso_local global i32 0, align 4
@FM10K_SRRCTL_BSIZEPKT_SHIFT = common dso_local global i32 0, align 4
@FM10K_SRRCTL_LOOPBACK_SUPPRESS = common dso_local global i32 0, align 4
@FM10K_RXDCTL_DROP_ON_EMPTY = common dso_local global i32 0, align 4
@FM10K_VLAN_CLEAR = common dso_local global i32 0, align 4
@NON_Q_VECTORS = common dso_local global i32 0, align 4
@FM10K_INT_MAP_TIMER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_intfc*, %struct.fm10k_ring*)* @fm10k_configure_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_configure_rx_ring(%struct.fm10k_intfc* %0, %struct.fm10k_ring* %1) #0 {
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca %struct.fm10k_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fm10k_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  store %struct.fm10k_ring* %1, %struct.fm10k_ring** %4, align 8
  %14 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %15 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %18 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %17, i32 0, i32 4
  store %struct.fm10k_hw* %18, %struct.fm10k_hw** %6, align 8
  %19 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %20 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @FM10K_RXDCTL_WRITE_BACK_MIN_DELAY, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @FM10K_SRRCTL_BUFFER_CHAINING_EN, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @FM10K_INT_MAP_DISABLE, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %29 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %12, align 4
  %31 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %32 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %13, align 4
  %34 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i64 @FM10K_RXQCTL(i32 %35)
  %37 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %34, i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @FM10K_RXQCTL_ENABLE, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i64 @FM10K_RXQCTL(i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %42, i64 %44, i32 %45)
  %47 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %48 = call i32 @fm10k_write_flush(%struct.fm10k_hw* %47)
  %49 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i64 @FM10K_RDBAL(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @DMA_BIT_MASK(i32 32)
  %54 = and i32 %52, %53
  %55 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %49, i64 %51, i32 %54)
  %56 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i64 @FM10K_RDBAH(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = ashr i32 %59, 32
  %61 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %56, i64 %58, i32 %60)
  %62 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i64 @FM10K_RDLEN(i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %62, i64 %64, i32 %65)
  %67 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i64 @FM10K_RDH(i32 %68)
  %70 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %67, i64 %69, i32 0)
  %71 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i64 @FM10K_RDT(i32 %72)
  %74 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %71, i64 %73, i32 0)
  %75 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %76 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i64 @FM10K_RDT(i32 %78)
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %82 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %81, i32 0, i32 9
  store i32* %80, i32** %82, align 8
  %83 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %84 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %83, i32 0, i32 8
  store i64 0, i64* %84, align 8
  %85 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %86 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %85, i32 0, i32 7
  store i64 0, i64* %86, align 8
  %87 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %88 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %87, i32 0, i32 6
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* @FM10K_RX_BUFSZ, align 4
  %90 = load i32, i32* @FM10K_SRRCTL_BSIZEPKT_SHIFT, align 4
  %91 = ashr i32 %89, %90
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* @FM10K_SRRCTL_LOOPBACK_SUPPRESS, align 4
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i64 @FM10K_SRRCTL(i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %97, i64 %99, i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %104 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @BIT(i32 %105)
  %107 = and i32 %102, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %2
  %110 = load i32, i32* @FM10K_RXDCTL_DROP_ON_EMPTY, align 4
  %111 = load i32, i32* %9, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %109, %2
  %114 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %115 = load i32, i32* %13, align 4
  %116 = call i64 @FM10K_RXDCTL(i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %114, i64 %116, i32 %117)
  %119 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %120 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %124 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 8
  %125 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %126 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %130 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @test_bit(i32 %128, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %113
  %135 = load i32, i32* @FM10K_VLAN_CLEAR, align 4
  %136 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %137 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %134, %113
  %141 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %142 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %141, i32 0, i32 3
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = icmp ne %struct.TYPE_4__* %143, null
  br i1 %144, label %145, label %156

145:                                              ; preds = %140
  %146 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %147 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %146, i32 0, i32 3
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @NON_Q_VECTORS, align 4
  %152 = add nsw i32 %150, %151
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* @FM10K_INT_MAP_TIMER1, align 4
  %154 = load i32, i32* %11, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %11, align 4
  br label %156

156:                                              ; preds = %145, %140
  %157 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %158 = load i32, i32* %13, align 4
  %159 = call i64 @FM10K_RXINT(i32 %158)
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %157, i64 %159, i32 %160)
  %162 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %163 = load i32, i32* %13, align 4
  %164 = call i64 @FM10K_RXQCTL(i32 %163)
  %165 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %162, i64 %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* @FM10K_RXQCTL_ENABLE, align 4
  %167 = load i32, i32* %8, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %8, align 4
  %169 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %170 = load i32, i32* %13, align 4
  %171 = call i64 @FM10K_RXQCTL(i32 %170)
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %169, i64 %171, i32 %172)
  %174 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %175 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %176 = call i32 @fm10k_desc_unused(%struct.fm10k_ring* %175)
  %177 = call i32 @fm10k_alloc_rx_buffers(%struct.fm10k_ring* %174, i32 %176)
  ret void
}

declare dso_local i32 @fm10k_read_reg(%struct.fm10k_hw*, i64) #1

declare dso_local i64 @FM10K_RXQCTL(i32) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i64, i32) #1

declare dso_local i32 @fm10k_write_flush(%struct.fm10k_hw*) #1

declare dso_local i64 @FM10K_RDBAL(i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @FM10K_RDBAH(i32) #1

declare dso_local i64 @FM10K_RDLEN(i32) #1

declare dso_local i64 @FM10K_RDH(i32) #1

declare dso_local i64 @FM10K_RDT(i32) #1

declare dso_local i64 @FM10K_SRRCTL(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @FM10K_RXDCTL(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @FM10K_RXINT(i32) #1

declare dso_local i32 @fm10k_alloc_rx_buffers(%struct.fm10k_ring*, i32) #1

declare dso_local i32 @fm10k_desc_unused(%struct.fm10k_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
