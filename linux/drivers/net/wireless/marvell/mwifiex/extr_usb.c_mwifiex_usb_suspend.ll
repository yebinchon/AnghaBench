; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_card_rec = type { %struct.TYPE_8__, %struct.usb_tx_data_port*, %struct.TYPE_6__*, i32, %struct.TYPE_5__, i32, %struct.mwifiex_adapter*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.usb_tx_data_port = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.mwifiex_adapter = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"card is not valid\0A\00", align 1
@MWIFIEX_IS_SUSPENDED = common dso_local global i32 0, align 4
@WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Device already suspended\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"cmd: failed to suspend\0A\00", align 1
@MWIFIEX_IS_HS_ENABLING = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@MWIFIEX_RX_DATA_URB = common dso_local global i32 0, align 4
@MWIFIEX_TX_DATA_PORT = common dso_local global i32 0, align 4
@MWIFIEX_TX_DATA_URB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32)* @mwifiex_usb_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_usb_suspend(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_card_rec*, align 8
  %7 = alloca %struct.mwifiex_adapter*, align 8
  %8 = alloca %struct.usb_tx_data_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = call %struct.usb_card_rec* @usb_get_intfdata(%struct.usb_interface* %11)
  store %struct.usb_card_rec* %12, %struct.usb_card_rec** %6, align 8
  %13 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %14 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %13, i32 0, i32 7
  %15 = call i32 @wait_for_completion(i32* %14)
  %16 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %17 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %16, i32 0, i32 6
  %18 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %17, align 8
  store %struct.mwifiex_adapter* %18, %struct.mwifiex_adapter** %7, align 8
  %19 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %20 = icmp ne %struct.mwifiex_adapter* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %167

25:                                               ; preds = %2
  %26 = load i32, i32* @MWIFIEX_IS_SUSPENDED, align 4
  %27 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %28 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %27, i32 0, i32 0
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %34 = load i32, i32* @WARN, align 4
  %35 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %33, i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %38 = call i32 @mwifiex_enable_hs(%struct.mwifiex_adapter* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %42 = load i32, i32* @ERROR, align 4
  %43 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %41, i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @MWIFIEX_IS_HS_ENABLING, align 4
  %45 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %46 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %45, i32 0, i32 0
  %47 = call i32 @clear_bit(i32 %44, i32* %46)
  %48 = load i32, i32* @EFAULT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %167

50:                                               ; preds = %36
  %51 = load i32, i32* @MWIFIEX_IS_SUSPENDED, align 4
  %52 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %53 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %52, i32 0, i32 0
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  %55 = load i32, i32* @MWIFIEX_IS_HS_ENABLING, align 4
  %56 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %57 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %56, i32 0, i32 0
  %58 = call i32 @clear_bit(i32 %55, i32* %57)
  %59 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %60 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %59, i32 0, i32 5
  %61 = call i64 @atomic_read(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %50
  %64 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %65 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %71 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @usb_kill_urb(i64 %73)
  br label %75

75:                                               ; preds = %69, %63, %50
  %76 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %77 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %76, i32 0, i32 3
  %78 = call i64 @atomic_read(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %75
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %106, %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @MWIFIEX_RX_DATA_URB, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %109

85:                                               ; preds = %81
  %86 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %87 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %85
  %96 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %97 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @usb_kill_urb(i64 %103)
  br label %105

105:                                              ; preds = %95, %85
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %81

109:                                              ; preds = %81
  br label %110

110:                                              ; preds = %109, %75
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %151, %110
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @MWIFIEX_TX_DATA_PORT, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %154

115:                                              ; preds = %111
  %116 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %117 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %116, i32 0, i32 1
  %118 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %118, i64 %120
  store %struct.usb_tx_data_port* %121, %struct.usb_tx_data_port** %8, align 8
  store i32 0, i32* %10, align 4
  br label %122

122:                                              ; preds = %147, %115
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @MWIFIEX_TX_DATA_URB, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %150

126:                                              ; preds = %122
  %127 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %8, align 8
  %128 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %126
  %137 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %8, align 8
  %138 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %137, i32 0, i32 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @usb_kill_urb(i64 %144)
  br label %146

146:                                              ; preds = %136, %126
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  br label %122

150:                                              ; preds = %122
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %111

154:                                              ; preds = %111
  %155 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %156 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %162 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @usb_kill_urb(i64 %164)
  br label %166

166:                                              ; preds = %160, %154
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %40, %21
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local %struct.usb_card_rec* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @mwifiex_enable_hs(%struct.mwifiex_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @usb_kill_urb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
