; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_bdisp_dbg_perf_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_bdisp_dbg_perf_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdisp_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bdisp_dbg_perf_end(%struct.bdisp_dev* %0) #0 {
  %2 = alloca %struct.bdisp_dev*, align 8
  %3 = alloca i8*, align 8
  store %struct.bdisp_dev* %0, %struct.bdisp_dev** %2, align 8
  %4 = call i32 (...) @ktime_get()
  %5 = load %struct.bdisp_dev*, %struct.bdisp_dev** %2, align 8
  %6 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i8* @ktime_us_delta(i32 %4, i32 %8)
  store i8* %9, i8** %3, align 8
  %10 = load %struct.bdisp_dev*, %struct.bdisp_dev** %2, align 8
  %11 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.bdisp_dev*, %struct.bdisp_dev** %2, align 8
  %18 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  store i8* %16, i8** %19, align 8
  br label %30

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.bdisp_dev*, %struct.bdisp_dev** %2, align 8
  %23 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @min(i8* %21, i8* %25)
  %27 = load %struct.bdisp_dev*, %struct.bdisp_dev** %2, align 8
  %28 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i8* %26, i8** %29, align 8
  br label %30

30:                                               ; preds = %20, %15
  %31 = load i8*, i8** %3, align 8
  %32 = load %struct.bdisp_dev*, %struct.bdisp_dev** %2, align 8
  %33 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i8* %31, i8** %34, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = load %struct.bdisp_dev*, %struct.bdisp_dev** %2, align 8
  %37 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @max(i8* %35, i32 %39)
  %41 = load %struct.bdisp_dev*, %struct.bdisp_dev** %2, align 8
  %42 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load i8*, i8** %3, align 8
  %45 = load %struct.bdisp_dev*, %struct.bdisp_dev** %2, align 8
  %46 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, i8* %44, i64 %49
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %47, align 8
  ret void
}

declare dso_local i8* @ktime_us_delta(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i8* @min(i8*, i8*) #1

declare dso_local i32 @max(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
