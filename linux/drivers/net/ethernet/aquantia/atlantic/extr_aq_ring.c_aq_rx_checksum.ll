; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_ring_s = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.aq_ring_buff_s = type { i64, i64, i64, i32 }
%struct.sk_buff = type { i8* }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aq_ring_s*, %struct.aq_ring_buff_s*, %struct.sk_buff*)* @aq_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aq_rx_checksum(%struct.aq_ring_s* %0, %struct.aq_ring_buff_s* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.aq_ring_s*, align 8
  %5 = alloca %struct.aq_ring_buff_s*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.aq_ring_s* %0, %struct.aq_ring_s** %4, align 8
  store %struct.aq_ring_buff_s* %1, %struct.aq_ring_buff_s** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.aq_ring_s*, %struct.aq_ring_s** %4, align 8
  %8 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %59

18:                                               ; preds = %3
  %19 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %5, align 8
  %20 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.aq_ring_s*, %struct.aq_ring_s** %4, align 8
  %26 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load i8*, i8** @CHECKSUM_NONE, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  br label %59

34:                                               ; preds = %18
  %35 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %5, align 8
  %36 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call i32 @__skb_incr_checksum_unnecessary(%struct.sk_buff* %40)
  br label %46

42:                                               ; preds = %34
  %43 = load i8*, i8** @CHECKSUM_NONE, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %42, %39
  %47 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %5, align 8
  %48 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %5, align 8
  %53 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %46
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = call i32 @__skb_incr_checksum_unnecessary(%struct.sk_buff* %57)
  br label %59

59:                                               ; preds = %17, %24, %56, %51
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__skb_incr_checksum_unnecessary(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
