; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_compute_large_page_tx_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_compute_large_page_tx_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@SGE_TX_DESC_MAX_PLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @compute_large_page_tx_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_large_page_tx_descs(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %11, label %58

11:                                               ; preds = %1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = call i32 @skb_headlen(%struct.sk_buff* %16)
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %22, %11
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %18

28:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %54, %28
  %30 = load i32, i32* %4, align 4
  %31 = add i32 %30, -1
  store i32 %31, i32* %4, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %35 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @skb_frag_size(i32* %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %47, %33
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %43

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %29

57:                                               ; preds = %29
  br label %58

58:                                               ; preds = %57, %1
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
