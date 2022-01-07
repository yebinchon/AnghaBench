; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7251.c_ov7251_regulators_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7251.c_ov7251_regulators_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov7251 = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"set io voltage failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"set analog voltage failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"set core voltage failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov7251*)* @ov7251_regulators_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7251_regulators_enable(%struct.ov7251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov7251*, align 8
  %4 = alloca i32, align 4
  store %struct.ov7251* %0, %struct.ov7251** %3, align 8
  %5 = load %struct.ov7251*, %struct.ov7251** %3, align 8
  %6 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @regulator_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.ov7251*, %struct.ov7251** %3, align 8
  %13 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %53

17:                                               ; preds = %1
  %18 = load %struct.ov7251*, %struct.ov7251** %3, align 8
  %19 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @regulator_enable(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.ov7251*, %struct.ov7251** %3, align 8
  %26 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %47

29:                                               ; preds = %17
  %30 = load %struct.ov7251*, %struct.ov7251** %3, align 8
  %31 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @regulator_enable(i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.ov7251*, %struct.ov7251** %3, align 8
  %38 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %42

41:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %53

42:                                               ; preds = %36
  %43 = load %struct.ov7251*, %struct.ov7251** %3, align 8
  %44 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @regulator_disable(i32 %45)
  br label %47

47:                                               ; preds = %42, %24
  %48 = load %struct.ov7251*, %struct.ov7251** %3, align 8
  %49 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @regulator_disable(i32 %50)
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %47, %41, %11
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
