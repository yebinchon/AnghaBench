; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z8530_channel = type { %struct.TYPE_4__*, %struct.sk_buff* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z8530_channel*)* @z8530_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z8530_tx_done(%struct.z8530_channel* %0) #0 {
  %2 = alloca %struct.z8530_channel*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.z8530_channel* %0, %struct.z8530_channel** %2, align 8
  %4 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %5 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %4, i32 0, i32 1
  %6 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %7 = icmp eq %struct.sk_buff* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %38

9:                                                ; preds = %1
  %10 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %11 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %10, i32 0, i32 1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %12, %struct.sk_buff** %3, align 8
  %13 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %14 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %13, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %14, align 8
  %15 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %16 = call i32 @z8530_tx_begin(%struct.z8530_channel* %15)
  %17 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %18 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %28 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %26
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = call i32 @dev_consume_skb_irq(%struct.sk_buff* %36)
  br label %38

38:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @z8530_tx_begin(%struct.z8530_channel*) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
