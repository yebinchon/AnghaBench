; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_copy_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_copy_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hackrf_dev = type { i32, i32, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"slen=%u samples=%u msecs=%u sample rate=%lu\0A\00", align 1
@MSECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hackrf_dev*, i8*, i8*, i32)* @hackrf_copy_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hackrf_copy_stream(%struct.hackrf_dev* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.hackrf_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hackrf_dev* %0, %struct.hackrf_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @memcpy(i8* %11, i8* %12, i32 %13)
  %15 = load %struct.hackrf_dev*, %struct.hackrf_dev** %5, align 8
  %16 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @time_is_before_jiffies(i64 %17)
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %4
  %22 = load i64, i64* @jiffies, align 8
  %23 = load %struct.hackrf_dev*, %struct.hackrf_dev** %5, align 8
  %24 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = call i64 @msecs_to_jiffies(i32 10000)
  %28 = add nsw i64 %26, %27
  %29 = call i32 @jiffies_to_msecs(i64 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.hackrf_dev*, %struct.hackrf_dev** %5, align 8
  %31 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.hackrf_dev*, %struct.hackrf_dev** %5, align 8
  %34 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 %32, %35
  store i32 %36, i32* %10, align 4
  %37 = load i64, i64* @jiffies, align 8
  %38 = call i64 @msecs_to_jiffies(i32 10000)
  %39 = add nsw i64 %37, %38
  %40 = load %struct.hackrf_dev*, %struct.hackrf_dev** %5, align 8
  %41 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  %42 = load %struct.hackrf_dev*, %struct.hackrf_dev** %5, align 8
  %43 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.hackrf_dev*, %struct.hackrf_dev** %5, align 8
  %46 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.hackrf_dev*, %struct.hackrf_dev** %5, align 8
  %48 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = mul i64 %54, 1000
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = udiv i64 %55, %57
  %59 = trunc i64 %58 to i32
  %60 = call i32 @dev_dbg(i32 %49, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i32 %52, i32 %59)
  br label %61

61:                                               ; preds = %21, %4
  %62 = load i32, i32* %8, align 4
  %63 = udiv i32 %62, 2
  %64 = load %struct.hackrf_dev*, %struct.hackrf_dev** %5, align 8
  %65 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add i32 %66, %63
  store i32 %67, i32* %65, align 8
  ret void
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
