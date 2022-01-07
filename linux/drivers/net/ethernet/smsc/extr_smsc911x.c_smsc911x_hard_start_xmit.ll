; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.smsc911x_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.smsc911x_data*, i32*, i32)* }

@TX_FIFO_INF = common dso_local global i32 0, align 4
@TX_FIFO_INF_TDFREE_ = common dso_local global i32 0, align 4
@TX_FIFO_LOW_THRESHOLD = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Tx data fifo low, space available: %d\00", align 1
@TX_CMD_A_FIRST_SEG_ = common dso_local global i32 0, align 4
@TX_CMD_A_LAST_SEG_ = common dso_local global i32 0, align 4
@TX_DATA_FIFO = common dso_local global i32 0, align 4
@FIFO_INT = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @smsc911x_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.smsc911x_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.smsc911x_data* @netdev_priv(%struct.net_device* %12)
  store %struct.smsc911x_data* %13, %struct.smsc911x_data** %5, align 8
  %14 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %15 = load i32, i32* @TX_FIFO_INF, align 4
  %16 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %14, i32 %15)
  %17 = load i32, i32* @TX_FIFO_INF_TDFREE_, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @TX_FIFO_LOW_THRESHOLD, align 4
  %21 = icmp ult i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %27 = load i32, i32* @tx_err, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @SMSC_WARN(%struct.smsc911x_data* %26, i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %25, %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 3
  %36 = shl i32 %35, 16
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @TX_CMD_A_FIRST_SEG_, align 4
  %38 = load i32, i32* @TX_CMD_A_LAST_SEG_, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = shl i32 %51, 16
  store i32 %52, i32* %8, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %60 = load i32, i32* @TX_DATA_FIFO, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %59, i32 %60, i32 %61)
  %63 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %64 = load i32, i32* @TX_DATA_FIFO, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %63, i32 %64, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = and i32 %70, -4
  store i32 %71, i32* %11, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = add nsw i32 %75, 3
  store i32 %76, i32* %10, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = and i32 %80, 3
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = ashr i32 %84, 2
  store i32 %85, i32* %10, align 4
  %86 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %87 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32 (%struct.smsc911x_data*, i32*, i32)*, i32 (%struct.smsc911x_data*, i32*, i32)** %89, align 8
  %91 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i32*
  %95 = load i32, i32* %10, align 4
  %96 = call i32 %90(%struct.smsc911x_data* %91, i32* %94, i32 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 32
  %101 = load i32, i32* %6, align 4
  %102 = zext i32 %101 to i64
  %103 = sub nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %6, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %106 = call i32 @skb_tx_timestamp(%struct.sk_buff* %105)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %108 = call i32 @dev_consume_skb_any(%struct.sk_buff* %107)
  %109 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %110 = call i32 @smsc911x_tx_get_txstatcount(%struct.smsc911x_data* %109)
  %111 = icmp sge i32 %110, 30
  %112 = zext i1 %111 to i32
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %30
  %116 = load %struct.net_device*, %struct.net_device** %4, align 8
  %117 = call i32 @smsc911x_tx_update_txcounters(%struct.net_device* %116)
  br label %118

118:                                              ; preds = %115, %30
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @TX_FIFO_LOW_THRESHOLD, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = load %struct.net_device*, %struct.net_device** %4, align 8
  %124 = call i32 @netif_stop_queue(%struct.net_device* %123)
  %125 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %126 = load i32, i32* @FIFO_INT, align 4
  %127 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %125, i32 %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = and i32 %128, 16777215
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = or i32 %130, 838860800
  store i32 %131, i32* %9, align 4
  %132 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %133 = load i32, i32* @FIFO_INT, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %122, %118
  %137 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %137
}

declare dso_local %struct.smsc911x_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @SMSC_WARN(%struct.smsc911x_data*, i32, i8*, i32) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @smsc911x_tx_get_txstatcount(%struct.smsc911x_data*) #1

declare dso_local i32 @smsc911x_tx_update_txcounters(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
