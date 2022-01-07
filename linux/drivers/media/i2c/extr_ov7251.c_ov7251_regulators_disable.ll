; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7251.c_ov7251_regulators_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7251.c_ov7251_regulators_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov7251 = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"core regulator disable failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"analog regulator disable failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"io regulator disable failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ov7251*)* @ov7251_regulators_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov7251_regulators_disable(%struct.ov7251* %0) #0 {
  %2 = alloca %struct.ov7251*, align 8
  %3 = alloca i32, align 4
  store %struct.ov7251* %0, %struct.ov7251** %2, align 8
  %4 = load %struct.ov7251*, %struct.ov7251** %2, align 8
  %5 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @regulator_disable(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.ov7251*, %struct.ov7251** %2, align 8
  %12 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.ov7251*, %struct.ov7251** %2, align 8
  %17 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regulator_disable(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.ov7251*, %struct.ov7251** %2, align 8
  %24 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22, %15
  %28 = load %struct.ov7251*, %struct.ov7251** %2, align 8
  %29 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @regulator_disable(i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.ov7251*, %struct.ov7251** %2, align 8
  %36 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %27
  ret void
}

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
