; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/echo/extr_echo.c_oslec_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/echo/extr_echo.c_oslec_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oslec_state = type { i32, i32, i32, i32, i64, i32*, %struct.TYPE_2__, %struct.TYPE_2__, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oslec_flush(%struct.oslec_state* %0) #0 {
  %2 = alloca %struct.oslec_state*, align 8
  %3 = alloca i32, align 4
  store %struct.oslec_state* %0, %struct.oslec_state** %2, align 8
  %4 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %5 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %4, i32 0, i32 19
  store i64 0, i64* %5, align 8
  %6 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %7 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %6, i32 0, i32 20
  store i64 0, i64* %7, align 8
  %8 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %9 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %8, i32 0, i32 21
  store i64 0, i64* %9, align 8
  %10 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %11 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %10, i32 0, i32 22
  store i64 0, i64* %11, align 8
  %12 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %13 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %12, i32 0, i32 15
  store i64 0, i64* %13, align 8
  %14 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %15 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %14, i32 0, i32 16
  store i64 0, i64* %15, align 8
  %16 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %17 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %16, i32 0, i32 17
  store i64 0, i64* %17, align 8
  %18 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %19 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %18, i32 0, i32 18
  store i64 0, i64* %19, align 8
  %20 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %21 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %20, i32 0, i32 11
  store i64 0, i64* %21, align 8
  %22 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %23 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %22, i32 0, i32 12
  store i64 0, i64* %23, align 8
  %24 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %25 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %24, i32 0, i32 13
  store i64 0, i64* %25, align 8
  %26 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %27 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %26, i32 0, i32 14
  store i64 0, i64* %27, align 8
  %28 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %29 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %28, i32 0, i32 9
  store i64 0, i64* %29, align 8
  %30 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %31 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %30, i32 0, i32 10
  store i64 0, i64* %31, align 8
  %32 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %33 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %32, i32 0, i32 0
  store i32 200, i32* %33, align 8
  %34 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %35 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %36, 13
  %38 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %39 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %41 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %40, i32 0, i32 8
  store i64 0, i64* %41, align 8
  %42 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %43 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %42, i32 0, i32 7
  %44 = call i32 @fir16_flush(%struct.TYPE_2__* %43)
  %45 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %46 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %45, i32 0, i32 6
  %47 = call i32 @fir16_flush(%struct.TYPE_2__* %46)
  %48 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %49 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  %52 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %53 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %56 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %60 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %80, %1
  %63 = load i32, i32* %3, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %65, label %83

65:                                               ; preds = %62
  %66 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %67 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %74 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memset(i32 %72, i32 0, i32 %78)
  br label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %62

83:                                               ; preds = %62
  %84 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %85 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %89 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %91 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %90, i32 0, i32 4
  store i64 0, i64* %91, align 8
  ret void
}

declare dso_local i32 @fir16_flush(%struct.TYPE_2__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
