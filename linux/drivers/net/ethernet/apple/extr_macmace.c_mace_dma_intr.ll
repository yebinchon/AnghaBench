; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_macmace.c_mace_dma_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_macmace.c_mace_dma_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mace_data = type { i32, i32, i32, i32, i64 }
%struct.mace_frame = type { i32 }

@PSC_MYSTERY = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@PSC_ENETRD_CTL = common dso_local global i32 0, align 4
@PSC_ENETRD_CMD = common dso_local global i64 0, align 8
@PSC_ENETRD_LEN = common dso_local global i64 0, align 8
@N_RX_RING = common dso_local global i32 0, align 4
@MACE_BUFF_SIZE = common dso_local global i32 0, align 4
@PSC_ENETWR_CTL = common dso_local global i32 0, align 4
@PSC_ENETWR_CMD = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mace_dma_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mace_dma_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mace_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.net_device*
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.mace_data* @netdev_priv(%struct.net_device* %14)
  store %struct.mace_data* %15, %struct.mace_data** %7, align 8
  br label %16

16:                                               ; preds = %22, %2
  %17 = load i64, i64* @PSC_MYSTERY, align 8
  %18 = call i32 @psc_read_long(i64 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i64, i64* @PSC_MYSTERY, align 8
  %20 = call i32 @psc_read_long(i64 %19)
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %16

23:                                               ; preds = %16
  %24 = load i32, i32* %11, align 4
  %25 = and i32 %24, 1610612736
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %139

29:                                               ; preds = %23
  %30 = load i32, i32* @PSC_ENETRD_CTL, align 4
  %31 = call i32 @psc_read_word(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, 8192
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = call i32 @mace_rxdma_reset(%struct.net_device* %36)
  br label %107

38:                                               ; preds = %29
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 256
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %106

42:                                               ; preds = %38
  %43 = load i64, i64* @PSC_ENETRD_CMD, align 8
  %44 = load %struct.mace_data*, %struct.mace_data** %7, align 8
  %45 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %43, %47
  %49 = call i32 @psc_write_word(i64 %48, i32 4352)
  %50 = load i64, i64* @PSC_ENETRD_LEN, align 8
  %51 = load %struct.mace_data*, %struct.mace_data** %7, align 8
  %52 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %50, %54
  %56 = call i32 @psc_read_long(i64 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @N_RX_RING, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %66, %42
  %61 = load %struct.mace_data*, %struct.mace_data** %7, align 8
  %62 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %60
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = load %struct.mace_data*, %struct.mace_data** %7, align 8
  %69 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.mace_data*, %struct.mace_data** %7, align 8
  %72 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MACE_BUFF_SIZE, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %70, %76
  %78 = inttoptr i64 %77 to %struct.mace_frame*
  %79 = call i32 @mace_dma_rx_frame(%struct.net_device* %67, %struct.mace_frame* %78)
  %80 = load %struct.mace_data*, %struct.mace_data** %7, align 8
  %81 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %60

84:                                               ; preds = %60
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %84
  %88 = load %struct.net_device*, %struct.net_device** %6, align 8
  %89 = load %struct.mace_data*, %struct.mace_data** %7, align 8
  %90 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @mace_load_rxdma_base(%struct.net_device* %88, i32 %91)
  %93 = load %struct.mace_data*, %struct.mace_data** %7, align 8
  %94 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = xor i32 %95, 16
  store i32 %96, i32* %94, align 8
  br label %105

97:                                               ; preds = %84
  %98 = load i64, i64* @PSC_ENETRD_CMD, align 8
  %99 = load %struct.mace_data*, %struct.mace_data** %7, align 8
  %100 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %98, %102
  %104 = call i32 @psc_write_word(i64 %103, i32 38912)
  br label %105

105:                                              ; preds = %97, %87
  br label %106

106:                                              ; preds = %105, %38
  br label %107

107:                                              ; preds = %106, %35
  %108 = load i32, i32* @PSC_ENETWR_CTL, align 4
  %109 = call i32 @psc_read_word(i32 %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = and i32 %110, 8192
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load %struct.net_device*, %struct.net_device** %6, align 8
  %115 = call i32 @mace_txdma_reset(%struct.net_device* %114)
  br label %137

116:                                              ; preds = %107
  %117 = load i32, i32* %10, align 4
  %118 = and i32 %117, 256
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %116
  %121 = load i64, i64* @PSC_ENETWR_CMD, align 8
  %122 = load %struct.mace_data*, %struct.mace_data** %7, align 8
  %123 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %121, %125
  %127 = call i32 @psc_write_word(i64 %126, i32 256)
  %128 = load %struct.mace_data*, %struct.mace_data** %7, align 8
  %129 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = xor i32 %130, 16
  store i32 %131, i32* %129, align 8
  %132 = load %struct.mace_data*, %struct.mace_data** %7, align 8
  %133 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %120, %116
  br label %137

137:                                              ; preds = %136, %113
  %138 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %137, %27
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.mace_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @psc_read_long(i64) #1

declare dso_local i32 @psc_read_word(i32) #1

declare dso_local i32 @mace_rxdma_reset(%struct.net_device*) #1

declare dso_local i32 @psc_write_word(i64, i32) #1

declare dso_local i32 @mace_dma_rx_frame(%struct.net_device*, %struct.mace_frame*) #1

declare dso_local i32 @mace_load_rxdma_base(%struct.net_device*, i32) #1

declare dso_local i32 @mace_txdma_reset(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
