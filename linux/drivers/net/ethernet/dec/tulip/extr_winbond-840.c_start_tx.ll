; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_winbond-840.c_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_winbond-840.c_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, i64, i64, i32, i32, i32, i64, %struct.TYPE_2__*, i64*, %struct.sk_buff**, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@TX_BUFLIMIT = common dso_local global i32 0, align 4
@DescWholePkt = common dso_local global i32 0, align 4
@DescEndRing = common dso_local global i32 0, align 4
@DescOwned = common dso_local global i32 0, align 4
@TxStartDemand = common dso_local global i64 0, align 8
@TX_QUEUE_LEN = common dso_local global i64 0, align 8
@HasBrokenTx = common dso_local global i32 0, align 4
@TX_BUG_FIFO_LIMIT = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Transmit frame #%d queued in slot %d\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %8)
  store %struct.netdev_private* %9, %struct.netdev_private** %5, align 8
  %10 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %11 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @TX_RING_SIZE, align 4
  %14 = srem i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %16 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %25 = call i64 @pci_map_single(i32 %17, i32 %20, i32 %23, i32 %24)
  %26 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %27 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %26, i32 0, i32 8
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 %25, i64* %31, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %34 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %33, i32 0, i32 9
  %35 = load %struct.sk_buff**, %struct.sk_buff*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %35, i64 %37
  store %struct.sk_buff* %32, %struct.sk_buff** %38, align 8
  %39 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %40 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %39, i32 0, i32 8
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %47 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %46, i32 0, i32 7
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store i64 %45, i64* %52, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TX_BUFLIMIT, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %2
  %59 = load i32, i32* @DescWholePkt, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %59, %62
  %64 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %65 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %64, i32 0, i32 7
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %63, i32* %70, align 8
  br label %107

71:                                               ; preds = %2
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @TX_BUFLIMIT, align 4
  %76 = sub nsw i32 %74, %75
  store i32 %76, i32* %7, align 4
  %77 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %78 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %77, i32 0, i32 8
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @TX_BUFLIMIT, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %88 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %87, i32 0, i32 7
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store i64 %86, i64* %93, align 8
  %94 = load i32, i32* @DescWholePkt, align 4
  %95 = load i32, i32* %7, align 4
  %96 = shl i32 %95, 11
  %97 = or i32 %94, %96
  %98 = load i32, i32* @TX_BUFLIMIT, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %101 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %100, i32 0, i32 7
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i32 %99, i32* %106, align 8
  br label %107

107:                                              ; preds = %71, %58
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @TX_RING_SIZE, align 4
  %110 = sub nsw i32 %109, 1
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %107
  %113 = load i32, i32* @DescEndRing, align 4
  %114 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %115 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %114, i32 0, i32 7
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %113
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %112, %107
  %124 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %125 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %124, i32 0, i32 5
  %126 = call i32 @spin_lock_irq(i32* %125)
  %127 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %128 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = call i32 (...) @wmb()
  %132 = load i32, i32* @DescOwned, align 4
  %133 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %134 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %133, i32 0, i32 7
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  store i32 %132, i32* %139, align 4
  %140 = call i32 (...) @wmb()
  %141 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %142 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @TxStartDemand, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @iowrite32(i32 0, i64 %145)
  %147 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %152 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, %150
  store i64 %154, i64* %152, align 8
  %155 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %156 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %160 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = sub nsw i64 %158, %161
  %163 = load i64, i64* @TX_QUEUE_LEN, align 8
  %164 = icmp sgt i64 %162, %163
  br i1 %164, label %178, label %165

165:                                              ; preds = %123
  %166 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %167 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @HasBrokenTx, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %165
  %173 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %174 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @TX_BUG_FIFO_LIMIT, align 8
  %177 = icmp sgt i64 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %172, %123
  %179 = load %struct.net_device*, %struct.net_device** %4, align 8
  %180 = call i32 @netif_stop_queue(%struct.net_device* %179)
  %181 = call i32 (...) @wmb()
  %182 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %183 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %182, i32 0, i32 4
  store i32 1, i32* %183, align 4
  br label %184

184:                                              ; preds = %178, %172, %165
  %185 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %186 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %185, i32 0, i32 5
  %187 = call i32 @spin_unlock_irq(i32* %186)
  %188 = load i32, i32* @debug, align 4
  %189 = icmp sgt i32 %188, 4
  br i1 %189, label %190, label %198

190:                                              ; preds = %184
  %191 = load %struct.net_device*, %struct.net_device** %4, align 8
  %192 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %193 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @netdev_dbg(%struct.net_device* %191, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %195, i32 %196)
  br label %198

198:                                              ; preds = %190, %184
  %199 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %199
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
