; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005-remote.c_af9005_rc_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005-remote.c_af9005_rc_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.dvb_usb_device = type { i64 }

@repeatable_keys = common dso_local global i64* null, align 8
@REMOTE_KEY_REPEAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"repeat key, event %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"repeated key ignored (non repeatable)\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"key pressed, raw value %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"doesn't start with 0xfe, ignored\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"code != inverted code\0A\00", align 1
@rc_map_af9005_table_size = common dso_local global i32 0, align 4
@rc_map_af9005_table = common dso_local global %struct.TYPE_4__* null, align 8
@REMOTE_KEY_PRESSED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"key pressed, event %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"not found in table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @af9005_rc_decode(%struct.dvb_usb_device* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_usb_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp sge i32 %19, 6
  br i1 %20, label %21, label %192

21:                                               ; preds = %5
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %12, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 8
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = mul nsw i32 %38, 3
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %21
  store i32 0, i32* %18, align 4
  br label %43

43:                                               ; preds = %70, %42
  %44 = load i32, i32* %18, align 4
  %45 = load i64*, i64** @repeatable_keys, align 8
  %46 = call i32 @ARRAY_SIZE(i64* %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %43
  %49 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %50 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** @repeatable_keys, align 8
  %53 = load i32, i32* %18, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %51, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %48
  %59 = load i32, i32* @REMOTE_KEY_REPEAT, align 4
  %60 = load i32*, i32** %11, align 8
  store i32 %59, i32* %60, align 4
  %61 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %62 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** %10, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, ...) @deb_decode(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %67)
  store i32 0, i32* %6, align 4
  br label %193

69:                                               ; preds = %48
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %18, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %18, align 4
  br label %43

73:                                               ; preds = %43
  %74 = call i32 (i8*, ...) @deb_decode(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %193

75:                                               ; preds = %21
  %76 = load i32, i32* %9, align 4
  %77 = icmp sge i32 %76, 132
  br i1 %77, label %78, label %190

78:                                               ; preds = %75
  store i32 0, i32* %14, align 4
  store i32 4, i32* %18, align 4
  br label %79

79:                                               ; preds = %124, %78
  %80 = load i32, i32* %18, align 4
  %81 = icmp slt i32 %80, 132
  br i1 %81, label %82, label %127

82:                                               ; preds = %79
  %83 = load i32, i32* %14, align 4
  %84 = shl i32 %83, 1
  store i32 %84, i32* %14, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 8
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %18, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %90, %96
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = ashr i32 %98, 1
  store i32 %99, i32* %12, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %18, align 4
  %102 = add nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %18, align 4
  %109 = add nsw i32 %108, 3
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %106, %112
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = ashr i32 %114, 1
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %12, align 4
  %117 = mul nsw i32 %116, 2
  %118 = load i32, i32* %13, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %82
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %120, %82
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %18, align 4
  %126 = add nsw i32 %125, 4
  store i32 %126, i32* %18, align 4
  br label %79

127:                                              ; preds = %79
  %128 = load i32, i32* %14, align 4
  %129 = call i32 (i8*, ...) @deb_decode(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %14, align 4
  %131 = and i32 %130, -16777216
  %132 = icmp ne i32 %131, -33554432
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = call i32 (i8*, ...) @deb_decode(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %193

135:                                              ; preds = %127
  %136 = load i32, i32* %14, align 4
  %137 = ashr i32 %136, 16
  %138 = and i32 %137, 255
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %14, align 4
  %140 = ashr i32 %139, 8
  %141 = and i32 %140, 255
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %14, align 4
  %143 = xor i32 %142, -1
  %144 = and i32 %143, 255
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %17, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %135
  %149 = call i32 (i8*, ...) @deb_decode(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %193

150:                                              ; preds = %135
  store i32 0, i32* %18, align 4
  br label %151

151:                                              ; preds = %185, %150
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* @rc_map_af9005_table_size, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %188

155:                                              ; preds = %151
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rc_map_af9005_table, align 8
  %157 = load i32, i32* %18, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = call i32 @rc5_custom(%struct.TYPE_4__* %159)
  %161 = load i32, i32* %15, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %184

163:                                              ; preds = %155
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rc_map_af9005_table, align 8
  %165 = load i32, i32* %18, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i64 %166
  %168 = call i32 @rc5_data(%struct.TYPE_4__* %167)
  %169 = load i32, i32* %16, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %184

171:                                              ; preds = %163
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rc_map_af9005_table, align 8
  %173 = load i32, i32* %18, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %10, align 8
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* @REMOTE_KEY_PRESSED, align 4
  %180 = load i32*, i32** %11, align 8
  store i32 %179, i32* %180, align 4
  %181 = load i32*, i32** %10, align 8
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i8*, ...) @deb_decode(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %182)
  store i32 0, i32* %6, align 4
  br label %193

184:                                              ; preds = %163, %155
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %18, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %18, align 4
  br label %151

188:                                              ; preds = %151
  %189 = call i32 (i8*, ...) @deb_decode(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %75
  br label %191

191:                                              ; preds = %190
  br label %192

192:                                              ; preds = %191, %5
  store i32 0, i32* %6, align 4
  br label %193

193:                                              ; preds = %192, %171, %148, %133, %73, %58
  %194 = load i32, i32* %6, align 4
  ret i32 %194
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @deb_decode(i8*, ...) #1

declare dso_local i32 @rc5_custom(%struct.TYPE_4__*) #1

declare dso_local i32 @rc5_data(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
