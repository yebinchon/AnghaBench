; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@CHECKSUM_NONE = common dso_local global i32 0, align 4
@AQ_RX_PD_L4_ERR = common dso_local global i32 0, align 4
@AQ_RX_PD_L3_ERR = common dso_local global i32 0, align 4
@AQ_RX_PD_L4_TYPE_MASK = common dso_local global i32 0, align 4
@AQ_RX_PD_L4_TCP = common dso_local global i32 0, align 4
@AQ_RX_PD_L4_UDP = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32)* @aqc111_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aqc111_rx_checksum(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @CHECKSUM_NONE, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @AQ_RX_PD_L4_ERR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @AQ_RX_PD_L3_ERR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %2
  br label %34

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @AQ_RX_PD_L4_TYPE_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @AQ_RX_PD_L4_TCP, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @AQ_RX_PD_L4_UDP, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %19
  %31 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %18, %30, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
