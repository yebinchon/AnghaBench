; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_gro_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_gro_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.qede_fastpath = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*, %struct.qede_fastpath*, %struct.sk_buff*, i32)* @qede_gro_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_gro_receive(%struct.qede_dev* %0, %struct.qede_fastpath* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.qede_dev*, align 8
  %6 = alloca %struct.qede_fastpath*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %5, align 8
  store %struct.qede_fastpath* %1, %struct.qede_fastpath** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %25

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %24, %17
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = load %struct.qede_fastpath*, %struct.qede_fastpath** %6, align 8
  %28 = getelementptr inbounds %struct.qede_fastpath, %struct.qede_fastpath* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @skb_record_rx_queue(%struct.sk_buff* %26, i32 %31)
  %33 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %34 = load %struct.qede_fastpath*, %struct.qede_fastpath** %6, align 8
  %35 = load %struct.qede_fastpath*, %struct.qede_fastpath** %6, align 8
  %36 = getelementptr inbounds %struct.qede_fastpath, %struct.qede_fastpath* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @qede_skb_receive(%struct.qede_dev* %33, %struct.qede_fastpath* %34, %struct.TYPE_4__* %37, %struct.sk_buff* %38, i32 %39)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @qede_skb_receive(%struct.qede_dev*, %struct.qede_fastpath*, %struct.TYPE_4__*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
