; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_generic_read_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_generic_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.af9005_device_state* }
%struct.af9005_device_state = type { i32*, i32 }

@.str = private unnamed_addr constant [54 x i8] c"generic read/write, less than 1 byte. Makes no sense.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"generic read/write, more than 8 bytes. Not supported.\00", align 1
@AF9005_REGISTER_RW = common dso_local global i32 0, align 4
@AF9005_OFDM_REG = common dso_local global i32 0, align 4
@AF9005_CMD_OFDM_REG = common dso_local global i32 0, align 4
@AF9005_CMD_TUNER = common dso_local global i32 0, align 4
@AF9005_CMD_BURST = common dso_local global i32 0, align 4
@AF9005_CMD_AUTOINC = common dso_local global i32 0, align 4
@AF9005_CMD_WRITE = common dso_local global i32 0, align 4
@AF9005_TUNER_REG = common dso_local global i32 0, align 4
@AF9005_REGISTER_RW_ACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"generic read/write, wrong reply code.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"generic read/write, wrong length in reply.\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"generic read/write, wrong sequence in reply.\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"generic read/write wrong status code in reply.\00", align 1
@AF9005_CMD_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32, i32, i32*, i32)* @af9005_generic_read_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_generic_read_write(%struct.dvb_usb_device* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.af9005_device_state*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %19, i32 0, i32 1
  %21 = load %struct.af9005_device_state*, %struct.af9005_device_state** %20, align 8
  store %struct.af9005_device_state* %21, %struct.af9005_device_state** %14, align 8
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = call i32 @err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %233

28:                                               ; preds = %6
  %29 = load i32, i32* %13, align 4
  %30 = icmp sgt i32 %29, 8
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = call i32 @err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %233

35:                                               ; preds = %28
  %36 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %40 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 14, i32* %42, align 4
  %43 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %44 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* @AF9005_REGISTER_RW, align 4
  %48 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %49 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32 %47, i32* %51, align 4
  %52 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %53 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  store i32 12, i32* %55, align 4
  %56 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %57 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  store i32 %58, i32* %16, align 4
  %60 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %61 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  store i32 %58, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = ashr i32 %64, 8
  %66 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %67 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 5
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 255
  %72 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %73 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 6
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @AF9005_OFDM_REG, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %35
  %80 = load i32, i32* @AF9005_CMD_OFDM_REG, align 4
  store i32 %80, i32* %15, align 4
  br label %83

81:                                               ; preds = %35
  %82 = load i32, i32* @AF9005_CMD_TUNER, align 4
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = load i32, i32* %13, align 4
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i32, i32* @AF9005_CMD_BURST, align 4
  %88 = load i32, i32* @AF9005_CMD_AUTOINC, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %13, align 4
  %91 = sub nsw i32 %90, 1
  %92 = shl i32 %91, 3
  %93 = or i32 %89, %92
  %94 = load i32, i32* %15, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %86, %83
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %15, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @AF9005_CMD_WRITE, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %125

103:                                              ; preds = %96
  store i32 0, i32* %17, align 4
  br label %104

104:                                              ; preds = %121, %103
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %104
  %109 = load i32*, i32** %12, align 8
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %115 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 8, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %113, i32* %120, align 4
  br label %121

121:                                              ; preds = %108
  %122 = load i32, i32* %17, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %17, align 4
  br label %104

124:                                              ; preds = %104
  br label %138

125:                                              ; preds = %96
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @AF9005_TUNER_REG, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = load i32*, i32** %12, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %134 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 8
  store i32 %132, i32* %136, align 4
  br label %137

137:                                              ; preds = %129, %125
  br label %138

138:                                              ; preds = %137, %124
  %139 = load i32, i32* %15, align 4
  %140 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %141 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 7
  store i32 %139, i32* %143, align 4
  %144 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %145 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %146 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %149 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %144, i32* %147, i32 16, i32* %150, i32 17, i32 0)
  store i32 %151, i32* %18, align 4
  %152 = load i32, i32* %18, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %138
  br label %228

155:                                              ; preds = %138
  %156 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %157 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @AF9005_REGISTER_RW_ACK, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %155
  %164 = call i32 @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %165 = load i32, i32* @EIO, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %18, align 4
  br label %228

167:                                              ; preds = %155
  %168 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %169 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 13
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = call i32 @err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %176 = load i32, i32* @EIO, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %18, align 4
  br label %228

178:                                              ; preds = %167
  %179 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %180 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 4
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %16, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %178
  %187 = call i32 @err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %188 = load i32, i32* @EIO, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %18, align 4
  br label %228

190:                                              ; preds = %178
  %191 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %192 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 16
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 1
  br i1 %196, label %197, label %201

197:                                              ; preds = %190
  %198 = call i32 @err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %199 = load i32, i32* @EIO, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %18, align 4
  br label %228

201:                                              ; preds = %190
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* @AF9005_CMD_READ, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %227

205:                                              ; preds = %201
  store i32 0, i32* %17, align 4
  br label %206

206:                                              ; preds = %223, %205
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* %13, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %226

210:                                              ; preds = %206
  %211 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %212 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %17, align 4
  %215 = add nsw i32 8, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %12, align 8
  %220 = load i32, i32* %17, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %218, i32* %222, align 4
  br label %223

223:                                              ; preds = %210
  %224 = load i32, i32* %17, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %17, align 4
  br label %206

226:                                              ; preds = %206
  br label %227

227:                                              ; preds = %226, %201
  br label %228

228:                                              ; preds = %227, %197, %186, %174, %163, %154
  %229 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %230 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %229, i32 0, i32 0
  %231 = call i32 @mutex_unlock(i32* %230)
  %232 = load i32, i32* %18, align 4
  store i32 %232, i32* %7, align 4
  br label %233

233:                                              ; preds = %228, %31, %24
  %234 = load i32, i32* %7, align 4
  ret i32 %234
}

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
