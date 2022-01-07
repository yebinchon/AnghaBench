; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_send_queued_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_send_queued_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_12__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.sk_buff = type { i8*, i32 }
%struct.s_smt_fp_txd = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.sk_buff* }

@.str = private unnamed_addr constant [21 x i8] c"send queued packets\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"queue empty\0A\00", align 1
@FC_SYNC_BIT = common dso_local global i8 0, align 1
@QUEUE_S = common dso_local global i32 0, align 4
@QUEUE_A0 = common dso_local global i32 0, align 4
@LOC_TX = common dso_local global i32 0, align 4
@LAN_TX = common dso_local global i32 0, align 4
@RING_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Tx attempt while ring down.\0A\00", align 1
@OUT_OF_TXD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%s: out of TXDs.\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%s: out of transmit resources\00", align 1
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@FIRST_FRAG = common dso_local global i32 0, align 4
@LAST_FRAG = common dso_local global i32 0, align 4
@EN_IRQ_EOF = common dso_local global i32 0, align 4
@FC_ASYNC_LLC = common dso_local global i8 0, align 1
@FC_LLC_PRIOR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @send_queued_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_queued_packets(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.s_smt_fp_txd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %11 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %12 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %11, i32 0, i32 3
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %3, align 8
  %13 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %166, %1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 3
  %17 = call %struct.sk_buff* @skb_dequeue(i32* %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %171

22:                                               ; preds = %14
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %5, align 1
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @FC_SYNC_BIT, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load i32, i32* @QUEUE_S, align 4
  br label %42

40:                                               ; preds = %22
  %41 = load i32, i32* @QUEUE_A0, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %6, align 4
  %44 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %45 = load i8, i8* %5, align 1
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @hwm_tx_init(%struct.s_smc* %44, i8 zeroext %45, i32 1, i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @LOC_TX, align 4
  %53 = load i32, i32* @LAN_TX, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %93

57:                                               ; preds = %42
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @RING_DOWN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %84

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @OUT_OF_TXD, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %83

76:                                               ; preds = %64
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %76, %69
  br label %84

84:                                               ; preds = %83, %62
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 3
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = call i32 @skb_queue_head(i32* %86, %struct.sk_buff* %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  br label %171

93:                                               ; preds = %42
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %102 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @CheckSourceAddress(i8* %100, i32 %105)
  %107 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i64 @HWM_GET_CURR_TXD(%struct.s_smc* %107, i32 %108)
  %110 = inttoptr i64 %109 to %struct.s_smt_fp_txd*
  store %struct.s_smt_fp_txd* %110, %struct.s_smt_fp_txd** %7, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %120 = call i32 @pci_map_single(i32* %112, i8* %115, i32 %118, i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @LAN_TX, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %93
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %7, align 8
  %128 = getelementptr inbounds %struct.s_smt_fp_txd, %struct.s_smt_fp_txd* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  store %struct.sk_buff* %126, %struct.sk_buff** %129, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %7, align 8
  %132 = getelementptr inbounds %struct.s_smt_fp_txd, %struct.s_smt_fp_txd* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  br label %134

134:                                              ; preds = %125, %93
  %135 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @FIRST_FRAG, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @LAST_FRAG, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @EN_IRQ_EOF, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @hwm_tx_frag(%struct.s_smc* %135, i8* %138, i32 %139, i32 %142, i32 %149)
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @LAN_TX, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %166, label %155

155:                                              ; preds = %134
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load i32, i32* %8, align 4
  %159 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %163 = call i32 @pci_unmap_single(i32* %157, i32 %158, i32 %161, i32 %162)
  %164 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %165 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %164)
  br label %166

166:                                              ; preds = %155, %134
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i64, i64* %9, align 8
  %170 = call i32 @spin_unlock_irqrestore(i32* %168, i64 %169)
  br label %14

171:                                              ; preds = %84, %20
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hwm_tx_init(%struct.s_smc*, i8 zeroext, i32, i32, i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @CheckSourceAddress(i8*, i32) #1

declare dso_local i64 @HWM_GET_CURR_TXD(%struct.s_smc*, i32) #1

declare dso_local i32 @pci_map_single(i32*, i8*, i32, i32) #1

declare dso_local i32 @hwm_tx_frag(%struct.s_smc*, i8*, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
