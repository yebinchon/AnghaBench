; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_isoc_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_isoc_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.urb = type { i32, i32, i8*, %struct.TYPE_4__*, %struct.cx231xx_dmaqueue* }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.cx231xx_dmaqueue = type { i32, i32, i64 }

@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"packet bigger than packet size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx*, %struct.urb*)* @cx231xx_isoc_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_isoc_copy(%struct.cx231xx* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.cx231xx_dmaqueue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %14 = load %struct.urb*, %struct.urb** %5, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 4
  %16 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %15, align 8
  store %struct.cx231xx_dmaqueue* %16, %struct.cx231xx_dmaqueue** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %18 = icmp ne %struct.cx231xx* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %220

20:                                               ; preds = %2
  %21 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %22 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DEV_DISCONNECTED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %220

28:                                               ; preds = %20
  %29 = load %struct.urb*, %struct.urb** %5, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %35 = load %struct.urb*, %struct.urb** %5, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @print_err_status(%struct.cx231xx* %34, i32 -1, i32 %37)
  %39 = load %struct.urb*, %struct.urb** %5, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %220

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %28
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %216, %47
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.urb*, %struct.urb** %5, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %219

54:                                               ; preds = %48
  %55 = load %struct.urb*, %struct.urb** %5, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %54
  %66 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @print_err_status(%struct.cx231xx* %66, i32 %67, i32 %68)
  %70 = load %struct.urb*, %struct.urb** %5, align 8
  %71 = getelementptr inbounds %struct.urb, %struct.urb* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @EPROTO, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %65
  br label %216

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82, %54
  %84 = load %struct.urb*, %struct.urb** %5, align 8
  %85 = getelementptr inbounds %struct.urb, %struct.urb* %84, i32 0, i32 3
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp sle i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %216

94:                                               ; preds = %83
  %95 = load %struct.urb*, %struct.urb** %5, align 8
  %96 = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 3
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %104 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %102, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %94
  %109 = call i32 @cx231xx_isocdbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %216

110:                                              ; preds = %94
  %111 = load %struct.urb*, %struct.urb** %5, align 8
  %112 = getelementptr inbounds %struct.urb, %struct.urb* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.urb*, %struct.urb** %5, align 8
  %115 = getelementptr inbounds %struct.urb, %struct.urb* %114, i32 0, i32 3
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %113, i64 %122
  store i8* %123, i8** %8, align 8
  %124 = load %struct.urb*, %struct.urb** %5, align 8
  %125 = getelementptr inbounds %struct.urb, %struct.urb* %124, i32 0, i32 3
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %133 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %134 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %110
  %138 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %139 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %11, align 4
  br label %147

141:                                              ; preds = %110
  %142 = load i8*, i8** %8, align 8
  %143 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %144 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @cx231xx_find_boundary_SAV_EAV(i8* %142, i32 %145, i32* %9)
  store i32 %146, i32* %11, align 4
  br label %147

147:                                              ; preds = %141, %137
  %148 = load i32, i32* %11, align 4
  %149 = and i32 %148, 240
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %147
  %153 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %154 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %155 = load i32, i32* %11, align 4
  %156 = load i8*, i8** %8, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %9, align 4
  %162 = sub nsw i32 %160, %161
  %163 = call i32 @cx231xx_get_video_line(%struct.cx231xx* %153, %struct.cx231xx_dmaqueue* %154, i32 %155, i8* %159, i32 %162)
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %152, %147
  br label %167

167:                                              ; preds = %205, %166
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %206

171:                                              ; preds = %167
  store i32 0, i32* %13, align 4
  %172 = load i8*, i8** %8, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %9, align 4
  %178 = sub nsw i32 %176, %177
  %179 = call i32 @cx231xx_find_next_SAV_EAV(i8* %175, i32 %178, i32* %13)
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %11, align 4
  %184 = and i32 %183, 240
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %205

187:                                              ; preds = %171
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %205

191:                                              ; preds = %187
  %192 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %193 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %194 = load i32, i32* %11, align 4
  %195 = load i8*, i8** %8, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %9, align 4
  %201 = sub nsw i32 %199, %200
  %202 = call i32 @cx231xx_get_video_line(%struct.cx231xx* %192, %struct.cx231xx_dmaqueue* %193, i32 %194, i8* %198, i32 %201)
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %9, align 4
  br label %205

205:                                              ; preds = %191, %187, %171
  br label %167

206:                                              ; preds = %167
  %207 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %208 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i8*, i8** %8, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %210, i64 %212
  %214 = getelementptr inbounds i8, i8* %213, i64 -4
  %215 = call i32 @memcpy(i32 %209, i8* %214, i32 4)
  store i32 0, i32* %9, align 4
  br label %216

216:                                              ; preds = %206, %108, %93, %81
  %217 = load i32, i32* %7, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %7, align 4
  br label %48

219:                                              ; preds = %48
  store i32 1, i32* %3, align 4
  br label %220

220:                                              ; preds = %219, %45, %27, %19
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @print_err_status(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_isocdbg(i8*) #1

declare dso_local i32 @cx231xx_find_boundary_SAV_EAV(i8*, i32, i32*) #1

declare dso_local i32 @cx231xx_get_video_line(%struct.cx231xx*, %struct.cx231xx_dmaqueue*, i32, i8*, i32) #1

declare dso_local i32 @cx231xx_find_next_SAV_EAV(i8*, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
