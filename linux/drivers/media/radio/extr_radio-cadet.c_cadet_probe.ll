; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_cadet_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_cadet_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.cadet = type { i32 }

@cadet_probe.iovals = internal global [8 x i32] [i32 816, i32 818, i32 820, i32 822, i32 824, i32 826, i32 828, i32 830], align 16
@.str = private unnamed_addr constant [12 x i8] c"cadet-probe\00", align 1
@bands = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cadet*)* @cadet_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cadet_probe(%struct.cadet* %0) #0 {
  %2 = alloca %struct.cadet*, align 8
  %3 = alloca i32, align 4
  store %struct.cadet* %0, %struct.cadet** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %44, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %47

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* @cadet_probe.iovals, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cadet*, %struct.cadet** %2, align 8
  %13 = getelementptr inbounds %struct.cadet, %struct.cadet* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.cadet*, %struct.cadet** %2, align 8
  %15 = getelementptr inbounds %struct.cadet, %struct.cadet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @request_region(i32 %16, i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %7
  %20 = load %struct.cadet*, %struct.cadet** %2, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @cadet_setfreq(%struct.cadet* %20, i64 %24)
  %26 = load %struct.cadet*, %struct.cadet** %2, align 8
  %27 = call i64 @cadet_getfreq(%struct.cadet* %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %27, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load %struct.cadet*, %struct.cadet** %2, align 8
  %35 = getelementptr inbounds %struct.cadet, %struct.cadet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @release_region(i32 %36, i32 2)
  br label %50

38:                                               ; preds = %19
  %39 = load %struct.cadet*, %struct.cadet** %2, align 8
  %40 = getelementptr inbounds %struct.cadet, %struct.cadet* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @release_region(i32 %41, i32 2)
  br label %43

43:                                               ; preds = %38, %7
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %4

47:                                               ; preds = %4
  %48 = load %struct.cadet*, %struct.cadet** %2, align 8
  %49 = getelementptr inbounds %struct.cadet, %struct.cadet* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %33
  ret void
}

declare dso_local i64 @request_region(i32, i32, i8*) #1

declare dso_local i32 @cadet_setfreq(%struct.cadet*, i64) #1

declare dso_local i64 @cadet_getfreq(%struct.cadet*) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
