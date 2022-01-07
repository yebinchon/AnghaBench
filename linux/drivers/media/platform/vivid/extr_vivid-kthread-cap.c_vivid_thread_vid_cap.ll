; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-kthread-cap.c_vivid_thread_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-kthread-cap.c_vivid_thread_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32, i32, i32, i64, i32, i32, i64, i32, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Video Capture Thread Start\0A\00", align 1
@jiffies = common dso_local global i8* null, align 8
@V4L2_FIELD_ALTERNATE = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@JIFFIES_RESYNC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Video Capture Thread End\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vivid_thread_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivid_thread_vid_cap(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vivid_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.vivid_dev*
  store %struct.vivid_dev* %14, %struct.vivid_dev** %3, align 8
  %15 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %16 = call i32 @dprintk(%struct.vivid_dev* %15, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @set_freezable()
  %18 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %19 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %21 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %23 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %22, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = load i8*, i8** @jiffies, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %27 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %26, i32 0, i32 3
  store i64 %25, i64* %27, align 8
  %28 = call i32 (...) @ktime_get_ns()
  %29 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %30 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %32 = call i32 @vivid_cap_update_frame_period(%struct.vivid_dev* %31)
  br label %33

33:                                               ; preds = %203, %1
  %34 = call i32 (...) @try_to_freeze()
  %35 = call i64 (...) @kthread_should_stop()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %206

38:                                               ; preds = %33
  %39 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %40 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %39, i32 0, i32 7
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load i8*, i8** @jiffies, align 8
  %43 = ptrtoint i8* %42 to i64
  store i64 %43, i64* %8, align 8
  %44 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %45 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %38
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %51 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %53 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add i32 %54, 1
  %56 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %57 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %59 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %61 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %64 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul i32 %62, %65
  %67 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %68 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = add i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %72 = call i32 @vivid_cap_update_frame_period(%struct.vivid_dev* %71)
  %73 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %74 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %73, i32 0, i32 2
  store i32 0, i32* %74, align 8
  br label %75

75:                                               ; preds = %48, %38
  %76 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %77 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %76, i32 0, i32 12
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %10, align 4
  %80 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %81 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %80, i32 0, i32 12
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %11, align 4
  %84 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %85 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %75
  %90 = load i32, i32* %11, align 4
  %91 = mul i32 %90, 2
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %89, %75
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %95 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 %93, %96
  store i64 %97, i64* %7, align 8
  %98 = load i64, i64* %7, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* %11, align 4
  %101 = mul i32 %99, %100
  %102 = load i32, i32* @HZ, align 4
  %103 = load i32, i32* %10, align 4
  %104 = mul i32 %102, %103
  %105 = udiv i32 %104, 2
  %106 = add i32 %101, %105
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @HZ, align 4
  %109 = load i32, i32* %10, align 4
  %110 = mul i32 %108, %109
  %111 = call i32 @do_div(i32 %107, i32 %110)
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* @JIFFIES_RESYNC, align 8
  %114 = icmp ugt i64 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %92
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %118 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %117, i32 0, i32 3
  store i64 %116, i64* %118, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %121 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %115, %92
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %125 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add i32 %123, %126
  %128 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %129 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sub i32 %127, %130
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %134 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add i32 %132, %135
  %137 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %138 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %140 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = zext i32 %141 to i64
  %143 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %144 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %143, i32 0, i32 10
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %142, %145
  %147 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %148 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %147, i32 0, i32 11
  store i64 %146, i64* %148, align 8
  %149 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %150 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = zext i32 %151 to i64
  %153 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %154 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %153, i32 0, i32 8
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %152, %155
  %157 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %158 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %157, i32 0, i32 9
  store i64 %156, i64* %158, align 8
  %159 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @vivid_thread_vid_cap_tick(%struct.vivid_dev* %159, i32 %160)
  %162 = load i32, i32* %5, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* %10, align 4
  %165 = mul i32 %163, %164
  store i32 %165, i32* %4, align 4
  %166 = load i8*, i8** @jiffies, align 8
  %167 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %168 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = sub i64 0, %169
  %171 = getelementptr i8, i8* %166, i64 %170
  %172 = ptrtoint i8* %171 to i64
  store i64 %172, i64* %7, align 8
  %173 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %174 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %173, i32 0, i32 7
  %175 = call i32 @mutex_unlock(i32* %174)
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @HZ, align 4
  %178 = mul i32 %176, %177
  %179 = load i32, i32* %11, align 4
  %180 = udiv i32 %179, 2
  %181 = add i32 %178, %180
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @do_div(i32 %182, i32 %183)
  %185 = load i32, i32* %6, align 4
  %186 = zext i32 %185 to i64
  %187 = load i64, i64* %7, align 8
  %188 = icmp ult i64 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %122
  %190 = load i64, i64* %7, align 8
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %189, %122
  %193 = load i32, i32* %6, align 4
  %194 = zext i32 %193 to i64
  %195 = load i64, i64* %7, align 8
  %196 = sub i64 %194, %195
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %9, align 4
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %192
  %201 = load i32, i32* %9, align 4
  br label %203

202:                                              ; preds = %192
  br label %203

203:                                              ; preds = %202, %200
  %204 = phi i32 [ %201, %200 ], [ 1, %202 ]
  %205 = call i32 @schedule_timeout_interruptible(i32 %204)
  br label %33

206:                                              ; preds = %37
  %207 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %208 = call i32 @dprintk(%struct.vivid_dev* %207, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @dprintk(%struct.vivid_dev*, i32, i8*) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vivid_cap_update_frame_period(%struct.vivid_dev*) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @vivid_thread_vid_cap_tick(%struct.vivid_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
