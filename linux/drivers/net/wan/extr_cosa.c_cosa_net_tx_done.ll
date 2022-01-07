; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_net_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_net_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_data = type { %struct.TYPE_4__*, i32*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s: tx_done with empty skb!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.channel_data*, i32)* @cosa_net_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cosa_net_tx_done(%struct.channel_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.channel_data*, align 8
  %5 = alloca i32, align 4
  store %struct.channel_data* %0, %struct.channel_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %7 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  %11 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %12 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %16 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %23 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  store i32 1, i32* %3, align 4
  br label %55

29:                                               ; preds = %2
  %30 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %31 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @dev_consume_skb_irq(i32* %32)
  %34 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %35 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %37 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %45 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %43
  store i32 %50, i32* %48, align 4
  %51 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %52 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i32 @netif_wake_queue(%struct.TYPE_4__* %53)
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %29, %10
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @dev_consume_skb_irq(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
