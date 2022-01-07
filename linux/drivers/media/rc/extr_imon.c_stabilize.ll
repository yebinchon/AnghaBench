; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_stabilize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_stabilize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stabilize.prev_time = internal global i32 0, align 4
@stabilize.hit_time = internal global i32 0, align 4
@stabilize.x = internal global i32 0, align 4
@stabilize.y = internal global i32 0, align 4
@stabilize.prev_result = internal global i32 0, align 4
@stabilize.hits = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i64)* @stabilize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stabilize(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %13 = call i32 (...) @ktime_get()
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @stabilize.prev_time, align 4
  %16 = call i64 @ktime_ms_delta(i32 %14, i32 %15)
  store i64 %16, i64* %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @stabilize.hit_time, align 4
  %19 = call i64 @ktime_ms_delta(i32 %17, i32 %18)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp sgt i64 %20, 100
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* @stabilize.x, align 4
  store i32 0, i32* @stabilize.y, align 4
  store i32 0, i32* @stabilize.hits, align 4
  br label %23

23:                                               ; preds = %22, %4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @stabilize.x, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* @stabilize.x, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @stabilize.y, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* @stabilize.y, align 4
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* @stabilize.prev_time, align 4
  %31 = load i32, i32* @stabilize.x, align 4
  %32 = call i64 @abs(i32 %31)
  %33 = load i64, i64* %8, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* @stabilize.y, align 4
  %37 = call i64 @abs(i32 %36)
  %38 = load i64, i64* %8, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %107

40:                                               ; preds = %35, %23
  %41 = load i32, i32* @stabilize.y, align 4
  %42 = call i64 @abs(i32 %41)
  %43 = load i32, i32* @stabilize.x, align 4
  %44 = call i64 @abs(i32 %43)
  %45 = icmp sgt i64 %42, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32, i32* @stabilize.y, align 4
  %48 = icmp sgt i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 127, i32 128
  store i32 %50, i32* %10, align 4
  br label %56

51:                                               ; preds = %40
  %52 = load i32, i32* @stabilize.x, align 4
  %53 = icmp sgt i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 32512, i32 32768
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %51, %46
  store i32 0, i32* @stabilize.x, align 4
  store i32 0, i32* @stabilize.y, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @stabilize.prev_result, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %103

60:                                               ; preds = %56
  %61 = load i32, i32* @stabilize.hits, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @stabilize.hits, align 4
  %63 = load i32, i32* @stabilize.hits, align 4
  %64 = icmp sgt i32 %63, 3
  br i1 %64, label %65, label %94

65:                                               ; preds = %60
  %66 = load i32, i32* %10, align 4
  switch i32 %66, label %93 [
    i32 127, label %67
    i32 128, label %72
    i32 32512, label %80
    i32 32768, label %85
  ]

67:                                               ; preds = %65
  %68 = load i64, i64* %8, align 8
  %69 = mul nsw i64 17, %68
  %70 = sdiv i64 %69, 30
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* @stabilize.y, align 4
  br label %93

72:                                               ; preds = %65
  %73 = load i64, i64* %8, align 8
  %74 = mul nsw i64 17, %73
  %75 = sdiv i64 %74, 30
  %76 = load i32, i32* @stabilize.y, align 4
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* @stabilize.y, align 4
  br label %93

80:                                               ; preds = %65
  %81 = load i64, i64* %8, align 8
  %82 = mul nsw i64 17, %81
  %83 = sdiv i64 %82, 30
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* @stabilize.x, align 4
  br label %93

85:                                               ; preds = %65
  %86 = load i64, i64* %8, align 8
  %87 = mul nsw i64 17, %86
  %88 = sdiv i64 %87, 30
  %89 = load i32, i32* @stabilize.x, align 4
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* @stabilize.x, align 4
  br label %93

93:                                               ; preds = %65, %85, %80, %72, %67
  br label %94

94:                                               ; preds = %93, %60
  %95 = load i32, i32* @stabilize.hits, align 4
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* %7, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 0, i32* %10, align 4
  store i32 1, i32* @stabilize.hits, align 4
  br label %102

102:                                              ; preds = %101, %97, %94
  br label %106

103:                                              ; preds = %56
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* @stabilize.prev_result, align 4
  store i32 1, i32* @stabilize.hits, align 4
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* @stabilize.hit_time, align 4
  br label %106

106:                                              ; preds = %103, %102
  br label %107

107:                                              ; preds = %106, %35
  %108 = load i32, i32* %10, align 4
  ret i32 %108
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_ms_delta(i32, i32) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
