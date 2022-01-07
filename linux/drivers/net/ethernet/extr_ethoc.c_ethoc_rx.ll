; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ethoc = type { i32, i32, i64, i8** }
%struct.ethoc_bd = type { i32 }
%struct.sk_buff = type { i32 }

@RX_BD_EMPTY = common dso_local global i32 0, align 4
@INT_MASK_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"low on memory - packet dropped\0A\00", align 1
@RX_BD_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ethoc_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ethoc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ethoc_bd, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.ethoc* @netdev_priv(%struct.net_device* %12)
  store %struct.ethoc* %13, %struct.ethoc** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %136, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %139

18:                                               ; preds = %14
  %19 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %20 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %23 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ethoc_read_bd(%struct.ethoc* %26, i32 %27, %struct.ethoc_bd* %8)
  %29 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RX_BD_EMPTY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %18
  %35 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %36 = load i32, i32* @INT_MASK_RX, align 4
  %37 = call i32 @ethoc_ack_irq(%struct.ethoc* %35, i32 %36)
  %38 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @ethoc_read_bd(%struct.ethoc* %38, i32 %39, %struct.ethoc_bd* %8)
  %41 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RX_BD_EMPTY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %139

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %18
  %49 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %50 = call i64 @ethoc_update_rx_stats(%struct.ethoc* %49, %struct.ethoc_bd* %8)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %110

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %8, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 16
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, 4
  store i32 %57, i32* %9, align 4
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %58, i32 %59)
  store %struct.sk_buff* %60, %struct.sk_buff** %10, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = call i64 @likely(%struct.sk_buff* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %96

64:                                               ; preds = %52
  %65 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %66 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %65, i32 0, i32 3
  %67 = load i8**, i8*** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %11, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @skb_put(%struct.sk_buff* %72, i32 %73)
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @memcpy_fromio(i32 %74, i8* %75, i32 %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = call i32 @eth_type_trans(%struct.sk_buff* %78, %struct.net_device* %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.net_device*, %struct.net_device** %3, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.net_device*, %struct.net_device** %3, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, %88
  store i32 %93, i32* %91, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %95 = call i32 @netif_receive_skb(%struct.sk_buff* %94)
  br label %109

96:                                               ; preds = %52
  %97 = call i64 (...) @net_ratelimit()
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.net_device*, %struct.net_device** %3, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 1
  %102 = call i32 @dev_warn(i32* %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %103

103:                                              ; preds = %99, %96
  %104 = load %struct.net_device*, %struct.net_device** %3, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %139

109:                                              ; preds = %64
  br label %110

110:                                              ; preds = %109, %48
  %111 = load i32, i32* @RX_BD_STATS, align 4
  %112 = xor i32 %111, -1
  %113 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %8, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %112
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* @RX_BD_EMPTY, align 4
  %117 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %8, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %116
  store i32 %119, i32* %117, align 4
  %120 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @ethoc_write_bd(%struct.ethoc* %120, i32 %121, %struct.ethoc_bd* %8)
  %123 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %124 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = zext i32 %126 to i64
  %128 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %129 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %127, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %110
  %133 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %134 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %133, i32 0, i32 1
  store i32 0, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %110
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %14

139:                                              ; preds = %103, %46, %14
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local %struct.ethoc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethoc_read_bd(%struct.ethoc*, i32, %struct.ethoc_bd*) #1

declare dso_local i32 @ethoc_ack_irq(%struct.ethoc*, i32) #1

declare dso_local i64 @ethoc_update_rx_stats(%struct.ethoc*, %struct.ethoc_bd*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @memcpy_fromio(i32, i8*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @ethoc_write_bd(%struct.ethoc*, i32, %struct.ethoc_bd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
