; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_process_frame_data_em28xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_process_frame_data_em28xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { %struct.TYPE_2__, %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue, %struct.em28xx_v4l2* }
%struct.TYPE_2__ = type { %struct.em28xx_buffer*, %struct.em28xx_buffer* }
%struct.em28xx_buffer = type { i32 }
%struct.em28xx_dmaqueue = type { i32 }
%struct.em28xx_v4l2 = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"VBI START HEADER !!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"VIDEO START HEADER !!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx*, i8*, i32)* @process_frame_data_em28xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_frame_data_em28xx(%struct.em28xx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.em28xx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.em28xx_v4l2*, align 8
  %8 = alloca %struct.em28xx_buffer*, align 8
  %9 = alloca %struct.em28xx_buffer*, align 8
  %10 = alloca %struct.em28xx_dmaqueue*, align 8
  %11 = alloca %struct.em28xx_dmaqueue*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %15 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %14, i32 0, i32 3
  %16 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %15, align 8
  store %struct.em28xx_v4l2* %16, %struct.em28xx_v4l2** %7, align 8
  %17 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %18 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %19, align 8
  store %struct.em28xx_buffer* %20, %struct.em28xx_buffer** %8, align 8
  %21 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %22 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %23, align 8
  store %struct.em28xx_buffer* %24, %struct.em28xx_buffer** %9, align 8
  %25 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %26 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %25, i32 0, i32 2
  store %struct.em28xx_dmaqueue* %26, %struct.em28xx_dmaqueue** %10, align 8
  %27 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %28 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %27, i32 0, i32 1
  store %struct.em28xx_dmaqueue* %28, %struct.em28xx_dmaqueue** %11, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp uge i32 %29, 4
  br i1 %30, label %31, label %125

31:                                               ; preds = %3
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 136
  br i1 %36, label %37, label %60

37:                                               ; preds = %31
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 136
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 136
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 3
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 136
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 4
  store i8* %57, i8** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sub i32 %58, 4
  store i32 %59, i32* %6, align 4
  br label %124

60:                                               ; preds = %49, %43, %37, %31
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 51
  br i1 %65, label %66, label %92

66:                                               ; preds = %60
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 149
  br i1 %71, label %72, label %92

72:                                               ; preds = %66
  %73 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %74 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  %75 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %76 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  %77 = call i32 @em28xx_isocdbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %87 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 4
  store i8* %89, i8** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sub i32 %90, 4
  store i32 %91, i32* %6, align 4
  br label %123

92:                                               ; preds = %66, %60
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %96, 34
  br i1 %97, label %98, label %122

98:                                               ; preds = %92
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 90
  br i1 %103, label %104, label %122

104:                                              ; preds = %98
  %105 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %106 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %105, i32 0, i32 0
  store i32 2, i32* %106, align 4
  %107 = call i32 @em28xx_isocdbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 2
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = and i32 %111, 1
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %117 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 4
  store i8* %119, i8** %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sub i32 %120, 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %104, %98, %92
  br label %123

123:                                              ; preds = %122, %72
  br label %124

124:                                              ; preds = %123, %55
  br label %125

125:                                              ; preds = %124, %3
  %126 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %127 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %132 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %9, align 8
  %133 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %11, align 8
  %134 = call %struct.em28xx_buffer* @finish_field_prepare_next(%struct.em28xx* %131, %struct.em28xx_buffer* %132, %struct.em28xx_dmaqueue* %133)
  store %struct.em28xx_buffer* %134, %struct.em28xx_buffer** %9, align 8
  %135 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %9, align 8
  %136 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %137 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  store %struct.em28xx_buffer* %135, %struct.em28xx_buffer** %138, align 8
  %139 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %140 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %139, i32 0, i32 0
  store i32 1, i32* %140, align 4
  br label %141

141:                                              ; preds = %130, %125
  %142 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %143 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %199

146:                                              ; preds = %141
  %147 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %148 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %151 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %149, %152
  store i32 %153, i32* %12, align 4
  %154 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %155 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %6, align 4
  %158 = add i32 %156, %157
  %159 = load i32, i32* %12, align 4
  %160 = icmp ugt i32 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %146
  %162 = load i32, i32* %12, align 4
  %163 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %164 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sub i32 %162, %165
  br label %169

167:                                              ; preds = %146
  %168 = load i32, i32* %6, align 4
  br label %169

169:                                              ; preds = %167, %161
  %170 = phi i32 [ %166, %161 ], [ %168, %167 ]
  store i32 %170, i32* %13, align 4
  %171 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %9, align 8
  %172 = icmp ne %struct.em28xx_buffer* %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %175 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %9, align 8
  %176 = load i8*, i8** %5, align 8
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @em28xx_copy_vbi(%struct.em28xx* %174, %struct.em28xx_buffer* %175, i8* %176, i32 %177)
  br label %179

179:                                              ; preds = %173, %169
  %180 = load i32, i32* %13, align 4
  %181 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %182 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = add i32 %183, %180
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp ult i32 %185, %186
  br i1 %187, label %188, label %198

188:                                              ; preds = %179
  %189 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %190 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %189, i32 0, i32 0
  store i32 2, i32* %190, align 4
  %191 = load i32, i32* %13, align 4
  %192 = load i8*, i8** %5, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  store i8* %194, i8** %5, align 8
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %6, align 4
  %197 = sub i32 %196, %195
  store i32 %197, i32* %6, align 4
  br label %198

198:                                              ; preds = %188, %179
  br label %199

199:                                              ; preds = %198, %141
  %200 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %201 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 2
  br i1 %203, label %204, label %215

204:                                              ; preds = %199
  %205 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %206 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %8, align 8
  %207 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %10, align 8
  %208 = call %struct.em28xx_buffer* @finish_field_prepare_next(%struct.em28xx* %205, %struct.em28xx_buffer* %206, %struct.em28xx_dmaqueue* %207)
  store %struct.em28xx_buffer* %208, %struct.em28xx_buffer** %8, align 8
  %209 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %8, align 8
  %210 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %211 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  store %struct.em28xx_buffer* %209, %struct.em28xx_buffer** %212, align 8
  %213 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %214 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %213, i32 0, i32 0
  store i32 3, i32* %214, align 4
  br label %215

215:                                              ; preds = %204, %199
  %216 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %217 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 3
  br i1 %219, label %220, label %232

220:                                              ; preds = %215
  %221 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %8, align 8
  %222 = icmp ne %struct.em28xx_buffer* %221, null
  br i1 %222, label %223, label %232

223:                                              ; preds = %220
  %224 = load i32, i32* %6, align 4
  %225 = icmp ugt i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %223
  %227 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %228 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %8, align 8
  %229 = load i8*, i8** %5, align 8
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @em28xx_copy_video(%struct.em28xx* %227, %struct.em28xx_buffer* %228, i8* %229, i32 %230)
  br label %232

232:                                              ; preds = %226, %223, %220, %215
  ret void
}

declare dso_local i32 @em28xx_isocdbg(i8*) #1

declare dso_local %struct.em28xx_buffer* @finish_field_prepare_next(%struct.em28xx*, %struct.em28xx_buffer*, %struct.em28xx_dmaqueue*) #1

declare dso_local i32 @em28xx_copy_vbi(%struct.em28xx*, %struct.em28xx_buffer*, i8*, i32) #1

declare dso_local i32 @em28xx_copy_video(%struct.em28xx*, %struct.em28xx_buffer*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
