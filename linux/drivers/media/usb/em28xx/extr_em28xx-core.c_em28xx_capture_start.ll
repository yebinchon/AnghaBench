; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-core.c_em28xx_capture_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-core.c_em28xx_capture_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, i64, i32, i64, i64, i64 }
%struct.em28xx_led = type { i32, i32, i32 }

@CHIP_ID_EM2874 = common dso_local global i64 0, align 8
@CHIP_ID_EM2884 = common dso_local global i64 0, align 8
@CHIP_ID_EM28174 = common dso_local global i64 0, align 8
@CHIP_ID_EM28178 = common dso_local global i64 0, align 8
@PRIMARY_TS = common dso_local global i64 0, align 8
@EM2874_R5D_TS1_PKT_SIZE = common dso_local global i32 0, align 4
@EM2874_R5E_TS2_PKT_SIZE = common dso_local global i32 0, align 4
@EM2874_R5F_TS_ENABLE = common dso_local global i32 0, align 4
@EM2874_TS1_CAPTURE_ENABLE = common dso_local global i32 0, align 4
@EM2874_TS1_FILTER_ENABLE = common dso_local global i32 0, align 4
@EM2874_TS1_NULL_DISCARD = common dso_local global i32 0, align 4
@EM2874_TS2_CAPTURE_ENABLE = common dso_local global i32 0, align 4
@EM2874_TS2_FILTER_ENABLE = common dso_local global i32 0, align 4
@EM2874_TS2_NULL_DISCARD = common dso_local global i32 0, align 4
@EM28XX_R0C_USBSUSP = common dso_local global i32 0, align 4
@EM28XX_ANALOG_MODE = common dso_local global i64 0, align 8
@EM28XX_R12_VINENABLE = common dso_local global i32 0, align 4
@EM28XX_LED_ANALOG_CAPTURING = common dso_local global i32 0, align 4
@EM28XX_LED_DIGITAL_CAPTURING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_capture_start(%struct.em28xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.em28xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.em28xx_led*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.em28xx_led* null, %struct.em28xx_led** %7, align 8
  %8 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %9 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CHIP_ID_EM2874, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %31, label %13

13:                                               ; preds = %2
  %14 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %15 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CHIP_ID_EM2884, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %21 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CHIP_ID_EM28174, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %27 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CHIP_ID_EM28178, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %107

31:                                               ; preds = %25, %19, %13, %2
  %32 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %33 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %38 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %39 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PRIMARY_TS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @EM2874_R5D_TS1_PKT_SIZE, align 4
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @EM2874_R5E_TS2_PKT_SIZE, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = call i32 @em28xx_write_reg(%struct.em28xx* %37, i32 %48, i32 255)
  br label %68

50:                                               ; preds = %31
  %51 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %52 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %53 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PRIMARY_TS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @EM2874_R5D_TS1_PKT_SIZE, align 4
  br label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @EM2874_R5E_TS2_PKT_SIZE, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %64 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sdiv i32 %65, 188
  %67 = call i32 @em28xx_write_reg(%struct.em28xx* %51, i32 %62, i32 %66)
  br label %68

68:                                               ; preds = %61, %47
  %69 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %70 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PRIMARY_TS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %68
  %75 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %76 = load i32, i32* @EM2874_R5F_TS_ENABLE, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @EM2874_TS1_CAPTURE_ENABLE, align 4
  br label %82

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  %84 = load i32, i32* @EM2874_TS1_CAPTURE_ENABLE, align 4
  %85 = load i32, i32* @EM2874_TS1_FILTER_ENABLE, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @EM2874_TS1_NULL_DISCARD, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @em28xx_write_reg_bits(%struct.em28xx* %75, i32 %76, i32 %83, i32 %88)
  store i32 %89, i32* %6, align 4
  br label %106

90:                                               ; preds = %68
  %91 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %92 = load i32, i32* @EM2874_R5F_TS_ENABLE, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @EM2874_TS2_CAPTURE_ENABLE, align 4
  br label %98

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi i32 [ %96, %95 ], [ 0, %97 ]
  %100 = load i32, i32* @EM2874_TS2_CAPTURE_ENABLE, align 4
  %101 = load i32, i32* @EM2874_TS2_FILTER_ENABLE, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @EM2874_TS2_NULL_DISCARD, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @em28xx_write_reg_bits(%struct.em28xx* %91, i32 %92, i32 %99, i32 %104)
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %98, %82
  br label %163

107:                                              ; preds = %25
  %108 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %109 = load i32, i32* @EM28XX_R0C_USBSUSP, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 16, i32 0
  %114 = call i32 @em28xx_write_reg_bits(%struct.em28xx* %108, i32 %109, i32 %113, i32 16)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %107
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  br label %211

119:                                              ; preds = %107
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %158

122:                                              ; preds = %119
  %123 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %124 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %129 = call i32 @em28xx_write_reg(%struct.em28xx* %128, i32 19, i32 12)
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %127, %122
  %131 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %132 = call i32 @em28xx_write_reg(%struct.em28xx* %131, i32 72, i32 0)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %3, align 4
  br label %211

137:                                              ; preds = %130
  %138 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %139 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @EM28XX_ANALOG_MODE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %145 = load i32, i32* @EM28XX_R12_VINENABLE, align 4
  %146 = call i32 @em28xx_write_reg(%struct.em28xx* %144, i32 %145, i32 103)
  store i32 %146, i32* %6, align 4
  br label %151

147:                                              ; preds = %137
  %148 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %149 = load i32, i32* @EM28XX_R12_VINENABLE, align 4
  %150 = call i32 @em28xx_write_reg(%struct.em28xx* %148, i32 %149, i32 55)
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %147, %143
  %152 = load i32, i32* %6, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %3, align 4
  br label %211

156:                                              ; preds = %151
  %157 = call i32 @usleep_range(i32 10000, i32 11000)
  br label %162

158:                                              ; preds = %119
  %159 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %160 = load i32, i32* @EM28XX_R12_VINENABLE, align 4
  %161 = call i32 @em28xx_write_reg(%struct.em28xx* %159, i32 %160, i32 39)
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %158, %156
  br label %163

163:                                              ; preds = %162, %106
  %164 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %165 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @EM28XX_ANALOG_MODE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %171 = load i32, i32* @EM28XX_LED_ANALOG_CAPTURING, align 4
  %172 = call %struct.em28xx_led* @em28xx_find_led(%struct.em28xx* %170, i32 %171)
  store %struct.em28xx_led* %172, %struct.em28xx_led** %7, align 8
  br label %177

173:                                              ; preds = %163
  %174 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %175 = load i32, i32* @EM28XX_LED_DIGITAL_CAPTURING, align 4
  %176 = call %struct.em28xx_led* @em28xx_find_led(%struct.em28xx* %174, i32 %175)
  store %struct.em28xx_led* %176, %struct.em28xx_led** %7, align 8
  br label %177

177:                                              ; preds = %173, %169
  %178 = load %struct.em28xx_led*, %struct.em28xx_led** %7, align 8
  %179 = icmp ne %struct.em28xx_led* %178, null
  br i1 %179, label %180, label %209

180:                                              ; preds = %177
  %181 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %182 = load %struct.em28xx_led*, %struct.em28xx_led** %7, align 8
  %183 = getelementptr inbounds %struct.em28xx_led, %struct.em28xx_led* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %5, align 4
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = load %struct.em28xx_led*, %struct.em28xx_led** %7, align 8
  %190 = getelementptr inbounds %struct.em28xx_led, %struct.em28xx_led* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = xor i32 %188, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %180
  %195 = load %struct.em28xx_led*, %struct.em28xx_led** %7, align 8
  %196 = getelementptr inbounds %struct.em28xx_led, %struct.em28xx_led* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = xor i32 %197, -1
  br label %203

199:                                              ; preds = %180
  %200 = load %struct.em28xx_led*, %struct.em28xx_led** %7, align 8
  %201 = getelementptr inbounds %struct.em28xx_led, %struct.em28xx_led* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  br label %203

203:                                              ; preds = %199, %194
  %204 = phi i32 [ %198, %194 ], [ %202, %199 ]
  %205 = load %struct.em28xx_led*, %struct.em28xx_led** %7, align 8
  %206 = getelementptr inbounds %struct.em28xx_led, %struct.em28xx_led* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @em28xx_write_reg_bits(%struct.em28xx* %181, i32 %184, i32 %204, i32 %207)
  br label %209

209:                                              ; preds = %203, %177
  %210 = load i32, i32* %6, align 4
  store i32 %210, i32* %3, align 4
  br label %211

211:                                              ; preds = %209, %154, %135, %117
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i32 @em28xx_write_reg(%struct.em28xx*, i32, i32) #1

declare dso_local i32 @em28xx_write_reg_bits(%struct.em28xx*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local %struct.em28xx_led* @em28xx_find_led(%struct.em28xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
