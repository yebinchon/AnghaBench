; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arc-rawmode.c_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arc-rawmode.c_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.archdr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.arcnet_local = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.net_device*, i32, i32, i64, i32)* }
%struct.sk_buff = type { i32, i64, %struct.net_device* }

@D_DURING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"it's a raw packet (length=%d)\0A\00", align 1
@MTU = common dso_local global i32 0, align 4
@ARC_HDR_SIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@D_SKB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@ETH_P_ARCNET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, %struct.archdr*, i32)* @rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx(%struct.net_device* %0, i32 %1, %struct.archdr* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.archdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.arcnet_local*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.archdr*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.archdr* %2, %struct.archdr** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %13)
  store %struct.arcnet_local* %14, %struct.arcnet_local** %9, align 8
  %15 = load %struct.archdr*, %struct.archdr** %7, align 8
  store %struct.archdr* %15, %struct.archdr** %11, align 8
  %16 = load i32, i32* @D_DURING, align 4
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @arc_printk(i32 %16, %struct.net_device* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MTU, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 512, %24
  store i32 %25, i32* %12, align 4
  br label %29

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 256, %27
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @ARC_HDR_SIZE, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.sk_buff* @alloc_skb(i64 %33, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %10, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %29
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %105

44:                                               ; preds = %29
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @ARC_HDR_SIZE, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @skb_put(%struct.sk_buff* %45, i64 %49)
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 2
  store %struct.net_device* %51, %struct.net_device** %53, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.archdr*
  store %struct.archdr* %57, %struct.archdr** %11, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %59 = call i32 @skb_reset_mac_header(%struct.sk_buff* %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %61 = load i64, i64* @ARC_HDR_SIZE, align 8
  %62 = call i32 @skb_pull(%struct.sk_buff* %60, i64 %61)
  %63 = load %struct.archdr*, %struct.archdr** %11, align 8
  %64 = load %struct.archdr*, %struct.archdr** %7, align 8
  %65 = call i32 @memcpy(%struct.archdr* %63, %struct.archdr* %64, i32 8)
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ugt i64 %67, 8
  br i1 %68, label %69, label %90

69:                                               ; preds = %44
  %70 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %71 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32 (%struct.net_device*, i32, i32, i64, i32)*, i32 (%struct.net_device*, i32, i32, i64, i32)** %72, align 8
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %77, 8
  %79 = trunc i64 %78 to i32
  %80 = load %struct.archdr*, %struct.archdr** %11, align 8
  %81 = getelementptr inbounds %struct.archdr, %struct.archdr* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = sub i64 %86, 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 %73(%struct.net_device* %74, i32 %75, i32 %79, i64 %84, i32 %88)
  br label %90

90:                                               ; preds = %69, %44
  %91 = load i32, i32* @D_SKB, align 4
  %92 = call i64 @BUGLVL(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load %struct.net_device*, %struct.net_device** %5, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %97 = call i32 @arcnet_dump_skb(%struct.net_device* %95, %struct.sk_buff* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %94, %90
  %99 = load i32, i32* @ETH_P_ARCNET, align 4
  %100 = call i32 @cpu_to_be16(i32 %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %104 = call i32 @netif_rx(%struct.sk_buff* %103)
  br label %105

105:                                              ; preds = %98, %38
  ret void
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @arc_printk(i32, %struct.net_device*, i8*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(%struct.archdr*, %struct.archdr*, i32) #1

declare dso_local i64 @BUGLVL(i32) #1

declare dso_local i32 @arcnet_dump_skb(%struct.net_device*, %struct.sk_buff*, i8*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
