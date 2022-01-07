; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rx_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32 }
%struct.sk_buff = type { i32, i64 }

@MVPP2_RXD_L3_IP4 = common dso_local global i32 0, align 4
@MVPP2_RXD_IP4_HEADER_ERR = common dso_local global i32 0, align 4
@MVPP2_RXD_L3_IP6 = common dso_local global i32 0, align 4
@MVPP2_RXD_L4_UDP = common dso_local global i32 0, align 4
@MVPP2_RXD_L4_TCP = common dso_local global i32 0, align 4
@MVPP2_RXD_L4_CSUM_OK = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, i32, %struct.sk_buff*)* @mvpp2_rx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_rx_csum(%struct.mvpp2_port* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MVPP2_RXD_L3_IP4, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MVPP2_RXD_IP4_HEADER_ERR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11, %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MVPP2_RXD_L3_IP6, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %16, %11
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MVPP2_RXD_L4_UDP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MVPP2_RXD_L4_TCP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @MVPP2_RXD_L4_CSUM_OK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %47

42:                                               ; preds = %31, %26
  br label %43

43:                                               ; preds = %42, %16
  %44 = load i32, i32* @CHECKSUM_NONE, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
