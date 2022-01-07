; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_tx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64 }
%struct.usb_card_rec = type { %struct.usb_tx_data_port*, %struct.TYPE_5__, i32 }
%struct.usb_tx_data_port = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_6__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i64, %struct.usb_tx_data_port*, %struct.mwifiex_adapter* }
%struct.TYPE_6__ = type { i64, i8*, %struct.mwifiex_adapter* }
%struct.TYPE_5__ = type { i8*, i32, %struct.mwifiex_adapter* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWIFIEX_TX_DATA_PORT = common dso_local global i32 0, align 4
@MWIFIEX_USB_EP_DATA = common dso_local global i64 0, align 8
@MWIFIEX_TX_DATA_URB = common dso_local global i32 0, align 4
@mwifiex_usb_tx_aggr_tmo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_usb_tx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_usb_tx_init(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.usb_card_rec*, align 8
  %5 = alloca %struct.usb_tx_data_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.usb_card_rec*
  store %struct.usb_card_rec* %11, %struct.usb_card_rec** %4, align 8
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %13 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %14 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  store %struct.mwifiex_adapter* %12, %struct.mwifiex_adapter** %15, align 8
  %16 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %17 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %20 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @usb_alloc_urb(i32 0, i32 %22)
  %24 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %25 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %28 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %148

35:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %144, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MWIFIEX_TX_DATA_PORT, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %147

40:                                               ; preds = %36
  %41 = load %struct.usb_card_rec*, %struct.usb_card_rec** %4, align 8
  %42 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %41, i32 0, i32 0
  %43 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %43, i64 %45
  store %struct.usb_tx_data_port* %46, %struct.usb_tx_data_port** %5, align 8
  %47 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %5, align 8
  %48 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  br label %144

52:                                               ; preds = %40
  %53 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %5, align 8
  %54 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %5, align 8
  %56 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = call i32 @skb_queue_head_init(i32* %57)
  %59 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %5, align 8
  %60 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MWIFIEX_USB_EP_DATA, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %5, align 8
  %66 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %65, i32 0, i32 1
  store i32 0, i32* %66, align 8
  br label %70

67:                                               ; preds = %52
  %68 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %5, align 8
  %69 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %68, i32 0, i32 1
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %64
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %116, %70
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @MWIFIEX_TX_DATA_URB, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %119

75:                                               ; preds = %71
  %76 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %77 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %5, align 8
  %78 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %77, i32 0, i32 3
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  store %struct.mwifiex_adapter* %76, %struct.mwifiex_adapter** %83, align 8
  %84 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %5, align 8
  %85 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %5, align 8
  %88 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %87, i32 0, i32 3
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i64 %86, i64* %93, align 8
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call i8* @usb_alloc_urb(i32 0, i32 %94)
  %96 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %5, align 8
  %97 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %96, i32 0, i32 3
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i8* %95, i8** %102, align 8
  %103 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %5, align 8
  %104 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %103, i32 0, i32 3
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %75
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %148

115:                                              ; preds = %75
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %71

119:                                              ; preds = %71
  %120 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %121 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %5, align 8
  %122 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 4
  store %struct.mwifiex_adapter* %120, %struct.mwifiex_adapter** %124, align 8
  %125 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %5, align 8
  %126 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %5, align 8
  %127 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 3
  store %struct.usb_tx_data_port* %125, %struct.usb_tx_data_port** %129, align 8
  %130 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %5, align 8
  %131 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  %134 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %5, align 8
  %135 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  store i64 0, i64* %137, align 8
  %138 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %5, align 8
  %139 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i32, i32* @mwifiex_usb_tx_aggr_tmo, align 4
  %143 = call i32 @timer_setup(i32* %141, i32 %142, i32 0)
  br label %144

144:                                              ; preds = %119, %51
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %36

147:                                              ; preds = %36
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %112, %32
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
