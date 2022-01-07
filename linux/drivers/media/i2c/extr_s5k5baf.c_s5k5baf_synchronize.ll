; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_synchronize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_synchronize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"timeout on register synchronize (%#x)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5k5baf*, i32, i32)* @s5k5baf_synchronize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5k5baf_synchronize(%struct.s5k5baf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.s5k5baf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.s5k5baf* %0, %struct.s5k5baf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @msecs_to_jiffies(i32 %10)
  %12 = add i64 %9, %11
  store i64 %12, i64* %7, align 8
  %13 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @s5k5baf_write(%struct.s5k5baf* %13, i32 %14, i32 1)
  br label %16

16:                                               ; preds = %30, %3
  %17 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @s5k5baf_read(%struct.s5k5baf* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %21 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %16
  br label %43

28:                                               ; preds = %24
  %29 = call i32 @usleep_range(i32 5000, i32 10000)
  br label %30

30:                                               ; preds = %28
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @time_is_after_jiffies(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %16, label %34

34:                                               ; preds = %30
  %35 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %36 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %35, i32 0, i32 1
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @v4l2_err(i32* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  %41 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %42 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %34, %27
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @s5k5baf_write(%struct.s5k5baf*, i32, i32) #1

declare dso_local i32 @s5k5baf_read(%struct.s5k5baf*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
