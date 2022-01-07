; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_set_seek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_set_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.si470x_device = type { i32, i32*, i32 (%struct.si470x_device*, i64)*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_hw_freq_seek = type { i64, i64, i64, i64 }

@bands = common dso_local global %struct.TYPE_5__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@POWERCFG_SEEK = common dso_local global i32 0, align 4
@POWERCFG = common dso_local global i64 0, align 8
@POWERCFG_SKMODE = common dso_local global i32 0, align 4
@POWERCFG_SEEKUP = common dso_local global i32 0, align 4
@seek_timeout = common dso_local global i32 0, align 4
@STATUSRSSI = common dso_local global i64 0, align 8
@STATUSRSSI_STC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"seek does not complete\0A\00", align 1
@STATUSRSSI_SF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"seek failed / band limit reached\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si470x_device*, %struct.v4l2_hw_freq_seek*)* @si470x_set_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_set_seek(%struct.si470x_device* %0, %struct.v4l2_hw_freq_seek* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.si470x_device*, align 8
  %5 = alloca %struct.v4l2_hw_freq_seek*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.si470x_device* %0, %struct.si470x_device** %4, align 8
  store %struct.v4l2_hw_freq_seek* %1, %struct.v4l2_hw_freq_seek** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %15, %2
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %50, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bands, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bands, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %26
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bands, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %53

49:                                               ; preds = %37, %26
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %21

53:                                               ; preds = %48, %21
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bands, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %55)
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %228

61:                                               ; preds = %53
  br label %63

62:                                               ; preds = %15
  store i32 1, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %65 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %63
  %70 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %71 = call i32 @si470x_get_freq(%struct.si470x_device* %70, i32* %8)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %228

76:                                               ; preds = %69
  %77 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @si470x_set_band(%struct.si470x_device* %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %228

84:                                               ; preds = %76
  %85 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @si470x_set_freq(%struct.si470x_device* %85, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %3, align 4
  br label %228

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %63
  %94 = load i32, i32* @POWERCFG_SEEK, align 4
  %95 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %96 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @POWERCFG, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %94
  store i32 %101, i32* %99, align 4
  %102 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %5, align 8
  %103 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %93
  %107 = load i32, i32* @POWERCFG_SKMODE, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %110 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @POWERCFG, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %108
  store i32 %115, i32* %113, align 4
  br label %125

116:                                              ; preds = %93
  %117 = load i32, i32* @POWERCFG_SKMODE, align 4
  %118 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %119 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @POWERCFG, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %117
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %116, %106
  %126 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %5, align 8
  %127 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %125
  %131 = load i32, i32* @POWERCFG_SEEKUP, align 4
  %132 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %133 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* @POWERCFG, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %131
  store i32 %138, i32* %136, align 4
  br label %149

139:                                              ; preds = %125
  %140 = load i32, i32* @POWERCFG_SEEKUP, align 4
  %141 = xor i32 %140, -1
  %142 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %143 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* @POWERCFG, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, %141
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %139, %130
  %150 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %151 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %150, i32 0, i32 2
  %152 = load i32 (%struct.si470x_device*, i64)*, i32 (%struct.si470x_device*, i64)** %151, align 8
  %153 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %154 = load i64, i64* @POWERCFG, align 8
  %155 = call i32 %152(%struct.si470x_device* %153, i64 %154)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %149
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %3, align 4
  br label %228

160:                                              ; preds = %149
  %161 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %162 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %161, i32 0, i32 4
  %163 = call i32 @reinit_completion(i32* %162)
  %164 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %165 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %164, i32 0, i32 4
  %166 = load i32, i32* @seek_timeout, align 4
  %167 = call i32 @msecs_to_jiffies(i32 %166)
  %168 = call i64 @wait_for_completion_timeout(i32* %165, i32 %167)
  store i64 %168, i64* %10, align 8
  %169 = load i64, i64* %10, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %160
  store i32 1, i32* %9, align 4
  br label %172

172:                                              ; preds = %171, %160
  %173 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %174 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* @STATUSRSSI, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @STATUSRSSI_STC, align 4
  %180 = and i32 %178, %179
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %172
  %183 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %184 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = call i32 @dev_warn(i32* %185, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %187

187:                                              ; preds = %182, %172
  %188 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %189 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load i64, i64* @STATUSRSSI, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @STATUSRSSI_SF, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %187
  %198 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %199 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = call i32 @dev_warn(i32* %200, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %202

202:                                              ; preds = %197, %187
  %203 = load i32, i32* @POWERCFG_SEEK, align 4
  %204 = xor i32 %203, -1
  %205 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %206 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = load i64, i64* @POWERCFG, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %210, %204
  store i32 %211, i32* %209, align 4
  %212 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %213 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %212, i32 0, i32 2
  %214 = load i32 (%struct.si470x_device*, i64)*, i32 (%struct.si470x_device*, i64)** %213, align 8
  %215 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %216 = load i64, i64* @POWERCFG, align 8
  %217 = call i32 %214(%struct.si470x_device* %215, i64 %216)
  store i32 %217, i32* %7, align 4
  %218 = load i32, i32* %7, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %202
  %221 = load i32, i32* %9, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i32, i32* @ENODATA, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %3, align 4
  br label %228

226:                                              ; preds = %220, %202
  %227 = load i32, i32* %7, align 4
  store i32 %227, i32* %3, align 4
  br label %228

228:                                              ; preds = %226, %223, %158, %90, %82, %74, %58
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @si470x_get_freq(%struct.si470x_device*, i32*) #1

declare dso_local i32 @si470x_set_band(%struct.si470x_device*, i32) #1

declare dso_local i32 @si470x_set_freq(%struct.si470x_device*, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
