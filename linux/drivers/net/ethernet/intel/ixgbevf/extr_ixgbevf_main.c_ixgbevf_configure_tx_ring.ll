; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i64, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }
%struct.ixgbevf_ring = type { i32, i32, i32, i32, i64, i64, i64, i32 }

@IXGBE_TXDCTL_ENABLE = common dso_local global i32 0, align 4
@IXGBE_TXDCTL_SWFLSH = common dso_local global i32 0, align 4
@IXGBE_DCA_TXCTRL_DESC_RRO_EN = common dso_local global i32 0, align 4
@IXGBE_DCA_TXCTRL_DATA_RRO_EN = common dso_local global i32 0, align 4
@__IXGBEVF_HANG_CHECK_ARMED = common dso_local global i32 0, align 4
@__IXGBEVF_TX_XDP_RING_PRIMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not enable Tx Queue %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*)* @ixgbevf_configure_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_configure_tx_ring(%struct.ixgbevf_adapter* %0, %struct.ixgbevf_ring* %1) #0 {
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca %struct.ixgbevf_ring*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  store %struct.ixgbevf_ring* %1, %struct.ixgbevf_ring** %4, align 8
  %10 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %10, i32 0, i32 1
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %5, align 8
  %12 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  store i32 10, i32* %7, align 4
  %15 = load i32, i32* @IXGBE_TXDCTL_ENABLE, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %17 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @IXGBE_VFTXDCTL(i32 %20)
  %22 = load i32, i32* @IXGBE_TXDCTL_SWFLSH, align 4
  %23 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %19, i64 %21, i32 %22)
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %25 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %24)
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @IXGBE_VFTDBAL(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @DMA_BIT_MASK(i32 32)
  %31 = and i32 %29, %30
  %32 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %26, i64 %28, i32 %31)
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @IXGBE_VFTDBAH(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 32
  %38 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %33, i64 %35, i32 %37)
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @IXGBE_VFTDLEN(i32 %40)
  %42 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %43 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %39, i64 %41, i32 %47)
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @IXGBE_VFTDWBAH(i32 %50)
  %52 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %49, i64 %51, i32 0)
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @IXGBE_VFTDWBAL(i32 %54)
  %56 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %53, i64 %55, i32 0)
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @IXGBE_VFDCA_TXCTRL(i32 %58)
  %60 = load i32, i32* @IXGBE_DCA_TXCTRL_DESC_RRO_EN, align 4
  %61 = load i32, i32* @IXGBE_DCA_TXCTRL_DATA_RRO_EN, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %57, i64 %59, i32 %62)
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i64 @IXGBE_VFTDH(i32 %65)
  %67 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %64, i64 %66, i32 0)
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @IXGBE_VFTDT(i32 %69)
  %71 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %68, i64 %70, i32 0)
  %72 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i64 @IXGBE_VFTDT(i32 %75)
  %77 = add nsw i64 %74, %76
  %78 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %79 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %78, i32 0, i32 6
  store i64 %77, i64* %79, align 8
  %80 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %81 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %80, i32 0, i32 5
  store i64 0, i64* %81, align 8
  %82 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %83 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, 524288
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, 288
  store i32 %87, i32* %8, align 4
  %88 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %89 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %92 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 4, %94
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memset(i32 %90, i32 0, i32 %96)
  %98 = load i32, i32* @__IXGBEVF_HANG_CHECK_ARMED, align 4
  %99 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %100 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %99, i32 0, i32 2
  %101 = call i32 @clear_bit(i32 %98, i32* %100)
  %102 = load i32, i32* @__IXGBEVF_TX_XDP_RING_PRIMED, align 4
  %103 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %104 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %103, i32 0, i32 2
  %105 = call i32 @clear_bit(i32 %102, i32* %104)
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i64 @IXGBE_VFTXDCTL(i32 %107)
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %106, i64 %108, i32 %109)
  br label %111

111:                                              ; preds = %127, %2
  %112 = call i32 @usleep_range(i32 1000, i32 2000)
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i64 @IXGBE_VFTXDCTL(i32 %114)
  %116 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %113, i64 %115)
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %111
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @IXGBE_TXDCTL_ENABLE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  br label %127

127:                                              ; preds = %121, %117
  %128 = phi i1 [ false, %117 ], [ %126, %121 ]
  br i1 %128, label %111, label %129

129:                                              ; preds = %127
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @hw_dbg(%struct.ixgbe_hw* %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %132, %129
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i64, i32) #1

declare dso_local i64 @IXGBE_VFTXDCTL(i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i64 @IXGBE_VFTDBAL(i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @IXGBE_VFTDBAH(i32) #1

declare dso_local i64 @IXGBE_VFTDLEN(i32) #1

declare dso_local i64 @IXGBE_VFTDWBAH(i32) #1

declare dso_local i64 @IXGBE_VFTDWBAL(i32) #1

declare dso_local i64 @IXGBE_VFDCA_TXCTRL(i32) #1

declare dso_local i64 @IXGBE_VFTDH(i32) #1

declare dso_local i64 @IXGBE_VFTDT(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i64) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
