; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_append_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_append_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.Vmxnet3_RxCompDesc = type { i32 }
%struct.vmxnet3_rx_buf_info = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.Vmxnet3_RxCompDesc*, %struct.vmxnet3_rx_buf_info*)* @vmxnet3_append_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_append_frag(%struct.sk_buff* %0, %struct.Vmxnet3_RxCompDesc* %1, %struct.vmxnet3_rx_buf_info* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.Vmxnet3_RxCompDesc*, align 8
  %6 = alloca %struct.vmxnet3_rx_buf_info*, align 8
  %7 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.Vmxnet3_RxCompDesc* %1, %struct.Vmxnet3_RxCompDesc** %5, align 8
  store %struct.vmxnet3_rx_buf_info* %2, %struct.vmxnet3_rx_buf_info** %6, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %11, i64 %16
  store i32* %17, i32** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %24 = icmp sge i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %6, align 8
  %29 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @__skb_frag_set_page(i32* %27, i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @skb_frag_off_set(i32* %32, i32 0)
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.Vmxnet3_RxCompDesc*, %struct.Vmxnet3_RxCompDesc** %5, align 8
  %36 = getelementptr inbounds %struct.Vmxnet3_RxCompDesc, %struct.Vmxnet3_RxCompDesc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @skb_frag_size_set(i32* %34, i32 %37)
  %39 = load %struct.Vmxnet3_RxCompDesc*, %struct.Vmxnet3_RxCompDesc** %5, align 8
  %40 = getelementptr inbounds %struct.Vmxnet3_RxCompDesc, %struct.Vmxnet3_RxCompDesc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  ret void
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__skb_frag_set_page(i32*, i32) #1

declare dso_local i32 @skb_frag_off_set(i32*, i32) #1

declare dso_local i32 @skb_frag_size_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
