; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss.c_camss_enable_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss.c_camss_enable_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camss_clock = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"clock enable failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @camss_enable_clocks(i32 %0, %struct.camss_clock* %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.camss_clock*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.camss_clock* %1, %struct.camss_clock** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %29, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load %struct.camss_clock*, %struct.camss_clock** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %15, i64 %17
  %19 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_prepare_enable(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %33

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %10

32:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %52

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %47, %33
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.camss_clock*, %struct.camss_clock** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %40, i64 %42
  %44 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @clk_disable_unprepare(i32 %45)
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %9, align 4
  br label %36

50:                                               ; preds = %36
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %32
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
