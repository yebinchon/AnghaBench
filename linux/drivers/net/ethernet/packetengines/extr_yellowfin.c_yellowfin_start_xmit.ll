; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/packetengines/extr_yellowfin.c_yellowfin_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/packetengines/extr_yellowfin.c_yellowfin_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i32 }
%struct.yellowfin_private = type { i32, i64, i32, i64, %struct.TYPE_2__*, i32, %struct.sk_buff** }
%struct.TYPE_2__ = type { i32, i8*, i8*, i64 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@gx_fix = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@CMD_STOP = common dso_local global i32 0, align 4
@CMD_TX_PKT = common dso_local global i32 0, align 4
@INTR_ALWAYS = common dso_local global i32 0, align 4
@BRANCH_IFTRUE = common dso_local global i32 0, align 4
@TxCtrl = common dso_local global i64 0, align 8
@TX_QUEUE_SIZE = common dso_local global i64 0, align 8
@yellowfin_debug = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Yellowfin transmit frame #%d queued in slot %d\0A\00", align 1
@BRANCH_ALWAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @yellowfin_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yellowfin_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.yellowfin_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.yellowfin_private* @netdev_priv(%struct.net_device* %11)
  store %struct.yellowfin_private* %12, %struct.yellowfin_private** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call i32 @netif_stop_queue(%struct.net_device* %16)
  %18 = load %struct.yellowfin_private*, %struct.yellowfin_private** %6, align 8
  %19 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TX_RING_SIZE, align 4
  %22 = srem i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i64, i64* @gx_fix, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %65

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add i64 %28, %32
  %34 = urem i64 %33, 32
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 24
  br i1 %37, label %41, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %38, %25
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 32
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %45, %46
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @skb_padto(%struct.sk_buff* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %41
  %54 = load %struct.yellowfin_private*, %struct.yellowfin_private** %6, align 8
  %55 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %54, i32 0, i32 6
  %56 = load %struct.sk_buff**, %struct.sk_buff*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %56, i64 %58
  store %struct.sk_buff* null, %struct.sk_buff** %59, align 8
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = call i32 @netif_wake_queue(%struct.net_device* %60)
  %62 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %62, i32* %3, align 4
  br label %181

63:                                               ; preds = %41
  br label %64

64:                                               ; preds = %63, %38
  br label %65

65:                                               ; preds = %64, %2
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load %struct.yellowfin_private*, %struct.yellowfin_private** %6, align 8
  %68 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %67, i32 0, i32 6
  %69 = load %struct.sk_buff**, %struct.sk_buff*** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %69, i64 %71
  store %struct.sk_buff* %66, %struct.sk_buff** %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.yellowfin_private*, %struct.yellowfin_private** %6, align 8
  %75 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = shl i32 %77, 1
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %73, i32* %81, align 8
  %82 = load %struct.yellowfin_private*, %struct.yellowfin_private** %6, align 8
  %83 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %90 = call i32 @pci_map_single(i32 %84, i64 %87, i32 %88, i32 %89)
  %91 = call i8* @cpu_to_le32(i32 %90)
  %92 = load %struct.yellowfin_private*, %struct.yellowfin_private** %6, align 8
  %93 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %92, i32 0, i32 4
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = shl i32 %95, 1
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  store i8* %91, i8** %99, align 8
  %100 = load %struct.yellowfin_private*, %struct.yellowfin_private** %6, align 8
  %101 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = load %struct.yellowfin_private*, %struct.yellowfin_private** %6, align 8
  %105 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @TX_RING_SIZE, align 4
  %108 = srem i32 %106, %107
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* @CMD_STOP, align 4
  %110 = call i8* @cpu_to_le32(i32 %109)
  %111 = load %struct.yellowfin_private*, %struct.yellowfin_private** %6, align 8
  %112 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %111, i32 0, i32 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = shl i32 %114, 1
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  store i8* %110, i8** %118, align 8
  %119 = load i32, i32* %7, align 4
  %120 = urem i32 %119, 6
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %65
  %123 = load i32, i32* @CMD_TX_PKT, align 4
  %124 = load i32, i32* @INTR_ALWAYS, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @BRANCH_IFTRUE, align 4
  %127 = or i32 %125, %126
  br label %132

128:                                              ; preds = %65
  %129 = load i32, i32* @CMD_TX_PKT, align 4
  %130 = load i32, i32* @BRANCH_IFTRUE, align 4
  %131 = or i32 %129, %130
  br label %132

132:                                              ; preds = %128, %122
  %133 = phi i32 [ %127, %122 ], [ %131, %128 ]
  %134 = load i32, i32* %8, align 4
  %135 = or i32 %133, %134
  %136 = call i8* @cpu_to_le32(i32 %135)
  %137 = load %struct.yellowfin_private*, %struct.yellowfin_private** %6, align 8
  %138 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %137, i32 0, i32 4
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = shl i32 %140, 1
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  store i8* %136, i8** %144, align 8
  %145 = load %struct.yellowfin_private*, %struct.yellowfin_private** %6, align 8
  %146 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @TxCtrl, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @iowrite32(i32 268439552, i64 %149)
  %151 = load %struct.yellowfin_private*, %struct.yellowfin_private** %6, align 8
  %152 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = load %struct.yellowfin_private*, %struct.yellowfin_private** %6, align 8
  %156 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %154, %157
  %159 = load i64, i64* @TX_QUEUE_SIZE, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %132
  %162 = load %struct.net_device*, %struct.net_device** %5, align 8
  %163 = call i32 @netif_start_queue(%struct.net_device* %162)
  br label %167

164:                                              ; preds = %132
  %165 = load %struct.yellowfin_private*, %struct.yellowfin_private** %6, align 8
  %166 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %165, i32 0, i32 2
  store i32 1, i32* %166, align 8
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i32, i32* @yellowfin_debug, align 4
  %169 = icmp sgt i32 %168, 4
  br i1 %169, label %170, label %179

170:                                              ; preds = %167
  %171 = load i32, i32* @KERN_DEBUG, align 4
  %172 = load %struct.net_device*, %struct.net_device** %5, align 8
  %173 = load %struct.yellowfin_private*, %struct.yellowfin_private** %6, align 8
  %174 = getelementptr inbounds %struct.yellowfin_private, %struct.yellowfin_private* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @netdev_printk(i32 %171, %struct.net_device* %172, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %176, i32 %177)
  br label %179

179:                                              ; preds = %170, %167
  %180 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %179, %53
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local %struct.yellowfin_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i64 @skb_padto(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @pci_map_single(i32, i64, i32, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @netdev_printk(i32, %struct.net_device*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
