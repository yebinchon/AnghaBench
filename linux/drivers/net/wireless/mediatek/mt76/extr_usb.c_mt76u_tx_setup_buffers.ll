; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_tx_setup_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_tx_setup_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.urb = type { i32, i32, i32, i32 }

@MT_TX_SG_MAX_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, %struct.sk_buff*, %struct.urb*)* @mt76u_tx_setup_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76u_tx_setup_buffers(%struct.mt76_dev* %0, %struct.sk_buff* %1, %struct.urb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt76_dev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.urb*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.urb* %2, %struct.urb** %7, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.urb*, %struct.urb** %7, align 8
  %12 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %14 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.urb*, %struct.urb** %7, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  store i32 0, i32* %4, align 4
  br label %51

24:                                               ; preds = %3
  %25 = load %struct.urb*, %struct.urb** %7, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MT_TX_SG_MAX_SIZE, align 4
  %29 = call i32 @sg_init_table(i32 %27, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load %struct.urb*, %struct.urb** %7, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @skb_to_sgvec(%struct.sk_buff* %30, i32 %33, i32 0, i32 %36)
  %38 = load %struct.urb*, %struct.urb** %7, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.urb*, %struct.urb** %7, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %24
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %51

47:                                               ; preds = %24
  %48 = load %struct.urb*, %struct.urb** %7, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %44, %18
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local i32 @skb_to_sgvec(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
