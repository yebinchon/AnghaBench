; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_add_rx_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_add_rx_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_rx_buffer = type { i32, %struct.page* }
%struct.page = type { i32 }
%union.fm10k_rx_desc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@FM10K_RX_BUFSZ = common dso_local global i32 0, align 4
@FM10K_RX_HDR_LEN = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_rx_buffer*, i32, %union.fm10k_rx_desc*, %struct.sk_buff*)* @fm10k_add_rx_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_add_rx_frag(%struct.fm10k_rx_buffer* %0, i32 %1, %union.fm10k_rx_desc* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fm10k_rx_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.fm10k_rx_desc*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fm10k_rx_buffer* %0, %struct.fm10k_rx_buffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store %union.fm10k_rx_desc* %2, %union.fm10k_rx_desc** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %14 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %6, align 8
  %15 = getelementptr inbounds %struct.fm10k_rx_buffer, %struct.fm10k_rx_buffer* %14, i32 0, i32 1
  %16 = load %struct.page*, %struct.page** %15, align 8
  store %struct.page* %16, %struct.page** %10, align 8
  %17 = load %struct.page*, %struct.page** %10, align 8
  %18 = call i8* @page_address(%struct.page* %17)
  %19 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.fm10k_rx_buffer, %struct.fm10k_rx_buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %18, i64 %22
  store i8* %23, i8** %11, align 8
  %24 = load i32, i32* @FM10K_RX_BUFSZ, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = call i32 @skb_is_nonlinear(%struct.sk_buff* %25)
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %77

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @FM10K_RX_HDR_LEN, align 4
  %33 = icmp ule i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @__skb_put(%struct.sk_buff* %38, i32 %39)
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @ALIGN(i32 %42, i32 8)
  %44 = call i32 @memcpy(i32 %40, i8* %41, i32 %43)
  %45 = load %struct.page*, %struct.page** %10, align 8
  %46 = call i32 @fm10k_page_is_reserved(%struct.page* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @likely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %96

53:                                               ; preds = %37
  %54 = load %struct.page*, %struct.page** %10, align 8
  %55 = call i32 @__free_page(%struct.page* %54)
  store i32 0, i32* %5, align 4
  br label %96

56:                                               ; preds = %30
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* @FM10K_RX_HDR_LEN, align 4
  %62 = call i32 @eth_get_headlen(i32 %59, i8* %60, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @__skb_put(%struct.sk_buff* %63, i32 %64)
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @ALIGN(i32 %67, i32 8)
  %69 = call i32 @memcpy(i32 %65, i8* %66, i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = load i8*, i8** %11, align 8
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %11, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %7, align 4
  %76 = sub i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %56, %29
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %80 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.page*, %struct.page** %10, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = ptrtoint i8* %84 to i64
  %86 = load i64, i64* @PAGE_MASK, align 8
  %87 = xor i64 %86, -1
  %88 = and i64 %85, %87
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @skb_add_rx_frag(%struct.sk_buff* %78, i32 %82, %struct.page* %83, i64 %88, i32 %89, i32 %90)
  %92 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %6, align 8
  %93 = load %struct.page*, %struct.page** %10, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @fm10k_can_reuse_rx_page(%struct.fm10k_rx_buffer* %92, %struct.page* %93, i32 %94)
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %77, %53, %52
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @fm10k_page_is_reserved(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @eth_get_headlen(i32, i8*, i32) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, %struct.page*, i64, i32, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @fm10k_can_reuse_rx_page(%struct.fm10k_rx_buffer*, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
