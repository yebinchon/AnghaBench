; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_rx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64 }
%struct.usb_card_rec = type { %struct.TYPE_2__*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32, %struct.mwifiex_adapter*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWIFIEX_RX_CMD_BUF_SIZE = common dso_local global i32 0, align 4
@MWIFIEX_RX_DATA_URB = common dso_local global i32 0, align 4
@MWIFIEX_RX_DATA_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_usb_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_usb_rx_init(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.usb_card_rec*, align 8
  %5 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %6 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.usb_card_rec*
  store %struct.usb_card_rec* %9, %struct.usb_card_rec** %4, align 8
  %10 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %11 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %12 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store %struct.mwifiex_adapter* %10, %struct.mwifiex_adapter** %13, align 8
  %14 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %15 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %18 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @usb_alloc_urb(i32 0, i32 %20)
  %22 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %23 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %26 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %113

33:                                               ; preds = %1
  %34 = load i32, i32* @MWIFIEX_RX_CMD_BUF_SIZE, align 4
  %35 = call i32 @dev_alloc_skb(i32 %34)
  %36 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %37 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 8
  %39 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %40 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %113

47:                                               ; preds = %33
  %48 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %49 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %48, i32 0, i32 2
  %50 = load i32, i32* @MWIFIEX_RX_CMD_BUF_SIZE, align 4
  %51 = call i64 @mwifiex_usb_submit_rx_urb(%struct.TYPE_2__* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 -1, i32* %2, align 4
  br label %113

54:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %109, %54
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @MWIFIEX_RX_DATA_URB, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %112

59:                                               ; preds = %55
  %60 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %61 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %62 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store %struct.mwifiex_adapter* %60, %struct.mwifiex_adapter** %67, align 8
  %68 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %69 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %72 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %70, i32* %77, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i8* @usb_alloc_urb(i32 0, i32 %78)
  %80 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %81 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i8* %79, i8** %86, align 8
  %87 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %88 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %59
  store i32 -1, i32* %2, align 4
  br label %113

97:                                               ; preds = %59
  %98 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %99 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = load i32, i32* @MWIFIEX_RX_DATA_BUF_SIZE, align 4
  %105 = call i64 @mwifiex_usb_submit_rx_urb(%struct.TYPE_2__* %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  store i32 -1, i32* %2, align 4
  br label %113

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %55

112:                                              ; preds = %55
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %107, %96, %53, %44, %30
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @dev_alloc_skb(i32) #1

declare dso_local i64 @mwifiex_usb_submit_rx_urb(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
