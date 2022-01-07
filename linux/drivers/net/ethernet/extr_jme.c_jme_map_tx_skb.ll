; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_map_tx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_map_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, i32, %struct.TYPE_3__*, %struct.jme_ring* }
%struct.TYPE_3__ = type { i32 }
%struct.jme_ring = type { %struct.jme_buffer_info*, %struct.txdesc* }
%struct.jme_buffer_info = type { i32 }
%struct.txdesc = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32* }

@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_adapter*, %struct.sk_buff*, i32)* @jme_map_tx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_map_tx_skb(%struct.jme_adapter* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.jme_adapter*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.jme_ring*, align 8
  %8 = alloca %struct.txdesc*, align 8
  %9 = alloca %struct.txdesc*, align 8
  %10 = alloca %struct.jme_buffer_info*, align 8
  %11 = alloca %struct.jme_buffer_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.jme_adapter* %0, %struct.jme_adapter** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %19, i32 0, i32 3
  %21 = load %struct.jme_ring*, %struct.jme_ring** %20, align 8
  %22 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %21, i64 0
  store %struct.jme_ring* %22, %struct.jme_ring** %7, align 8
  %23 = load %struct.jme_ring*, %struct.jme_ring** %7, align 8
  %24 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %23, i32 0, i32 1
  %25 = load %struct.txdesc*, %struct.txdesc** %24, align 8
  store %struct.txdesc* %25, %struct.txdesc** %8, align 8
  %26 = load %struct.jme_ring*, %struct.jme_ring** %7, align 8
  %27 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %26, i32 0, i32 0
  %28 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %27, align 8
  store %struct.jme_buffer_info* %28, %struct.jme_buffer_info** %10, align 8
  %29 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %12, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %14, align 4
  %40 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %94, %3
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %97

47:                                               ; preds = %43
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32* %54, i32** %18, align 8
  %55 = load %struct.txdesc*, %struct.txdesc** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %56, %57
  %59 = add nsw i32 %58, 2
  %60 = load i32, i32* %15, align 4
  %61 = and i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %55, i64 %62
  store %struct.txdesc* %63, %struct.txdesc** %9, align 8
  %64 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %10, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %65, %66
  %68 = add nsw i32 %67, 2
  %69 = load i32, i32* %15, align 4
  %70 = and i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %64, i64 %71
  store %struct.jme_buffer_info* %72, %struct.jme_buffer_info** %11, align 8
  %73 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %74 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.txdesc*, %struct.txdesc** %9, align 8
  %77 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %11, align 8
  %78 = load i32*, i32** %18, align 8
  %79 = call i32 @skb_frag_page(i32* %78)
  %80 = load i32*, i32** %18, align 8
  %81 = call i32 @skb_frag_off(i32* %80)
  %82 = load i32*, i32** %18, align 8
  %83 = call i32 @skb_frag_size(i32* %82)
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @jme_fill_tx_map(i32 %75, %struct.txdesc* %76, %struct.jme_buffer_info* %77, i32 %79, i32 %81, i32 %83, i32 %84)
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %47
  %89 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @jme_drop_tx_map(%struct.jme_adapter* %89, i32 %90, i32 %91)
  br label %148

93:                                               ; preds = %47
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %43

97:                                               ; preds = %43
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = call i64 @skb_is_nonlinear(%struct.sk_buff* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = call i32 @skb_headlen(%struct.sk_buff* %102)
  br label %108

104:                                              ; preds = %97
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  br label %108

108:                                              ; preds = %104, %101
  %109 = phi i32 [ %103, %101 ], [ %107, %104 ]
  store i32 %109, i32* %16, align 4
  %110 = load %struct.txdesc*, %struct.txdesc** %8, align 8
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  %113 = load i32, i32* %15, align 4
  %114 = and i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %110, i64 %115
  store %struct.txdesc* %116, %struct.txdesc** %9, align 8
  %117 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %10, align 8
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i32, i32* %15, align 4
  %121 = and i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %117, i64 %122
  store %struct.jme_buffer_info* %123, %struct.jme_buffer_info** %11, align 8
  %124 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %125 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.txdesc*, %struct.txdesc** %9, align 8
  %128 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %11, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @virt_to_page(i32 %131)
  %133 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @offset_in_page(i32 %135)
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @jme_fill_tx_map(i32 %126, %struct.txdesc* %127, %struct.jme_buffer_info* %128, i32 %132, i32 %136, i32 %137, i32 %138)
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %17, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %108
  %143 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @jme_drop_tx_map(%struct.jme_adapter* %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %142, %108
  br label %148

148:                                              ; preds = %147, %88
  %149 = load i32, i32* %17, align 4
  ret i32 %149
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @jme_fill_tx_map(i32, %struct.txdesc*, %struct.jme_buffer_info*, i32, i32, i32, i32) #1

declare dso_local i32 @skb_frag_page(i32*) #1

declare dso_local i32 @skb_frag_off(i32*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @jme_drop_tx_map(%struct.jme_adapter*, i32, i32) #1

declare dso_local i64 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @virt_to_page(i32) #1

declare dso_local i32 @offset_in_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
