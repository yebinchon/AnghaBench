; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_get_echo_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_get_echo_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ican3_dev = type { i32, i32 }
%struct.sk_buff = type { i64, i32, i32, i32, i64 }
%struct.can_frame = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"BUG: echo skb not occupied\0A\00", align 1
@PACKET_LOOPBACK = common dso_local global i64 0, align 8
@ETH_P_CAN = common dso_local global i32 0, align 4
@PACKET_BROADCAST = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ican3_dev*)* @ican3_get_echo_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ican3_get_echo_skb(%struct.ican3_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ican3_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca i32, align 4
  store %struct.ican3_dev* %0, %struct.ican3_dev** %3, align 8
  %7 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %8 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %7, i32 0, i32 1
  %9 = call %struct.sk_buff* @skb_dequeue(i32* %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %14 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @netdev_err(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %53

17:                                               ; preds = %1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.can_frame*
  store %struct.can_frame* %21, %struct.can_frame** %5, align 8
  %22 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %23 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PACKET_LOOPBACK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @kfree_skb(%struct.sk_buff* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %53

34:                                               ; preds = %17
  %35 = load i32, i32* @ETH_P_CAN, align 4
  %36 = call i32 @htons(i32 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* @PACKET_BROADCAST, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %46 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @netif_receive_skb(%struct.sk_buff* %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %34, %30, %12
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
