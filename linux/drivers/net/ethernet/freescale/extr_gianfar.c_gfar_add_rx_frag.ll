; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_add_rx_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_add_rx_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_rx_buff = type { i64, %struct.page* }
%struct.page = type { i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_2__ = type { i32 }

@BD_LENGTH_MASK = common dso_local global i32 0, align 4
@RXBD_LAST = common dso_local global i32 0, align 4
@RXBUF_ALIGNMENT = common dso_local global i64 0, align 8
@GFAR_RXB_TRUESIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfar_rx_buff*, i32, %struct.sk_buff*, i32)* @gfar_add_rx_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_add_rx_frag(%struct.gfar_rx_buff* %0, i32 %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfar_rx_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  store %struct.gfar_rx_buff* %0, %struct.gfar_rx_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @BD_LENGTH_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %6, align 8
  %16 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %15, i32 0, i32 1
  %17 = load %struct.page*, %struct.page** %16, align 8
  store %struct.page* %17, %struct.page** %11, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @skb_put(%struct.sk_buff* %22, i32 %23)
  br label %54

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @RXBD_LAST, align 4
  %28 = call i32 @BD_LFLAG(i32 %27)
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %31, %25
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.page*, %struct.page** %11, align 8
  %46 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %6, align 8
  %47 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @RXBUF_ALIGNMENT, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i64, i64* @GFAR_RXB_TRUESIZE, align 8
  %53 = call i32 @skb_add_rx_frag(%struct.sk_buff* %40, i32 %44, %struct.page* %45, i64 %50, i32 %51, i64 %52)
  br label %54

54:                                               ; preds = %39, %21
  %55 = load %struct.page*, %struct.page** %11, align 8
  %56 = call i32 @page_count(%struct.page* %55)
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load %struct.page*, %struct.page** %11, align 8
  %60 = call i64 @page_is_pfmemalloc(%struct.page* %59)
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i1 [ true, %54 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %76

68:                                               ; preds = %62
  %69 = load i64, i64* @GFAR_RXB_TRUESIZE, align 8
  %70 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %6, align 8
  %71 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = xor i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load %struct.page*, %struct.page** %11, align 8
  %75 = call i32 @page_ref_inc(%struct.page* %74)
  store i32 1, i32* %5, align 4
  br label %76

76:                                               ; preds = %68, %67
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @BD_LFLAG(i32) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, %struct.page*, i64, i32, i64) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i64 @page_is_pfmemalloc(%struct.page*) #1

declare dso_local i32 @page_ref_inc(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
