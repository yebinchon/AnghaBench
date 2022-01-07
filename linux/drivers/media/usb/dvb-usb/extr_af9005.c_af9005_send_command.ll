; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.af9005_device_state* }
%struct.af9005_device_state = type { i32*, i32 }

@.str = private unnamed_addr constant [54 x i8] c"send command, wlen less than 0 bytes. Makes no sense.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"send command, wlen more than 54 bytes. Not supported.\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"send command, rlen more than 54 bytes. Not supported.\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"send command, wrong reply code.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"send command, wrong sequence in reply.\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"send command, wrong status code in reply.\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"send command, invalid data length in reply.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @af9005_send_command(%struct.dvb_usb_device* %0, i8* %1, i8** %2, i32 %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.af9005_device_state*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %19, i32 0, i32 1
  %21 = load %struct.af9005_device_state*, %struct.af9005_device_state** %20, align 8
  store %struct.af9005_device_state* %21, %struct.af9005_device_state** %14, align 8
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = call i32 @err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %215

28:                                               ; preds = %6
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %29, 54
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = call i32 @err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %215

35:                                               ; preds = %28
  %36 = load i32, i32* %13, align 4
  %37 = icmp sgt i32 %36, 54
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = call i32 @err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %215

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 5
  store i32 %44, i32* %17, align 4
  %45 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %46 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load i32, i32* %17, align 4
  %49 = and i32 %48, 255
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %54 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %17, align 4
  %58 = and i32 %57, 65280
  %59 = ashr i32 %58, 8
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %64 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %62, i32* %66, align 4
  %67 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %68 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 38, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 3
  %73 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %74 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  store i32 %72, i32* %76, align 4
  %77 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %78 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = sext i32 %79 to i64
  %82 = inttoptr i64 %81 to i8*
  store i8* %82, i8** %18, align 8
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %85 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  store i32 %83, i32* %87, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %91 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 5
  store i32 %89, i32* %93, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %96 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 6
  store i32 %94, i32* %98, align 4
  store i32 0, i32* %16, align 4
  br label %99

99:                                               ; preds = %117, %42
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %99
  %104 = load i8**, i8*** %10, align 8
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %111 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 7, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  store i32 %109, i32* %116, align 4
  br label %117

117:                                              ; preds = %103
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %16, align 4
  br label %99

120:                                              ; preds = %99
  %121 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %122 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %123 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 7
  %127 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %128 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 7
  %132 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %121, i32* %124, i32 %126, i32* %129, i32 %131, i32 0)
  store i32 %132, i32* %15, align 4
  %133 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %134 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 39
  br i1 %138, label %139, label %143

139:                                              ; preds = %120
  %140 = call i32 @err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %15, align 4
  br label %183

143:                                              ; preds = %120
  %144 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %145 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 4
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = load i8*, i8** %18, align 8
  %152 = icmp ne i8* %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %143
  %154 = call i32 @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %155 = load i32, i32* @EIO, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %15, align 4
  br label %182

157:                                              ; preds = %143
  %158 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %159 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 5
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 1
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = call i32 @err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %166 = load i32, i32* @EIO, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %15, align 4
  br label %181

168:                                              ; preds = %157
  %169 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %170 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 6
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %168
  %177 = call i32 @err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %178 = load i32, i32* @EIO, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %15, align 4
  br label %180

180:                                              ; preds = %176, %168
  br label %181

181:                                              ; preds = %180, %164
  br label %182

182:                                              ; preds = %181, %153
  br label %183

183:                                              ; preds = %182, %139
  %184 = load i32, i32* %15, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %210, label %186

186:                                              ; preds = %183
  store i32 0, i32* %16, align 4
  br label %187

187:                                              ; preds = %206, %186
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* %13, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %209

191:                                              ; preds = %187
  %192 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %193 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %16, align 4
  %196 = add nsw i32 %195, 7
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = inttoptr i64 %200 to i8*
  %202 = load i8**, i8*** %12, align 8
  %203 = load i32, i32* %16, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8*, i8** %202, i64 %204
  store i8* %201, i8** %205, align 8
  br label %206

206:                                              ; preds = %191
  %207 = load i32, i32* %16, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %16, align 4
  br label %187

209:                                              ; preds = %187
  br label %210

210:                                              ; preds = %209, %183
  %211 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %212 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %211, i32 0, i32 0
  %213 = call i32 @mutex_unlock(i32* %212)
  %214 = load i32, i32* %15, align 4
  store i32 %214, i32* %7, align 4
  br label %215

215:                                              ; preds = %210, %38, %31, %24
  %216 = load i32, i32* %7, align 4
  ret i32 %216
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
