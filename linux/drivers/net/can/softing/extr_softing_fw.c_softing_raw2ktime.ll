; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_fw.c_softing_raw2ktime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_fw.c_softing_raw2ktime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softing = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @softing_raw2ktime(%struct.softing* %0, i32 %1) #0 {
  %3 = alloca %struct.softing*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.softing* %0, %struct.softing** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = call i32 (...) @ktime_get()
  store i32 %10, i32* %6, align 4
  %11 = call i32 (...) @ktime_get_real()
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @ktime_sub(i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %14, 16
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.softing*, %struct.softing** %3, align 8
  %18 = getelementptr inbounds %struct.softing, %struct.softing* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %23
  %26 = phi i64 [ %21, %23 ], [ 16, %24 ]
  %27 = trunc i64 %26 to i32
  %28 = call i32 @do_div(i32 %16, i32 %27)
  %29 = load %struct.softing*, %struct.softing** %3, align 8
  %30 = getelementptr inbounds %struct.softing, %struct.softing* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ktime_add_us(i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.softing*, %struct.softing** %3, align 8
  %36 = getelementptr inbounds %struct.softing, %struct.softing* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ktime_add(i32 %34, i32 %37)
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %48, %25
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @ktime_to_ns(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @ktime_to_ns(i32 %42)
  %44 = icmp sgt i64 %41, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %39
  %49 = load %struct.softing*, %struct.softing** %3, align 8
  %50 = getelementptr inbounds %struct.softing, %struct.softing* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.softing*, %struct.softing** %3, align 8
  %53 = getelementptr inbounds %struct.softing, %struct.softing* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ktime_add(i32 %51, i32 %54)
  %56 = load %struct.softing*, %struct.softing** %3, align 8
  %57 = getelementptr inbounds %struct.softing, %struct.softing* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.softing*, %struct.softing** %3, align 8
  %61 = getelementptr inbounds %struct.softing, %struct.softing* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ktime_add(i32 %59, i32 %62)
  store i32 %63, i32* %9, align 4
  br label %39

64:                                               ; preds = %39
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @ktime_add(i32 %65, i32 %66)
  ret i32 %67
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ktime_to_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
