; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_usb_mcu.c_mt76x02u_mcu_rd_rp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_usb_mcu.c_mt76x02u_mcu_rd_rp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.mt76_reg_pair*, i64 }
%struct.mt76_reg_pair = type { i64, i64 }
%struct.sk_buff = type { i32 }

@MT_INBAND_PACKET_MAX_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MT_DMA_HDR_LEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, i64, %struct.mt76_reg_pair*, i32)* @mt76x02u_mcu_rd_rp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x02u_mcu_rd_rp(%struct.mt76_dev* %0, i64 %1, %struct.mt76_reg_pair* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt76_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mt76_reg_pair*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mt76_usb*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.mt76_reg_pair* %2, %struct.mt76_reg_pair** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 10, i32* %10, align 4
  %17 = load i32, i32* @MT_INBAND_PACKET_MAX_LEN, align 4
  %18 = sdiv i32 %17, 8
  store i32 %18, i32* %11, align 4
  %19 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %20 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %19, i32 0, i32 0
  store %struct.mt76_usb* %20, %struct.mt76_usb** %12, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %109

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @min(i32 %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %109

34:                                               ; preds = %24
  %35 = load i32, i32* %14, align 4
  %36 = mul nsw i32 %35, 8
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @MT_DMA_HDR_LEN, align 8
  %39 = add nsw i64 %37, %38
  %40 = add nsw i64 %39, 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.sk_buff* @alloc_skb(i64 %40, i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %13, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %109

48:                                               ; preds = %34
  %49 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %50 = load i64, i64* @MT_DMA_HDR_LEN, align 8
  %51 = call i32 @skb_reserve(%struct.sk_buff* %49, i64 %50)
  store i32 0, i32* %15, align 4
  br label %52

52:                                               ; preds = %75, %48
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %52
  %57 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %8, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %59, i64 %61
  %63 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %58, %64
  %66 = call i32 @skb_put_le32(%struct.sk_buff* %57, i64 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %68 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %8, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %68, i64 %70
  %72 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @skb_put_le32(%struct.sk_buff* %67, i64 %73)
  br label %75

75:                                               ; preds = %56
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %15, align 4
  br label %52

78:                                               ; preds = %52
  %79 = load %struct.mt76_usb*, %struct.mt76_usb** %12, align 8
  %80 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = call i32 @mutex_lock(i32* %81)
  %83 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %8, align 8
  %84 = load %struct.mt76_usb*, %struct.mt76_usb** %12, align 8
  %85 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  store %struct.mt76_reg_pair* %83, %struct.mt76_reg_pair** %86, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.mt76_usb*, %struct.mt76_usb** %12, align 8
  %89 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load %struct.mt76_usb*, %struct.mt76_usb** %12, align 8
  %93 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 4
  store i64 %91, i64* %94, align 8
  %95 = load %struct.mt76_usb*, %struct.mt76_usb** %12, align 8
  %96 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i32 0, i32* %97, align 4
  %98 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %100 = call i32 @__mt76x02u_mcu_send_msg(%struct.mt76_dev* %98, %struct.sk_buff* %99, i32 10, i32 1)
  store i32 %100, i32* %16, align 4
  %101 = load %struct.mt76_usb*, %struct.mt76_usb** %12, align 8
  %102 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  store %struct.mt76_reg_pair* null, %struct.mt76_reg_pair** %103, align 8
  %104 = load %struct.mt76_usb*, %struct.mt76_usb** %12, align 8
  %105 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %78, %45, %31, %23
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put_le32(%struct.sk_buff*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__mt76x02u_mcu_send_msg(%struct.mt76_dev*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
