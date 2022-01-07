; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_tx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_tx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.sk_buff = type { i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@SMSC95XX_TX_OVERHEAD_CSUM = common dso_local global i32 0, align 4
@SMSC95XX_TX_OVERHEAD = common dso_local global i32 0, align 4
@TX_CMD_A_FIRST_SEG_ = common dso_local global i32 0, align 4
@TX_CMD_A_LAST_SEG_ = common dso_local global i32 0, align 4
@TX_CMD_B_CSUM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.usbnet*, %struct.sk_buff*, i32)* @smsc95xx_tx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @smsc95xx_tx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @SMSC95XX_TX_OVERHEAD_CSUM, align 4
  br label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @SMSC95XX_TX_OVERHEAD, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %9, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @skb_cow_head(%struct.sk_buff* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %40)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %111

42:                                               ; preds = %28
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @TX_CMD_A_FIRST_SEG_, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @TX_CMD_A_LAST_SEG_, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %100

54:                                               ; preds = %42
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call i32 @smsc95xx_can_tx_checksum(%struct.sk_buff* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %84, label %58

58:                                               ; preds = %54
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call i64 @skb_checksum_start_offset(%struct.sk_buff* %59)
  store i64 %60, i64* %13, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %13, align 8
  %65 = add nsw i64 %63, %64
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %13, align 8
  %70 = sub nsw i64 %68, %69
  %71 = call i32 @csum_partial(i64 %65, i64 %70, i32 0)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @csum_fold(i32 %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %13, align 8
  %78 = add nsw i64 %76, %77
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = inttoptr i64 %82 to i32*
  store i32 %73, i32* %83, align 4
  store i32 0, i32* %8, align 4
  br label %99

84:                                               ; preds = %54
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = call i32 @smsc95xx_calc_csum_preamble(%struct.sk_buff* %85)
  store i32 %86, i32* %15, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = call i8* @skb_push(%struct.sk_buff* %87, i32 4)
  store i8* %88, i8** %12, align 8
  %89 = load i32, i32* %15, align 4
  %90 = load i8*, i8** %12, align 8
  %91 = call i32 @put_unaligned_le32(i32 %89, i8* %90)
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 4
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 4
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* @TX_CMD_B_CSUM_ENABLE, align 4
  %97 = load i32, i32* %11, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %84, %58
  br label %100

100:                                              ; preds = %99, %42
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = call i8* @skb_push(%struct.sk_buff* %101, i32 8)
  store i8* %102, i8** %12, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 @put_unaligned_le32(i32 %103, i8* %104)
  %106 = load i32, i32* %11, align 4
  %107 = load i8*, i8** %12, align 8
  %108 = getelementptr i8, i8* %107, i64 4
  %109 = call i32 @put_unaligned_le32(i32 %106, i8* %108)
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %110, %struct.sk_buff** %4, align 8
  br label %111

111:                                              ; preds = %100, %39
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %112
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @smsc95xx_can_tx_checksum(%struct.sk_buff*) #1

declare dso_local i64 @skb_checksum_start_offset(%struct.sk_buff*) #1

declare dso_local i32 @csum_partial(i64, i64, i32) #1

declare dso_local i32 @csum_fold(i32) #1

declare dso_local i32 @smsc95xx_calc_csum_preamble(%struct.sk_buff*) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
