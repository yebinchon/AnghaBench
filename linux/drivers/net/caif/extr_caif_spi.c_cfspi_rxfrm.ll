; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_spi.c_cfspi_rxfrm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_spi.c_cfspi_rxfrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfspi = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@spi_down_head_align = common dso_local global i32 0, align 4
@ETH_P_CAIF = common dso_local global i32 0, align 4
@spi_loop = common dso_local global i32 0, align 4
@spi_down_tail_align = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfspi_rxfrm(%struct.cfspi* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.cfspi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cfspi* %0, %struct.cfspi** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @caif_assert(i32 %16)
  br label %18

18:                                               ; preds = %113, %3
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* @spi_down_head_align, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 1, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %7, align 8
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = and i32 %35, 65280
  %37 = load i32, i32* %12, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 2
  store i32 %40, i32* %12, align 4
  %41 = load %struct.cfspi*, %struct.cfspi** %4, align 8
  %42 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  %46 = call %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_5__* %43, i32 %45)
  store %struct.sk_buff* %46, %struct.sk_buff** %9, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @caif_assert(i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @skb_put_data(%struct.sk_buff* %51, i32* %52, i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %7, align 8
  %59 = load i32, i32* @ETH_P_CAIF, align 4
  %60 = call i32 @htons(i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = call i32 @skb_reset_mac_header(%struct.sk_buff* %63)
  %65 = load i32, i32* @spi_loop, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %29
  %68 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %69 = call i32 @netif_rx_ni(%struct.sk_buff* %68)
  store i32 %69, i32* %8, align 4
  br label %76

70:                                               ; preds = %29
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = load %struct.cfspi*, %struct.cfspi** %4, align 8
  %73 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = call i32 @cfspi_xmit(%struct.sk_buff* %71, %struct.TYPE_5__* %74)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %76
  %80 = load %struct.cfspi*, %struct.cfspi** %4, align 8
  %81 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.cfspi*, %struct.cfspi** %4, align 8
  %89 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %87
  store i32 %94, i32* %92, align 4
  br label %103

95:                                               ; preds = %76
  %96 = load %struct.cfspi*, %struct.cfspi** %4, align 8
  %97 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %95, %79
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* @spi_down_tail_align, align 4
  %108 = call i32 @PAD_POW2(i32 %106, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %7, align 8
  br label %113

113:                                              ; preds = %103
  %114 = load i32*, i32** %7, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = ptrtoint i32* %114 to i64
  %117 = ptrtoint i32* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 4
  %120 = load i64, i64* %6, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %18, label %122

122:                                              ; preds = %113
  %123 = load i32*, i32** %7, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = ptrtoint i32* %123 to i64
  %126 = ptrtoint i32* %124 to i64
  %127 = sub i64 %125, %126
  %128 = sdiv exact i64 %127, 4
  %129 = trunc i64 %128 to i32
  ret i32 %129
}

declare dso_local i32 @caif_assert(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

declare dso_local i32 @cfspi_xmit(%struct.sk_buff*, %struct.TYPE_5__*) #1

declare dso_local i32 @PAD_POW2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
