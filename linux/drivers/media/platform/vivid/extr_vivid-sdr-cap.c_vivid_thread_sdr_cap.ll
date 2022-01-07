; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-sdr-cap.c_vivid_thread_sdr_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-sdr-cap.c_vivid_thread_sdr_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32, i64, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"SDR Capture Thread Start\0A\00", align 1
@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@SDR_CAP_SAMPLES_PER_BUF = common dso_local global i32 0, align 4
@JIFFIES_RESYNC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"SDR Capture Thread End\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vivid_thread_sdr_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivid_thread_sdr_cap(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vivid_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.vivid_dev*
  store %struct.vivid_dev* %11, %struct.vivid_dev** %3, align 8
  %12 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %13 = call i32 @dprintk(%struct.vivid_dev* %12, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (...) @set_freezable()
  %15 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %16 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %18 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %23 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %22, i32 0, i32 0
  store i32 -128, i32* %23, align 8
  br label %24

24:                                               ; preds = %21, %1
  %25 = load i8*, i8** @jiffies, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %28 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %30 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %29, i32 0, i32 2
  store i32 0, i32* %30, align 8
  br label %31

31:                                               ; preds = %149, %24
  %32 = call i32 (...) @try_to_freeze()
  %33 = call i64 (...) @kthread_should_stop()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %152

36:                                               ; preds = %31
  %37 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %38 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %37, i32 0, i32 5
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load i8*, i8** @jiffies, align 8
  %41 = ptrtoint i8* %40 to i64
  store i64 %41, i64* %8, align 8
  %42 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %43 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %36
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %49 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %51 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  %54 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %55 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %57 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %56, i32 0, i32 3
  store i32 0, i32* %57, align 4
  %58 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %59 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %58, i32 0, i32 2
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %46, %36
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %63 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub i64 %61, %64
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = trunc i64 %66 to i32
  %68 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %69 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %67, %70
  %72 = load i32, i32* @HZ, align 4
  %73 = load i32, i32* @SDR_CAP_SAMPLES_PER_BUF, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sdiv i32 %74, 2
  %76 = add nsw i32 %71, %75
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @HZ, align 4
  %79 = load i32, i32* @SDR_CAP_SAMPLES_PER_BUF, align 4
  %80 = mul nsw i32 %78, %79
  %81 = call i32 @do_div(i32 %77, i32 %80)
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @JIFFIES_RESYNC, align 8
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %60
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %88 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %91 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %85, %60
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %95 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %93, %96
  %98 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %99 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %101 = call i32 @vivid_thread_sdr_cap_tick(%struct.vivid_dev* %100)
  %102 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %103 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %102, i32 0, i32 5
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @SDR_CAP_SAMPLES_PER_BUF, align 4
  %107 = mul nsw i32 %105, %106
  store i32 %107, i32* %4, align 4
  %108 = load i8*, i8** @jiffies, align 8
  %109 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %110 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sub i64 0, %111
  %113 = getelementptr i8, i8* %108, i64 %112
  %114 = ptrtoint i8* %113 to i64
  store i64 %114, i64* %7, align 8
  %115 = load i32, i32* @SDR_CAP_SAMPLES_PER_BUF, align 4
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @HZ, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %122 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = sdiv i32 %123, 2
  %125 = add nsw i32 %120, %124
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %128 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @do_div(i32 %126, i32 %129)
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %7, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %92
  %136 = load i64, i64* %7, align 8
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %135, %92
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %7, align 8
  %142 = sub i64 %140, %141
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load i32, i32* %9, align 4
  br label %149

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148, %146
  %150 = phi i32 [ %147, %146 ], [ 1, %148 ]
  %151 = call i32 @schedule_timeout_interruptible(i32 %150)
  br label %31

152:                                              ; preds = %35
  %153 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %154 = call i32 @dprintk(%struct.vivid_dev* %153, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @dprintk(%struct.vivid_dev*, i32, i8*) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @vivid_thread_sdr_cap_tick(%struct.vivid_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
