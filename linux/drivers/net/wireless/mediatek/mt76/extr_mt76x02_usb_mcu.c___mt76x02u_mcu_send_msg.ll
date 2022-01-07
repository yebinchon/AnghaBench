; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_usb_mcu.c___mt76x02u_mcu_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_usb_mcu.c___mt76x02u_mcu_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, %struct.mt76_usb }
%struct.mt76_usb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i32 }

@MT76_REMOVED = common dso_local global i32 0, align 4
@MT_MCU_MSG_CMD_SEQ = common dso_local global i32 0, align 4
@MT_MCU_MSG_CMD_TYPE = common dso_local global i32 0, align 4
@MT_MCU_MSG_TYPE_CMD = common dso_local global i32 0, align 4
@CPU_TX_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, %struct.sk_buff*, i32, i32)* @__mt76x02u_mcu_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mt76x02u_mcu_send_msg(%struct.mt76_dev* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt76_dev*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mt76_usb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %15 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %14, i32 0, i32 1
  store %struct.mt76_usb* %15, %struct.mt76_usb** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* @MT76_REMOVED, align 4
  %17 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %18 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %17, i32 0, i32 0
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %84

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load %struct.mt76_usb*, %struct.mt76_usb** %10, align 8
  %27 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = and i32 %30, 15
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %25
  %35 = load %struct.mt76_usb*, %struct.mt76_usb** %10, align 8
  %36 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = and i32 %39, 15
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %34, %25
  br label %42

42:                                               ; preds = %41, %22
  %43 = load i32, i32* @MT_MCU_MSG_CMD_SEQ, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @FIELD_PREP(i32 %43, i32 %44)
  %46 = load i32, i32* @MT_MCU_MSG_CMD_TYPE, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @FIELD_PREP(i32 %46, i32 %47)
  %49 = or i32 %45, %48
  %50 = load i32, i32* @MT_MCU_MSG_TYPE_CMD, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %13, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = load i32, i32* @CPU_TX_PORT, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @mt76x02u_skb_dma_info(%struct.sk_buff* %52, i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %42
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %84

60:                                               ; preds = %42
  %61 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mt76u_bulk_msg(%struct.mt76_dev* %61, i32 %64, i32 %67, i32* null, i32 500)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %5, align 4
  br label %84

73:                                               ; preds = %60
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @mt76x02u_mcu_wait_resp(%struct.mt76_dev* %77, i32 %78)
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = call i32 @consume_skb(%struct.sk_buff* %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %80, %71, %58, %21
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76x02u_skb_dma_info(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @mt76u_bulk_msg(%struct.mt76_dev*, i32, i32, i32*, i32) #1

declare dso_local i32 @mt76x02u_mcu_wait_resp(%struct.mt76_dev*, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
