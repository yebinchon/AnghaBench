; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_tx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_tx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }

@SMSC75XX_TX_OVERHEAD = common dso_local global i32 0, align 4
@TX_CMD_A_LEN = common dso_local global i32 0, align 4
@TX_CMD_A_FCS = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@TX_CMD_A_IPE = common dso_local global i32 0, align 4
@TX_CMD_A_TPE = common dso_local global i32 0, align 4
@TX_MSS_MIN = common dso_local global i32 0, align 4
@TX_CMD_B_MSS_SHIFT = common dso_local global i32 0, align 4
@TX_CMD_B_MSS = common dso_local global i32 0, align 4
@TX_CMD_A_LSO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.usbnet*, %struct.sk_buff*, i32)* @smsc75xx_tx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @smsc75xx_tx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = load i32, i32* @SMSC75XX_TX_OVERHEAD, align 4
  %14 = call i64 @skb_cow_head(%struct.sk_buff* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %17)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %69

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TX_CMD_A_LEN, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @TX_CMD_A_FCS, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %19
  %33 = load i32, i32* @TX_CMD_A_IPE, align 4
  %34 = load i32, i32* @TX_CMD_A_TPE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %32, %19
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call i64 @skb_is_gso(%struct.sk_buff* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TX_MSS_MIN, align 4
  %48 = call i32 @max(i32 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @TX_CMD_B_MSS_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* @TX_CMD_B_MSS, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @TX_CMD_A_LSO, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %58

57:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %57, %42
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call i8* @skb_push(%struct.sk_buff* %59, i32 8)
  store i8* %60, i8** %10, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @put_unaligned_le32(i32 %61, i8* %62)
  %64 = load i32, i32* %9, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr i8, i8* %65, i64 4
  %67 = call i32 @put_unaligned_le32(i32 %64, i8* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %68, %struct.sk_buff** %4, align 8
  br label %69

69:                                               ; preds = %58, %16
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %70
}

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
