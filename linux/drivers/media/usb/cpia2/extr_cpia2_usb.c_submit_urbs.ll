; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_usb.c_submit_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_usb.c_submit_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.urb*, i32* }
%struct.urb = type { i32, i32, i32, %struct.TYPE_3__*, i32, i32*, i32, i32, %struct.camera_data*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@NUM_SBUF = common dso_local global i32 0, align 4
@FRAME_SIZE_PER_DESC = common dso_local global i32 0, align 4
@FRAMES_PER_DESC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@cpia2_usb_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"usb_submit_urb[%d]() = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camera_data*)* @submit_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_urbs(%struct.camera_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.camera_data*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.camera_data* %0, %struct.camera_data** %3, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %71, %1
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @NUM_SBUF, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %74

13:                                               ; preds = %9
  %14 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %15 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %71

24:                                               ; preds = %13
  %25 = load i32, i32* @FRAME_SIZE_PER_DESC, align 4
  %26 = load i32, i32* @FRAMES_PER_DESC, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kmalloc_array(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %30 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32* %28, i32** %35, align 8
  %36 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %37 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %70, label %45

45:                                               ; preds = %24
  br label %46

46:                                               ; preds = %50, %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %7, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %52 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @kfree(i32* %58)
  %60 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %61 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  br label %46

67:                                               ; preds = %46
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %249

70:                                               ; preds = %24
  br label %71

71:                                               ; preds = %70, %23
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %9

74:                                               ; preds = %9
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %218, %74
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @NUM_SBUF, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %221

79:                                               ; preds = %75
  %80 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %81 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.urb*, %struct.urb** %86, align 8
  %88 = icmp ne %struct.urb* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %218

90:                                               ; preds = %79
  %91 = load i32, i32* @FRAMES_PER_DESC, align 4
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call %struct.urb* @usb_alloc_urb(i32 %91, i32 %92)
  store %struct.urb* %93, %struct.urb** %4, align 8
  %94 = load %struct.urb*, %struct.urb** %4, align 8
  %95 = icmp ne %struct.urb* %94, null
  br i1 %95, label %142, label %96

96:                                               ; preds = %90
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %111, %96
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %103 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load %struct.urb*, %struct.urb** %108, align 8
  %110 = call i32 @usb_free_urb(%struct.urb* %109)
  br label %111

111:                                              ; preds = %101
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %97

114:                                              ; preds = %97
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %136, %114
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @NUM_SBUF, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %139

119:                                              ; preds = %115
  %120 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %121 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @kfree(i32* %127)
  %129 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %130 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i32* null, i32** %135, align 8
  br label %136

136:                                              ; preds = %119
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %115

139:                                              ; preds = %115
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %249

142:                                              ; preds = %90
  %143 = load %struct.urb*, %struct.urb** %4, align 8
  %144 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %145 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  store %struct.urb* %143, %struct.urb** %150, align 8
  %151 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %152 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.urb*, %struct.urb** %4, align 8
  %155 = getelementptr inbounds %struct.urb, %struct.urb* %154, i32 0, i32 9
  store i32 %153, i32* %155, align 8
  %156 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %157 = load %struct.urb*, %struct.urb** %4, align 8
  %158 = getelementptr inbounds %struct.urb, %struct.urb* %157, i32 0, i32 8
  store %struct.camera_data* %156, %struct.camera_data** %158, align 8
  %159 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %160 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @usb_rcvisocpipe(i32 %161, i32 1)
  %163 = load %struct.urb*, %struct.urb** %4, align 8
  %164 = getelementptr inbounds %struct.urb, %struct.urb* %163, i32 0, i32 7
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @URB_ISO_ASAP, align 4
  %166 = load %struct.urb*, %struct.urb** %4, align 8
  %167 = getelementptr inbounds %struct.urb, %struct.urb* %166, i32 0, i32 6
  store i32 %165, i32* %167, align 8
  %168 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %169 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.urb*, %struct.urb** %4, align 8
  %177 = getelementptr inbounds %struct.urb, %struct.urb* %176, i32 0, i32 5
  store i32* %175, i32** %177, align 8
  %178 = load i32, i32* @cpia2_usb_complete, align 4
  %179 = load %struct.urb*, %struct.urb** %4, align 8
  %180 = getelementptr inbounds %struct.urb, %struct.urb* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* @FRAMES_PER_DESC, align 4
  %182 = load %struct.urb*, %struct.urb** %4, align 8
  %183 = getelementptr inbounds %struct.urb, %struct.urb* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.urb*, %struct.urb** %4, align 8
  %185 = getelementptr inbounds %struct.urb, %struct.urb* %184, i32 0, i32 1
  store i32 1, i32* %185, align 4
  %186 = load i32, i32* @FRAME_SIZE_PER_DESC, align 4
  %187 = load i32, i32* @FRAMES_PER_DESC, align 4
  %188 = mul nsw i32 %186, %187
  %189 = load %struct.urb*, %struct.urb** %4, align 8
  %190 = getelementptr inbounds %struct.urb, %struct.urb* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  store i32 0, i32* %5, align 4
  br label %191

191:                                              ; preds = %214, %142
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* @FRAMES_PER_DESC, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %217

195:                                              ; preds = %191
  %196 = load i32, i32* @FRAME_SIZE_PER_DESC, align 4
  %197 = load i32, i32* %5, align 4
  %198 = mul nsw i32 %196, %197
  %199 = load %struct.urb*, %struct.urb** %4, align 8
  %200 = getelementptr inbounds %struct.urb, %struct.urb* %199, i32 0, i32 3
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  store i32 %198, i32* %205, align 4
  %206 = load i32, i32* @FRAME_SIZE_PER_DESC, align 4
  %207 = load %struct.urb*, %struct.urb** %4, align 8
  %208 = getelementptr inbounds %struct.urb, %struct.urb* %207, i32 0, i32 3
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  store i32 %206, i32* %213, align 4
  br label %214

214:                                              ; preds = %195
  %215 = load i32, i32* %5, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %5, align 4
  br label %191

217:                                              ; preds = %191
  br label %218

218:                                              ; preds = %217, %89
  %219 = load i32, i32* %7, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %7, align 4
  br label %75

221:                                              ; preds = %75
  store i32 0, i32* %7, align 4
  br label %222

222:                                              ; preds = %245, %221
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* @NUM_SBUF, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %248

226:                                              ; preds = %222
  %227 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %228 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %227, i32 0, i32 0
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %228, align 8
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load %struct.urb*, %struct.urb** %233, align 8
  %235 = load i32, i32* @GFP_KERNEL, align 4
  %236 = call i32 @usb_submit_urb(%struct.urb* %234, i32 %235)
  store i32 %236, i32* %6, align 4
  %237 = load i32, i32* %6, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %226
  %240 = load i32, i32* %7, align 4
  %241 = load i32, i32* %6, align 4
  %242 = call i32 @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %240, i32 %241)
  %243 = load i32, i32* %6, align 4
  store i32 %243, i32* %2, align 4
  br label %249

244:                                              ; preds = %226
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  br label %222

248:                                              ; preds = %222
  store i32 0, i32* %2, align 4
  br label %249

249:                                              ; preds = %248, %239, %139, %67
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @ERR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
