; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_b43_poison_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_b43_poison_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { i64, i64 }
%struct.sk_buff = type { i8* }
%struct.b43_rxhdr_fw4 = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_dmaring*, %struct.sk_buff*)* @b43_poison_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_poison_rx_buffer(%struct.b43_dmaring* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.b43_dmaring*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.b43_rxhdr_fw4*, align 8
  %6 = alloca i8*, align 8
  store %struct.b43_dmaring* %0, %struct.b43_dmaring** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.b43_rxhdr_fw4*
  store %struct.b43_rxhdr_fw4* %10, %struct.b43_rxhdr_fw4** %5, align 8
  %11 = load %struct.b43_rxhdr_fw4*, %struct.b43_rxhdr_fw4** %5, align 8
  %12 = getelementptr inbounds %struct.b43_rxhdr_fw4, %struct.b43_rxhdr_fw4* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %14 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %17 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %18, 4
  %20 = add i64 %19, 2
  %21 = icmp ult i64 %15, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @B43_WARN_ON(i32 %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %28 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @memset(i8* %31, i32 255, i32 6)
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
