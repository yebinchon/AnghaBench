; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_card_rec = type { %struct.TYPE_8__, %struct.usb_tx_data_port*, %struct.TYPE_6__*, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.usb_tx_data_port = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }

@MWIFIEX_RX_DATA_URB = common dso_local global i32 0, align 4
@MWIFIEX_TX_DATA_PORT = common dso_local global i32 0, align 4
@MWIFIEX_TX_DATA_URB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_card_rec*)* @mwifiex_usb_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_usb_free(%struct.usb_card_rec* %0) #0 {
  %2 = alloca %struct.usb_card_rec*, align 8
  %3 = alloca %struct.usb_tx_data_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_card_rec* %0, %struct.usb_card_rec** %2, align 8
  %6 = load %struct.usb_card_rec*, %struct.usb_card_rec** %2, align 8
  %7 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %6, i32 0, i32 5
  %8 = call i64 @atomic_read(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.usb_card_rec*, %struct.usb_card_rec** %2, align 8
  %12 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load %struct.usb_card_rec*, %struct.usb_card_rec** %2, align 8
  %18 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @usb_kill_urb(i32* %20)
  br label %22

22:                                               ; preds = %16, %10, %1
  %23 = load %struct.usb_card_rec*, %struct.usb_card_rec** %2, align 8
  %24 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @usb_free_urb(i32* %26)
  %28 = load %struct.usb_card_rec*, %struct.usb_card_rec** %2, align 8
  %29 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load %struct.usb_card_rec*, %struct.usb_card_rec** %2, align 8
  %32 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %31, i32 0, i32 3
  %33 = call i64 @atomic_read(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %61, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @MWIFIEX_RX_DATA_URB, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %36
  %41 = load %struct.usb_card_rec*, %struct.usb_card_rec** %2, align 8
  %42 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %40
  %51 = load %struct.usb_card_rec*, %struct.usb_card_rec** %2, align 8
  %52 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @usb_kill_urb(i32* %58)
  br label %60

60:                                               ; preds = %50, %40
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %36

64:                                               ; preds = %36
  br label %65

65:                                               ; preds = %64, %22
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %87, %65
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @MWIFIEX_RX_DATA_URB, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %66
  %71 = load %struct.usb_card_rec*, %struct.usb_card_rec** %2, align 8
  %72 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @usb_free_urb(i32* %78)
  %80 = load %struct.usb_card_rec*, %struct.usb_card_rec** %2, align 8
  %81 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %70
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %66

90:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %136, %90
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @MWIFIEX_TX_DATA_PORT, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %139

95:                                               ; preds = %91
  %96 = load %struct.usb_card_rec*, %struct.usb_card_rec** %2, align 8
  %97 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %96, i32 0, i32 1
  %98 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %98, i64 %100
  store %struct.usb_tx_data_port* %101, %struct.usb_tx_data_port** %3, align 8
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %132, %95
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @MWIFIEX_TX_DATA_URB, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %135

106:                                              ; preds = %102
  %107 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %3, align 8
  %108 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @usb_kill_urb(i32* %114)
  %116 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %3, align 8
  %117 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @usb_free_urb(i32* %123)
  %125 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %3, align 8
  %126 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %125, i32 0, i32 0
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  store i32* null, i32** %131, align 8
  br label %132

132:                                              ; preds = %106
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %102

135:                                              ; preds = %102
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %4, align 4
  br label %91

139:                                              ; preds = %91
  %140 = load %struct.usb_card_rec*, %struct.usb_card_rec** %2, align 8
  %141 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @usb_free_urb(i32* %143)
  %145 = load %struct.usb_card_rec*, %struct.usb_card_rec** %2, align 8
  %146 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  store i32* null, i32** %147, align 8
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
