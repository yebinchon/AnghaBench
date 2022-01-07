; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_tx_cmd_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_tx_cmd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, i32, i32, i32, i32, %struct.il_tx_queue* }
%struct.il_tx_queue = type { i32, %struct.il_cmd_meta*, %struct.il_device_cmd**, %struct.TYPE_8__ }
%struct.il_cmd_meta = type { i32, i32 (%struct.il_priv*, %struct.il_device_cmd*, %struct.il_rx_pkt*)*, %struct.TYPE_6__* }
%struct.il_device_cmd = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.il_rx_pkt = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.il_rx_buf = type { i32* }

@SEQ_HUGE_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"wrong command queue %d (should be %d), sequence 0x%X readp=%d writep=%d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@mapping = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@S_HCMD_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Clearing HCMD_ACTIVE for command %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il_tx_cmd_complete(%struct.il_priv* %0, %struct.il_rx_buf* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_buf*, align 8
  %5 = alloca %struct.il_rx_pkt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.il_device_cmd*, align 8
  %12 = alloca %struct.il_cmd_meta*, align 8
  %13 = alloca %struct.il_tx_queue*, align 8
  %14 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_buf* %1, %struct.il_rx_buf** %4, align 8
  %15 = load %struct.il_rx_buf*, %struct.il_rx_buf** %4, align 8
  %16 = call %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf* %15)
  store %struct.il_rx_pkt* %16, %struct.il_rx_pkt** %5, align 8
  %17 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %18 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @SEQ_TO_QUEUE(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @SEQ_TO_IDX(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %27 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SEQ_HUGE_FRAME, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %37 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %36, i32 0, i32 5
  %38 = load %struct.il_tx_queue*, %struct.il_tx_queue** %37, align 8
  %39 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %40 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %38, i64 %41
  store %struct.il_tx_queue* %42, %struct.il_tx_queue** %13, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %46 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %52 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %57 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %56, i32 0, i32 5
  %58 = load %struct.il_tx_queue*, %struct.il_tx_queue** %57, align 8
  %59 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %60 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %58, i64 %61
  %63 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %67 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %66, i32 0, i32 5
  %68 = load %struct.il_tx_queue*, %struct.il_tx_queue** %67, align 8
  %69 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %70 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %68, i64 %71
  %73 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @WARN(i32 %49, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %54, i32 %55, i32 %65, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %2
  %79 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %80 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %81 = call i32 @il_print_hex_error(%struct.il_priv* %79, %struct.il_rx_pkt* %80, i32 32)
  br label %182

82:                                               ; preds = %2
  %83 = load %struct.il_tx_queue*, %struct.il_tx_queue** %13, align 8
  %84 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %83, i32 0, i32 3
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @il_get_cmd_idx(%struct.TYPE_8__* %84, i32 %85, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load %struct.il_tx_queue*, %struct.il_tx_queue** %13, align 8
  %89 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %88, i32 0, i32 2
  %90 = load %struct.il_device_cmd**, %struct.il_device_cmd*** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.il_device_cmd*, %struct.il_device_cmd** %90, i64 %92
  %94 = load %struct.il_device_cmd*, %struct.il_device_cmd** %93, align 8
  store %struct.il_device_cmd* %94, %struct.il_device_cmd** %11, align 8
  %95 = load %struct.il_tx_queue*, %struct.il_tx_queue** %13, align 8
  %96 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %95, i32 0, i32 1
  %97 = load %struct.il_cmd_meta*, %struct.il_cmd_meta** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.il_cmd_meta, %struct.il_cmd_meta* %97, i64 %99
  store %struct.il_cmd_meta* %100, %struct.il_cmd_meta** %12, align 8
  %101 = load i32, i32* @jiffies, align 4
  %102 = load %struct.il_tx_queue*, %struct.il_tx_queue** %13, align 8
  %103 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %105 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.il_cmd_meta*, %struct.il_cmd_meta** %12, align 8
  %108 = load i32, i32* @mapping, align 4
  %109 = call i32 @dma_unmap_addr(%struct.il_cmd_meta* %107, i32 %108)
  %110 = load %struct.il_cmd_meta*, %struct.il_cmd_meta** %12, align 8
  %111 = load i32, i32* @len, align 4
  %112 = call i32 @dma_unmap_len(%struct.il_cmd_meta* %110, i32 %111)
  %113 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %114 = call i32 @pci_unmap_single(i32 %106, i32 %109, i32 %112, i32 %113)
  %115 = load %struct.il_cmd_meta*, %struct.il_cmd_meta** %12, align 8
  %116 = getelementptr inbounds %struct.il_cmd_meta, %struct.il_cmd_meta* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @CMD_WANT_SKB, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %82
  %122 = load %struct.il_rx_buf*, %struct.il_rx_buf** %4, align 8
  %123 = call %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf* %122)
  %124 = ptrtoint %struct.il_rx_pkt* %123 to i64
  %125 = load %struct.il_cmd_meta*, %struct.il_cmd_meta** %12, align 8
  %126 = getelementptr inbounds %struct.il_cmd_meta, %struct.il_cmd_meta* %125, i32 0, i32 2
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  store i64 %124, i64* %128, align 8
  %129 = load %struct.il_rx_buf*, %struct.il_rx_buf** %4, align 8
  %130 = getelementptr inbounds %struct.il_rx_buf, %struct.il_rx_buf* %129, i32 0, i32 0
  store i32* null, i32** %130, align 8
  br label %145

131:                                              ; preds = %82
  %132 = load %struct.il_cmd_meta*, %struct.il_cmd_meta** %12, align 8
  %133 = getelementptr inbounds %struct.il_cmd_meta, %struct.il_cmd_meta* %132, i32 0, i32 1
  %134 = load i32 (%struct.il_priv*, %struct.il_device_cmd*, %struct.il_rx_pkt*)*, i32 (%struct.il_priv*, %struct.il_device_cmd*, %struct.il_rx_pkt*)** %133, align 8
  %135 = icmp ne i32 (%struct.il_priv*, %struct.il_device_cmd*, %struct.il_rx_pkt*)* %134, null
  br i1 %135, label %136, label %144

136:                                              ; preds = %131
  %137 = load %struct.il_cmd_meta*, %struct.il_cmd_meta** %12, align 8
  %138 = getelementptr inbounds %struct.il_cmd_meta, %struct.il_cmd_meta* %137, i32 0, i32 1
  %139 = load i32 (%struct.il_priv*, %struct.il_device_cmd*, %struct.il_rx_pkt*)*, i32 (%struct.il_priv*, %struct.il_device_cmd*, %struct.il_rx_pkt*)** %138, align 8
  %140 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %141 = load %struct.il_device_cmd*, %struct.il_device_cmd** %11, align 8
  %142 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %143 = call i32 %139(%struct.il_priv* %140, %struct.il_device_cmd* %141, %struct.il_rx_pkt* %142)
  br label %144

144:                                              ; preds = %136, %131
  br label %145

145:                                              ; preds = %144, %121
  %146 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %147 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %146, i32 0, i32 1
  %148 = load i64, i64* %14, align 8
  %149 = call i32 @spin_lock_irqsave(i32* %147, i64 %148)
  %150 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @il_hcmd_queue_reclaim(%struct.il_priv* %150, i32 %151, i32 %152, i32 %153)
  %155 = load %struct.il_cmd_meta*, %struct.il_cmd_meta** %12, align 8
  %156 = getelementptr inbounds %struct.il_cmd_meta, %struct.il_cmd_meta* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @CMD_ASYNC, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %175, label %161

161:                                              ; preds = %145
  %162 = load i32, i32* @S_HCMD_ACTIVE, align 4
  %163 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %164 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %163, i32 0, i32 3
  %165 = call i32 @clear_bit(i32 %162, i32* %164)
  %166 = load %struct.il_device_cmd*, %struct.il_device_cmd** %11, align 8
  %167 = getelementptr inbounds %struct.il_device_cmd, %struct.il_device_cmd* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @il_get_cmd_string(i32 %169)
  %171 = call i32 @D_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %170)
  %172 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %173 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %172, i32 0, i32 2
  %174 = call i32 @wake_up(i32* %173)
  br label %175

175:                                              ; preds = %161, %145
  %176 = load %struct.il_cmd_meta*, %struct.il_cmd_meta** %12, align 8
  %177 = getelementptr inbounds %struct.il_cmd_meta, %struct.il_cmd_meta* %176, i32 0, i32 0
  store i32 0, i32* %177, align 8
  %178 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %179 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %178, i32 0, i32 1
  %180 = load i64, i64* %14, align 8
  %181 = call i32 @spin_unlock_irqrestore(i32* %179, i64 %180)
  br label %182

182:                                              ; preds = %175, %78
  ret void
}

declare dso_local %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @SEQ_TO_QUEUE(i32) #1

declare dso_local i32 @SEQ_TO_IDX(i32) #1

declare dso_local i64 @WARN(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @il_print_hex_error(%struct.il_priv*, %struct.il_rx_pkt*, i32) #1

declare dso_local i32 @il_get_cmd_idx(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.il_cmd_meta*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.il_cmd_meta*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @il_hcmd_queue_reclaim(%struct.il_priv*, i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @D_INFO(i8*, i32) #1

declare dso_local i32 @il_get_cmd_string(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
