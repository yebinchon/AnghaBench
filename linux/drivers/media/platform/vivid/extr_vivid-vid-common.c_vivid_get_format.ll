; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-common.c_vivid_get_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-common.c_vivid_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_fmt = type { i64, i32 }
%struct.vivid_dev = type { i64 }

@vivid_formats = common dso_local global %struct.vivid_fmt* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vivid_fmt* @vivid_get_format(%struct.vivid_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.vivid_fmt*, align 8
  %4 = alloca %struct.vivid_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vivid_fmt*, align 8
  %7 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %37, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.vivid_fmt*, %struct.vivid_fmt** @vivid_formats, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.vivid_fmt* %10)
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %8
  %14 = load %struct.vivid_fmt*, %struct.vivid_fmt** @vivid_formats, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %14, i64 %16
  store %struct.vivid_fmt* %17, %struct.vivid_fmt** %6, align 8
  %18 = load %struct.vivid_fmt*, %struct.vivid_fmt** %6, align 8
  %19 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %13
  %24 = load %struct.vivid_fmt*, %struct.vivid_fmt** %6, align 8
  %25 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %30 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %23
  %34 = load %struct.vivid_fmt*, %struct.vivid_fmt** %6, align 8
  store %struct.vivid_fmt* %34, %struct.vivid_fmt** %3, align 8
  br label %41

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %13
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %8

40:                                               ; preds = %8
  store %struct.vivid_fmt* null, %struct.vivid_fmt** %3, align 8
  br label %41

41:                                               ; preds = %40, %33
  %42 = load %struct.vivid_fmt*, %struct.vivid_fmt** %3, align 8
  ret %struct.vivid_fmt* %42
}

declare dso_local i32 @ARRAY_SIZE(%struct.vivid_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
