; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_el3_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_el3_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.el3_private = type { i32 }

@el3_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s: el3_start_xmit(length = %u) called, status %4.4x.\0A\00", align 1
@EL3_STATUS = common dso_local global i64 0, align 8
@TX_FIFO = common dso_local global i64 0, align 8
@TX_FREE = common dso_local global i64 0, align 8
@SetTxThreshold = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@TX_STATUS = common dso_local global i64 0, align 8
@TxReset = common dso_local global i32 0, align 4
@TxEnable = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @el3_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @el3_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.el3_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.el3_private* @netdev_priv(%struct.net_device* %10)
  store %struct.el3_private* %11, %struct.el3_private** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32 @netif_stop_queue(%struct.net_device* %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, %19
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @el3_debug, align 4
  %26 = icmp sgt i32 %25, 4
  br i1 %26, label %27, label %40

27:                                               ; preds = %2
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @EL3_STATUS, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @inw(i64 %37)
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i32 %38)
  br label %40

40:                                               ; preds = %27, %2
  %41 = load %struct.el3_private*, %struct.el3_private** %5, align 8
  %42 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %41, i32 0, i32 0
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @TX_FIFO, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outw(i32 %47, i64 %51)
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @TX_FIFO, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outw(i32 0, i64 %56)
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @TX_FIFO, align 8
  %61 = add nsw i64 %59, %60
  %62 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 3
  %69 = ashr i32 %68, 2
  %70 = call i32 @outsl(i64 %61, i32 %64, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* @TX_FREE, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @inw(i64 %74)
  %76 = icmp sgt i32 %75, 1536
  br i1 %76, label %77, label %80

77:                                               ; preds = %40
  %78 = load %struct.net_device*, %struct.net_device** %4, align 8
  %79 = call i32 @netif_start_queue(%struct.net_device* %78)
  br label %88

80:                                               ; preds = %40
  %81 = load i32, i32* @SetTxThreshold, align 4
  %82 = add nsw i32 %81, 1536
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* @EL3_CMD, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @outw(i32 %82, i64 %86)
  br label %88

88:                                               ; preds = %80, %77
  %89 = load %struct.el3_private*, %struct.el3_private** %5, align 8
  %90 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %89, i32 0, i32 0
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %94 = call i32 @dev_consume_skb_any(%struct.sk_buff* %93)
  store i32 4, i32* %9, align 4
  br label %95

95:                                               ; preds = %144, %88
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %9, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* @TX_STATUS, align 8
  %103 = add nsw i64 %101, %102
  %104 = call signext i16 @inb(i64 %103)
  store i16 %104, i16* %8, align 2
  %105 = sext i16 %104 to i32
  %106 = icmp sgt i32 %105, 0
  br label %107

107:                                              ; preds = %99, %95
  %108 = phi i1 [ false, %95 ], [ %106, %99 ]
  br i1 %108, label %109, label %150

109:                                              ; preds = %107
  %110 = load i16, i16* %8, align 2
  %111 = sext i16 %110 to i32
  %112 = and i32 %111, 56
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load %struct.net_device*, %struct.net_device** %4, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %114, %109
  %121 = load i16, i16* %8, align 2
  %122 = sext i16 %121 to i32
  %123 = and i32 %122, 48
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load i32, i32* @TxReset, align 4
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* @EL3_CMD, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @outw(i32 %126, i64 %130)
  br label %132

132:                                              ; preds = %125, %120
  %133 = load i16, i16* %8, align 2
  %134 = sext i16 %133 to i32
  %135 = and i32 %134, 60
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load i32, i32* @TxEnable, align 4
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* @EL3_CMD, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @outw(i32 %138, i64 %142)
  br label %144

144:                                              ; preds = %137, %132
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* @TX_STATUS, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @outb(i32 0, i64 %148)
  br label %95

150:                                              ; preds = %107
  %151 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %151
}

declare dso_local %struct.el3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @outsl(i64, i32, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local signext i16 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
