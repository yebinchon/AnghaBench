; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@CHECKSUM_NONE = common dso_local global i32 0, align 4
@AX_RXHDR_L3CSUM_ERR = common dso_local global i32 0, align 4
@AX_RXHDR_L4CSUM_ERR = common dso_local global i32 0, align 4
@AX_RXHDR_L4_TYPE_MASK = common dso_local global i32 0, align 4
@AX_RXHDR_L4_TYPE_TCP = common dso_local global i32 0, align 4
@AX_RXHDR_L4_TYPE_UDP = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32*)* @ax88179_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ax88179_rx_checksum(%struct.sk_buff* %0, i32* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @CHECKSUM_NONE, align 4
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AX_RXHDR_L3CSUM_ERR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AX_RXHDR_L4CSUM_ERR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %2
  br label %38

20:                                               ; preds = %13
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AX_RXHDR_L4_TYPE_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @AX_RXHDR_L4_TYPE_TCP, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AX_RXHDR_L4_TYPE_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @AX_RXHDR_L4_TYPE_UDP, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27, %20
  %35 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %19, %34, %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
