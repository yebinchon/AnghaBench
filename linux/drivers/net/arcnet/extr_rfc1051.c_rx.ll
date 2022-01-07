; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_rfc1051.c_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_rfc1051.c_rx.c"
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
@MinTU = common dso_local global i32 0, align 4
@ARC_HDR_SIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@D_SKB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
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
  %21 = load i32, i32* @MinTU, align 4
  %22 = icmp sge i32 %20, %21
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
  br label %101

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
  %58 = load %struct.archdr*, %struct.archdr** %11, align 8
  %59 = load %struct.archdr*, %struct.archdr** %7, align 8
  %60 = call i32 @memcpy(%struct.archdr* %58, %struct.archdr* %59, i32 8)
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ugt i64 %62, 8
  br i1 %63, label %64, label %85

64:                                               ; preds = %44
  %65 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %66 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32 (%struct.net_device*, i32, i32, i64, i32)*, i32 (%struct.net_device*, i32, i32, i64, i32)** %67, align 8
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %72, 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.archdr*, %struct.archdr** %11, align 8
  %76 = getelementptr inbounds %struct.archdr, %struct.archdr* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = sub i64 %81, 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 %68(%struct.net_device* %69, i32 %70, i32 %74, i64 %79, i32 %83)
  br label %85

85:                                               ; preds = %64, %44
  %86 = load i32, i32* @D_SKB, align 4
  %87 = call i64 @BUGLVL(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load %struct.net_device*, %struct.net_device** %5, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %92 = call i32 @arcnet_dump_skb(%struct.net_device* %90, %struct.sk_buff* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %85
  %94 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %95 = load %struct.net_device*, %struct.net_device** %5, align 8
  %96 = call i32 @type_trans(%struct.sk_buff* %94, %struct.net_device* %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %100 = call i32 @netif_rx(%struct.sk_buff* %99)
  br label %101

101:                                              ; preds = %93, %38
  ret void
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @arc_printk(i32, %struct.net_device*, i8*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(%struct.archdr*, %struct.archdr*, i32) #1

declare dso_local i64 @BUGLVL(i32) #1

declare dso_local i32 @arcnet_dump_skb(%struct.net_device*, %struct.sk_buff*, i8*) #1

declare dso_local i32 @type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
