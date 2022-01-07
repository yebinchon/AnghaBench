; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dibusb-mc-common.c_dibusb_dib3000mc_tuner_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dibusb-mc-common.c_dibusb_dib3000mc_tuner_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.dibusb_state* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.dibusb_state = type { i32 }
%struct.i2c_adapter = type { i32 }

@USB_VID_LITEON = common dso_local global i64 0, align 8
@USB_PID_LITEON_DVB_T_WARM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"LITE-ON DVB-T: Strange IF1 calibration :%2X %2X\0A\00", align 1
@USB_VID_DIBCOM = common dso_local global i64 0, align 8
@USB_PID_DIBCOM_MOD3001_WARM = common dso_local global i64 0, align 8
@mt2060_attach = common dso_local global i32 0, align 4
@stk3000p_mt2060_config = common dso_local global i32 0, align 4
@dvb_pll_attach = common dso_local global i32 0, align 4
@DVB_PLL_ENV57H1XD5 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@stk3000p_dib3000p_config = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dibusb_dib3000mc_tuner_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dibusb_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %10, i32 0, i32 2
  %12 = load %struct.dibusb_state*, %struct.dibusb_state** %11, align 8
  store %struct.dibusb_state* %12, %struct.dibusb_state** %4, align 8
  store i32 1220, i32* %7, align 4
  %13 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le16_to_cpu(i32 %20)
  %22 = load i64, i64* @USB_VID_LITEON, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %1
  %25 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le16_to_cpu(i32 %32)
  %34 = load i64, i64* @USB_PID_LITEON_DVB_T_WARM, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %24
  %37 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call i32 @dibusb_read_eeprom_byte(%struct.TYPE_8__* %39, i32 126, i32* %5)
  %41 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = call i32 @dibusb_read_eeprom_byte(%struct.TYPE_8__* %43, i32 127, i32* %6)
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %63

51:                                               ; preds = %36
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 128
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %62

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %47
  br label %133

64:                                               ; preds = %24, %1
  %65 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @le16_to_cpu(i32 %72)
  %74 = load i64, i64* @USB_VID_DIBCOM, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %132

76:                                               ; preds = %64
  %77 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @le16_to_cpu(i32 %84)
  %86 = load i64, i64* @USB_PID_DIBCOM_MOD3001_WARM, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %132

88:                                               ; preds = %76
  %89 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = call i32 @dibusb_read_eeprom_byte(%struct.TYPE_8__* %91, i32 7, i32* %9)
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %131

95:                                               ; preds = %88
  store i32 127, i32* %5, align 4
  br label %96

96:                                               ; preds = %115, %95
  %97 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @dibusb_read_eeprom_byte(%struct.TYPE_8__* %99, i32 %100, i32* %9)
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %96
  %105 = load i32, i32* %5, align 4
  %106 = icmp sgt i32 %105, 7
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %108, 255
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %9, align 4
  %112 = icmp eq i32 %111, 0
  br label %113

113:                                              ; preds = %110, %107
  %114 = phi i1 [ true, %107 ], [ %112, %110 ]
  br label %115

115:                                              ; preds = %113, %104
  %116 = phi i1 [ false, %104 ], [ %114, %113 ]
  br i1 %116, label %96, label %117

117:                                              ; preds = %115
  %118 = load i32, i32* %9, align 4
  %119 = and i32 %118, 128
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, i32* %9, align 4
  %123 = sub nsw i32 255, %122
  %124 = load i32, i32* %7, align 4
  %125 = sub nsw i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %130

126:                                              ; preds = %117
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %126, %121
  br label %131

131:                                              ; preds = %130, %88
  br label %132

132:                                              ; preds = %131, %76, %64
  br label %133

133:                                              ; preds = %132, %63
  %134 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %135 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %134, i32 0, i32 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call %struct.i2c_adapter* @dib3000mc_get_tuner_i2c_master(i32 %139, i32 1)
  store %struct.i2c_adapter* %140, %struct.i2c_adapter** %8, align 8
  %141 = load i32, i32* @mt2060_attach, align 4
  %142 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %143 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %142, i32 0, i32 0
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %149 = ptrtoint %struct.i2c_adapter* %148 to i32
  %150 = load i32, i32* %7, align 4
  %151 = call i32* @dvb_attach(i32 %141, i32 %147, i32 %149, %struct.i2c_adapter* bitcast (i32* @stk3000p_mt2060_config to %struct.i2c_adapter*), i32 %150)
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %169

153:                                              ; preds = %133
  %154 = load i32, i32* @dvb_pll_attach, align 4
  %155 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %156 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %155, i32 0, i32 0
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i64 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %162 = load i32, i32* @DVB_PLL_ENV57H1XD5, align 4
  %163 = call i32* @dvb_attach(i32 %154, i32 %160, i32 96, %struct.i2c_adapter* %161, i32 %162)
  %164 = icmp eq i32* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %153
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %180

168:                                              ; preds = %153
  br label %179

169:                                              ; preds = %133
  %170 = load %struct.dibusb_state*, %struct.dibusb_state** %4, align 8
  %171 = getelementptr inbounds %struct.dibusb_state, %struct.dibusb_state* %170, i32 0, i32 0
  store i32 1, i32* %171, align 4
  %172 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %173 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %172, i32 0, i32 0
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @dib3000mc_set_config(i32 %177, i32* @stk3000p_dib3000p_config)
  br label %179

179:                                              ; preds = %169, %168
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %179, %165
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @dibusb_read_eeprom_byte(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @warn(i8*, i32, i32) #1

declare dso_local %struct.i2c_adapter* @dib3000mc_get_tuner_i2c_master(i32, i32) #1

declare dso_local i32* @dvb_attach(i32, i32, i32, %struct.i2c_adapter*, i32) #1

declare dso_local i32 @dib3000mc_set_config(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
