; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ethoc = type { i32, i32, i32, i32, i8** }
%struct.ethoc_bd = type { i32 }

@ETHOC_ZLEN = common dso_local global i64 0, align 8
@ETHOC_BUFSIZ = common dso_local global i64 0, align 8
@TX_BD_PAD = common dso_local global i32 0, align 4
@TX_BD_STATS = common dso_local global i32 0, align 4
@TX_BD_LEN_MASK = common dso_local global i32 0, align 4
@TX_BD_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"stopping queue\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ethoc_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethoc*, align 8
  %6 = alloca %struct.ethoc_bd, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ethoc* @netdev_priv(%struct.net_device* %9)
  store %struct.ethoc* %10, %struct.ethoc** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = load i64, i64* @ETHOC_ZLEN, align 8
  %13 = call i64 @skb_put_padto(%struct.sk_buff* %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %139

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ETHOC_BUFSIZ, align 8
  %26 = icmp sgt i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %136

36:                                               ; preds = %21
  %37 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %38 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %41 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = urem i32 %39, %42
  store i32 %43, i32* %7, align 4
  %44 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %45 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %44, i32 0, i32 3
  %46 = call i32 @spin_lock_irq(i32* %45)
  %47 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %48 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @ethoc_read_bd(%struct.ethoc* %51, i32 %52, %struct.ethoc_bd* %6)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ETHOC_ZLEN, align 8
  %58 = icmp slt i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %36
  %63 = load i32, i32* @TX_BD_PAD, align 4
  %64 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %6, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 4
  br label %73

67:                                               ; preds = %36
  %68 = load i32, i32* @TX_BD_PAD, align 4
  %69 = xor i32 %68, -1
  %70 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %6, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %69
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %62
  %74 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %75 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %74, i32 0, i32 4
  %76 = load i8**, i8*** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %8, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @memcpy_toio(i8* %81, i32 %84, i64 %87)
  %89 = load i32, i32* @TX_BD_STATS, align 4
  %90 = load i32, i32* @TX_BD_LEN_MASK, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %6, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %92
  store i32 %95, i32* %93, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @TX_BD_LEN(i64 %98)
  %100 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %6, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %99
  store i32 %102, i32* %100, align 4
  %103 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @ethoc_write_bd(%struct.ethoc* %103, i32 %104, %struct.ethoc_bd* %6)
  %106 = load i32, i32* @TX_BD_READY, align 4
  %107 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %6, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %106
  store i32 %109, i32* %107, align 4
  %110 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @ethoc_write_bd(%struct.ethoc* %110, i32 %111, %struct.ethoc_bd* %6)
  %113 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %114 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %117 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %120 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add i32 %118, %121
  %123 = icmp eq i32 %115, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %73
  %125 = load %struct.net_device*, %struct.net_device** %4, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 0
  %127 = call i32 @dev_dbg(i32* %126, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %128 = load %struct.net_device*, %struct.net_device** %4, align 8
  %129 = call i32 @netif_stop_queue(%struct.net_device* %128)
  br label %130

130:                                              ; preds = %124, %73
  %131 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %132 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %131, i32 0, i32 3
  %133 = call i32 @spin_unlock_irq(i32* %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %135 = call i32 @skb_tx_timestamp(%struct.sk_buff* %134)
  br label %136

136:                                              ; preds = %130, %30
  %137 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %138 = call i32 @dev_kfree_skb(%struct.sk_buff* %137)
  br label %139

139:                                              ; preds = %136, %15
  %140 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %140
}

declare dso_local %struct.ethoc* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_put_padto(%struct.sk_buff*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ethoc_read_bd(%struct.ethoc*, i32, %struct.ethoc_bd*) #1

declare dso_local i32 @memcpy_toio(i8*, i32, i64) #1

declare dso_local i32 @TX_BD_LEN(i64) #1

declare dso_local i32 @ethoc_write_bd(%struct.ethoc*, i32, %struct.ethoc_bd*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
