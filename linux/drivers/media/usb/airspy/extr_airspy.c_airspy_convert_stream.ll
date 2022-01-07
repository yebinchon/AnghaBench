; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/airspy/extr_airspy.c_airspy_convert_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/airspy/extr_airspy.c_airspy_convert_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airspy = type { i64, i32, i32, i32, i64 }

@V4L2_SDR_FMT_RU12LE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"slen=%u samples=%u msecs=%u sample rate=%lu\0A\00", align 1
@MSECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airspy*, i8*, i8*, i32)* @airspy_convert_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @airspy_convert_stream(%struct.airspy* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.airspy*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.airspy* %0, %struct.airspy** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.airspy*, %struct.airspy** %5, align 8
  %13 = getelementptr inbounds %struct.airspy, %struct.airspy* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @V4L2_SDR_FMT_RU12LE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @memcpy(i8* %18, i8* %19, i32 %20)
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %9, align 4
  br label %24

23:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load %struct.airspy*, %struct.airspy** %5, align 8
  %26 = getelementptr inbounds %struct.airspy, %struct.airspy* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @time_is_before_jiffies(i64 %27)
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %71

31:                                               ; preds = %24
  %32 = load i64, i64* @jiffies, align 8
  %33 = load %struct.airspy*, %struct.airspy** %5, align 8
  %34 = getelementptr inbounds %struct.airspy, %struct.airspy* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = call i64 @msecs_to_jiffies(i32 10000)
  %38 = add nsw i64 %36, %37
  %39 = call i32 @jiffies_to_msecs(i64 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.airspy*, %struct.airspy** %5, align 8
  %41 = getelementptr inbounds %struct.airspy, %struct.airspy* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.airspy*, %struct.airspy** %5, align 8
  %44 = getelementptr inbounds %struct.airspy, %struct.airspy* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = sub i32 %42, %45
  store i32 %46, i32* %11, align 4
  %47 = load i64, i64* @jiffies, align 8
  %48 = call i64 @msecs_to_jiffies(i32 10000)
  %49 = add nsw i64 %47, %48
  %50 = load %struct.airspy*, %struct.airspy** %5, align 8
  %51 = getelementptr inbounds %struct.airspy, %struct.airspy* %50, i32 0, i32 4
  store i64 %49, i64* %51, align 8
  %52 = load %struct.airspy*, %struct.airspy** %5, align 8
  %53 = getelementptr inbounds %struct.airspy, %struct.airspy* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.airspy*, %struct.airspy** %5, align 8
  %56 = getelementptr inbounds %struct.airspy, %struct.airspy* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.airspy*, %struct.airspy** %5, align 8
  %58 = getelementptr inbounds %struct.airspy, %struct.airspy* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = zext i32 %63 to i64
  %65 = mul i64 %64, 1000
  %66 = load i32, i32* %10, align 4
  %67 = zext i32 %66 to i64
  %68 = udiv i64 %65, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i32 %62, i32 %69)
  br label %71

71:                                               ; preds = %31, %24
  %72 = load i32, i32* %8, align 4
  %73 = udiv i32 %72, 2
  %74 = load %struct.airspy*, %struct.airspy** %5, align 8
  %75 = getelementptr inbounds %struct.airspy, %struct.airspy* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @time_is_before_jiffies(i64) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
