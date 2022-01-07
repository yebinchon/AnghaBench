; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_usb_mcu.c_mt76x02u_mcu_wr_rp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_usb_mcu.c_mt76x02u_mcu_wr_rp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mt76_reg_pair = type { i64, i64 }
%struct.sk_buff = type { i32 }

@MT_INBAND_PACKET_MAX_LEN = common dso_local global i32 0, align 4
@MT_DMA_HDR_LEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, i64, %struct.mt76_reg_pair*, i32)* @mt76x02u_mcu_wr_rp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x02u_mcu_wr_rp(%struct.mt76_dev* %0, i64 %1, %struct.mt76_reg_pair* %2, i32 %3) #0 {
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
  store i32 12, i32* %10, align 4
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
  br label %102

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @min(i32 %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = mul nsw i32 %28, 8
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @MT_DMA_HDR_LEN, align 8
  %32 = add nsw i64 %30, %31
  %33 = add nsw i64 %32, 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.sk_buff* @alloc_skb(i64 %33, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %13, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %24
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %102

41:                                               ; preds = %24
  %42 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %43 = load i64, i64* @MT_DMA_HDR_LEN, align 8
  %44 = call i32 @skb_reserve(%struct.sk_buff* %42, i64 %43)
  store i32 0, i32* %15, align 4
  br label %45

45:                                               ; preds = %68, %41
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %8, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %52, i64 %54
  %56 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %51, %57
  %59 = call i32 @skb_put_le32(%struct.sk_buff* %50, i64 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %61 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %8, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %61, i64 %63
  %65 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @skb_put_le32(%struct.sk_buff* %60, i64 %66)
  br label %68

68:                                               ; preds = %49
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  br label %45

71:                                               ; preds = %45
  %72 = load %struct.mt76_usb*, %struct.mt76_usb** %12, align 8
  %73 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @mutex_lock(i32* %74)
  %76 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @__mt76x02u_mcu_send_msg(%struct.mt76_dev* %76, %struct.sk_buff* %77, i32 12, i32 %81)
  store i32 %82, i32* %16, align 4
  %83 = load %struct.mt76_usb*, %struct.mt76_usb** %12, align 8
  %84 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %71
  %90 = load i32, i32* %16, align 4
  store i32 %90, i32* %5, align 4
  br label %102

91:                                               ; preds = %71
  %92 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %8, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %94, i64 %96
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %14, align 4
  %100 = sub nsw i32 %98, %99
  %101 = call i32 @mt76x02u_mcu_wr_rp(%struct.mt76_dev* %92, i64 %93, %struct.mt76_reg_pair* %97, i32 %100)
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %91, %89, %38, %23
  %103 = load i32, i32* %5, align 4
  ret i32 %103
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
