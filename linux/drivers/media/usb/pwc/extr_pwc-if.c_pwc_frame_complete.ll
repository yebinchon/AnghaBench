; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-if.c_pwc_frame_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-if.c_pwc_frame_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, i64, i8, i32, i32, i64, %struct.pwc_frame_buf* }
%struct.pwc_frame_buf = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Hyundai CMOS sensor bug. Dropping frame.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Image is mirrored.\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Image is normal.\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Frame buffer underflow (%d bytes); discarded.\0A\00", align 1
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwc_device*)* @pwc_frame_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwc_frame_complete(%struct.pwc_device* %0) #0 {
  %2 = alloca %struct.pwc_device*, align 8
  %3 = alloca %struct.pwc_frame_buf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %2, align 8
  %6 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %7 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %6, i32 0, i32 6
  %8 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %7, align 8
  store %struct.pwc_frame_buf* %8, %struct.pwc_frame_buf** %3, align 8
  %9 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %10 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 730
  br i1 %12, label %13, label %100

13:                                               ; preds = %1
  %14 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %3, align 8
  %15 = getelementptr inbounds %struct.pwc_frame_buf, %struct.pwc_frame_buf* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %36

23:                                               ; preds = %13
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 16
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = call i32 @PWC_TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %33 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 2
  store i64 %35, i64* %33, align 8
  br label %36

36:                                               ; preds = %30, %23, %13
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %42 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %41, i32 0, i32 2
  %43 = load i8, i8* %42, align 8
  %44 = zext i8 %43 to i32
  %45 = xor i32 %40, %44
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %36
  %49 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 1
  %55 = trunc i32 %54 to i8
  %56 = call i32 @pwc_snapshot_button(%struct.pwc_device* %49, i8 zeroext %55)
  br label %57

57:                                               ; preds = %48, %36
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %63 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %62, i32 0, i32 2
  %64 = load i8, i8* %63, align 8
  %65 = zext i8 %64 to i32
  %66 = xor i32 %61, %65
  %67 = and i32 %66, 2
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %57
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 2
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = call i32 @PWC_TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %80

78:                                               ; preds = %69
  %79 = call i32 @PWC_TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %76
  br label %81

81:                                               ; preds = %80, %57
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 3
  %87 = trunc i32 %86 to i8
  %88 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %89 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %88, i32 0, i32 2
  store i8 %87, i8* %89, align 8
  %90 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %3, align 8
  %91 = getelementptr inbounds %struct.pwc_frame_buf, %struct.pwc_frame_buf* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 4
  br i1 %93, label %94, label %99

94:                                               ; preds = %81
  %95 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %96 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  br label %99

99:                                               ; preds = %94, %81
  br label %145

100:                                              ; preds = %1
  %101 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %102 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 740
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %107 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 720
  br i1 %109, label %110, label %144

110:                                              ; preds = %105, %100
  %111 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %3, align 8
  %112 = getelementptr inbounds %struct.pwc_frame_buf, %struct.pwc_frame_buf* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  store i8* %114, i8** %5, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %120 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %119, i32 0, i32 2
  %121 = load i8, i8* %120, align 8
  %122 = zext i8 %121 to i32
  %123 = xor i32 %118, %122
  %124 = and i32 %123, 1
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %110
  %127 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = and i32 %131, 1
  %133 = trunc i32 %132 to i8
  %134 = call i32 @pwc_snapshot_button(%struct.pwc_device* %127, i8 zeroext %133)
  br label %135

135:                                              ; preds = %126, %110
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = and i32 %139, 3
  %141 = trunc i32 %140 to i8
  %142 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %143 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %142, i32 0, i32 2
  store i8 %141, i8* %143, align 8
  br label %144

144:                                              ; preds = %135, %105
  br label %145

145:                                              ; preds = %144, %99
  %146 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %147 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp sgt i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %152 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, -1
  store i64 %154, i64* %152, align 8
  br label %189

155:                                              ; preds = %145
  %156 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %3, align 8
  %157 = getelementptr inbounds %struct.pwc_frame_buf, %struct.pwc_frame_buf* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %160 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %155
  %164 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %3, align 8
  %165 = getelementptr inbounds %struct.pwc_frame_buf, %struct.pwc_frame_buf* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @PWC_DEBUG_FLOW(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %166)
  br label %188

168:                                              ; preds = %155
  %169 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %170 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %3, align 8
  %171 = getelementptr inbounds %struct.pwc_frame_buf, %struct.pwc_frame_buf* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  store i32 %169, i32* %172, align 4
  %173 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %174 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %3, align 8
  %177 = getelementptr inbounds %struct.pwc_frame_buf, %struct.pwc_frame_buf* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  store i32 %175, i32* %178, align 4
  %179 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %3, align 8
  %180 = getelementptr inbounds %struct.pwc_frame_buf, %struct.pwc_frame_buf* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %183 = call i32 @vb2_buffer_done(i32* %181, i32 %182)
  %184 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %185 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %184, i32 0, i32 6
  store %struct.pwc_frame_buf* null, %struct.pwc_frame_buf** %185, align 8
  %186 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %187 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %186, i32 0, i32 5
  store i64 0, i64* %187, align 8
  br label %188

188:                                              ; preds = %168, %163
  br label %189

189:                                              ; preds = %188, %150
  %190 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %191 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 8
  ret void
}

declare dso_local i32 @PWC_TRACE(i8*) #1

declare dso_local i32 @pwc_snapshot_button(%struct.pwc_device*, i8 zeroext) #1

declare dso_local i32 @PWC_DEBUG_FLOW(i8*, i32) #1

declare dso_local i32 @vb2_buffer_done(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
