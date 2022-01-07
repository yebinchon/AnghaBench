; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_arizona_poll_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_arizona_poll_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { i32, i32 }

@USEC_PER_MSEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed polling reg 0x%x: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Polling reg 0x%x timed out: %x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arizona*, i32, i32, i32, i32)* @arizona_poll_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_poll_reg(%struct.arizona* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.arizona*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.arizona* %0, %struct.arizona** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = call i32 (...) @ktime_get()
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @USEC_PER_MSEC, align 4
  %18 = mul nsw i32 %16, %17
  %19 = call i32 @ktime_add_us(i32 %15, i32 %18)
  store i32 %19, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %33, %5
  %21 = load %struct.arizona*, %struct.arizona** %7, align 8
  %22 = getelementptr inbounds %struct.arizona, %struct.arizona* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @regmap_read(i32 %23, i32 %24, i32* %13)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %57

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @arizona_poll_reg_delay(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %20, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.arizona*, %struct.arizona** %7, align 8
  %42 = getelementptr inbounds %struct.arizona, %struct.arizona* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %6, align 4
  br label %57

48:                                               ; preds = %37
  %49 = load %struct.arizona*, %struct.arizona** %7, align 8
  %50 = getelementptr inbounds %struct.arizona, %struct.arizona* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %48, %40, %31
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @arizona_poll_reg_delay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
