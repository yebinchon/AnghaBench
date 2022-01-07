; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_net_rx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_net_rx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_data = type { %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s: rx_done with empty skb!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.channel_data*)* @cosa_net_rx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cosa_net_rx_done(%struct.channel_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.channel_data*, align 8
  store %struct.channel_data* %0, %struct.channel_data** %3, align 8
  %4 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %5 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %4, i32 0, i32 0
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %7 = icmp ne %struct.TYPE_9__* %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %1
  %9 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %10 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %14 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %13, i32 0, i32 2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %21 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %20, i32 0, i32 2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  store i32 0, i32* %2, align 4
  br label %77

27:                                               ; preds = %1
  %28 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %29 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %32 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %31, i32 0, i32 2
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = call i32 @hdlc_type_trans(%struct.TYPE_9__* %30, %struct.TYPE_10__* %33)
  %35 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %36 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 8
  %39 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %40 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %39, i32 0, i32 2
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %43 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %45, align 8
  %46 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %47 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = call i32 @skb_reset_mac_header(%struct.TYPE_9__* %48)
  %50 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %51 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %50, i32 0, i32 2
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %58 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %63 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %62, i32 0, i32 2
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %61
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 4
  %71 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %72 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = call i32 @netif_rx(%struct.TYPE_9__* %73)
  %75 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %76 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %75, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %76, align 8
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %27, %8
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @hdlc_type_trans(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.TYPE_9__*) #1

declare dso_local i32 @netif_rx(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
