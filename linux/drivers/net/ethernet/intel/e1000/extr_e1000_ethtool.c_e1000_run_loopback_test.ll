; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_run_loopback_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_run_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.pci_dev*, %struct.e1000_rx_ring, %struct.e1000_tx_ring, %struct.e1000_hw }
%struct.pci_dev = type { i32 }
%struct.e1000_rx_ring = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.e1000_tx_ring = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.e1000_hw = type { i32 }

@RDT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TDT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@E1000_RXBUFFER_2048 = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*)* @e1000_run_loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_run_loopback_test(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_tx_ring*, align 8
  %5 = alloca %struct.e1000_rx_ring*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %15, i32 0, i32 3
  store %struct.e1000_hw* %16, %struct.e1000_hw** %3, align 8
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 2
  store %struct.e1000_tx_ring* %18, %struct.e1000_tx_ring** %4, align 8
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 1
  store %struct.e1000_rx_ring* %20, %struct.e1000_rx_ring** %5, align 8
  %21 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %21, i32 0, i32 0
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %6, align 8
  store i32 0, i32* %13, align 4
  %24 = load i32, i32* @RDT, align 4
  %25 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %26 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @ew32(i32 %24, i32 %28)
  %30 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %31 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %34 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 64
  %42 = mul nsw i32 %41, 2
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %51

44:                                               ; preds = %1
  %45 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %46 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sdiv i32 %47, 64
  %49 = mul nsw i32 %48, 2
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %44, %37
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %179, %51
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %182

56:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %101, %56
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 64
  br i1 %59, label %60, label %104

60:                                               ; preds = %57
  %61 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %62 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @e1000_create_lbtest_frame(i32 %68, i32 1024)
  %70 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %73 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %81 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @DMA_TO_DEVICE, align 4
  %89 = call i32 @dma_sync_single_for_device(i32* %71, i32 %79, i32 %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  %92 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %93 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %91, %94
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %60
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %99, %60
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %57

104:                                              ; preds = %57
  %105 = load i32, i32* @TDT, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @ew32(i32 %105, i32 %106)
  %108 = call i32 (...) @E1000_WRITE_FLUSH()
  %109 = call i32 @msleep(i32 200)
  %110 = load i64, i64* @jiffies, align 8
  store i64 %110, i64* %14, align 8
  store i32 0, i32* %12, align 4
  br label %111

111:                                              ; preds = %165, %104
  %112 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 0
  %114 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %115 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %114, i32 0, i32 1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @E1000_RXBUFFER_2048, align 4
  %123 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %124 = call i32 @dma_sync_single_for_cpu(i32* %113, i32 %121, i32 %122, i32 %123)
  %125 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %126 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %125, i32 0, i32 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @NET_SKB_PAD, align 8
  %135 = add nsw i64 %133, %134
  %136 = load i64, i64* @NET_IP_ALIGN, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @e1000_check_lbtest_frame(i64 %137, i32 1024)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %111
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %144

144:                                              ; preds = %141, %111
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %10, align 4
  %147 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %148 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %146, %149
  %151 = zext i1 %150 to i32
  %152 = call i64 @unlikely(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  store i32 0, i32* %10, align 4
  br label %155

155:                                              ; preds = %154, %144
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %12, align 4
  %158 = icmp slt i32 %157, 64
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load i64, i64* %14, align 8
  %161 = add i64 %160, 20
  %162 = load i64, i64* @jiffies, align 8
  %163 = call i64 @time_after(i64 %161, i64 %162)
  %164 = icmp ne i64 %163, 0
  br label %165

165:                                              ; preds = %159, %156
  %166 = phi i1 [ false, %156 ], [ %164, %159 ]
  br i1 %166, label %111, label %167

167:                                              ; preds = %165
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 64
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store i32 13, i32* %13, align 4
  br label %182

171:                                              ; preds = %167
  %172 = load i64, i64* @jiffies, align 8
  %173 = load i64, i64* %14, align 8
  %174 = add i64 %173, 2
  %175 = call i64 @time_after_eq(i64 %172, i64 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  store i32 14, i32* %13, align 4
  br label %182

178:                                              ; preds = %171
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %8, align 4
  br label %52

182:                                              ; preds = %177, %170, %52
  %183 = load i32, i32* %13, align 4
  ret i32 %183
}

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1000_create_lbtest_frame(i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i32 @e1000_check_lbtest_frame(i64, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
