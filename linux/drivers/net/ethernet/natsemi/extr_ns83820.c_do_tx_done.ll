; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_ns83820.c_do_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_ns83820.c_do_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ns83820 = type { i32, i32, i32*, i32, i32, %struct.sk_buff** }
%struct.sk_buff = type { %struct.TYPE_2__ }

@.str = private unnamed_addr constant [16 x i8] c"do_tx_done(%p)\0A\00", align 1
@DESC_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"tx_done_idx=%d free_idx=%d cmdsts=%08x\0A\00", align 1
@DESC_CMDSTS = common dso_local global i64 0, align 8
@CMDSTS_OWN = common dso_local global i32 0, align 4
@CMDSTS_ERR = common dso_local global i32 0, align 4
@CMDSTS_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"done(%p)\0A\00", align 1
@CMDSTS_LEN_MASK = common dso_local global i32 0, align 4
@DESC_BUFPTR = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@NR_TX_DESC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"start_queue(%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @do_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_tx_done(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ns83820*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = bitcast %struct.net_device* %10 to %struct.sk_buff*
  %12 = call %struct.ns83820* @PRIV(%struct.sk_buff* %11)
  store %struct.ns83820* %12, %struct.ns83820** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.net_device* %13)
  %15 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %16 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %19 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @DESC_SIZE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  store i32* %25, i32** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %28 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* @DESC_CMDSTS, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29, i32 %34)
  br label %36

36:                                               ; preds = %142, %1
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %39 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load i32, i32* @CMDSTS_OWN, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i64, i64* @DESC_CMDSTS, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = and i32 %43, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %42, %36
  %53 = phi i1 [ false, %36 ], [ %51, %42 ]
  br i1 %53, label %54, label %163

54:                                               ; preds = %52
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @CMDSTS_ERR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @CMDSTS_OK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %65
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @CMDSTS_OK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i32, i32* %4, align 4
  %83 = and i32 %82, 65535
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %83
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %81, %76
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %92 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %93, i32 %94)
  %96 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %97 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %96, i32 0, i32 5
  %98 = load %struct.sk_buff**, %struct.sk_buff*** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %98, i64 %100
  %102 = load %struct.sk_buff*, %struct.sk_buff** %101, align 8
  store %struct.sk_buff* %102, %struct.sk_buff** %7, align 8
  %103 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %104 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %103, i32 0, i32 5
  %105 = load %struct.sk_buff**, %struct.sk_buff*** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %105, i64 %107
  store %struct.sk_buff* null, %struct.sk_buff** %108, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %110 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %109)
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @CMDSTS_LEN_MASK, align 4
  %113 = and i32 %111, %112
  store i32 %113, i32* %8, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* @DESC_BUFPTR, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = call i32 @desc_addr_get(i32* %117)
  store i32 %118, i32* %9, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %120 = icmp ne %struct.sk_buff* %119, null
  br i1 %120, label %121, label %134

121:                                              ; preds = %89
  %122 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %123 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %128 = call i32 @pci_unmap_single(i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %130 = call i32 @dev_consume_skb_irq(%struct.sk_buff* %129)
  %131 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %132 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %131, i32 0, i32 4
  %133 = call i32 @atomic_dec(i32* %132)
  br label %142

134:                                              ; preds = %89
  %135 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %136 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %141 = call i32 @pci_unmap_page(i32 %137, i32 %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %134, %121
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  %145 = load i32, i32* @NR_TX_DESC, align 4
  %146 = srem i32 %144, %145
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %149 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = call i32 @cpu_to_le32(i32 0)
  %151 = load i32*, i32** %6, align 8
  %152 = load i64, i64* @DESC_CMDSTS, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32 %150, i32* %153, align 4
  %154 = call i32 (...) @mb()
  %155 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %156 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @DESC_SIZE, align 4
  %160 = mul nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %157, i64 %161
  store i32* %162, i32** %6, align 8
  br label %36

163:                                              ; preds = %52
  %164 = load %struct.net_device*, %struct.net_device** %2, align 8
  %165 = bitcast %struct.net_device* %164 to %struct.sk_buff*
  %166 = call i64 @netif_queue_stopped(%struct.sk_buff* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %163
  %169 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %170 = call i64 @start_tx_okay(%struct.ns83820* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %168
  %173 = load %struct.net_device*, %struct.net_device** %2, align 8
  %174 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), %struct.net_device* %173)
  %175 = load %struct.net_device*, %struct.net_device** %2, align 8
  %176 = bitcast %struct.net_device* %175 to %struct.sk_buff*
  %177 = call i32 @netif_start_queue(%struct.sk_buff* %176)
  %178 = load %struct.net_device*, %struct.net_device** %2, align 8
  %179 = bitcast %struct.net_device* %178 to %struct.sk_buff*
  %180 = call i32 @netif_wake_queue(%struct.sk_buff* %179)
  br label %181

181:                                              ; preds = %172, %168, %163
  ret void
}

declare dso_local %struct.ns83820* @PRIV(%struct.sk_buff*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @desc_addr_get(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @netif_queue_stopped(%struct.sk_buff*) #1

declare dso_local i64 @start_tx_okay(%struct.ns83820*) #1

declare dso_local i32 @netif_start_queue(%struct.sk_buff*) #1

declare dso_local i32 @netif_wake_queue(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
