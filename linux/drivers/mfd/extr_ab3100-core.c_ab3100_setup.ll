; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab3100-core.c_ab3100_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab3100-core.c_ab3100_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.ab3100 = type { i32, i32 }

@ab3100_init_settings = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"AB3100 P1E variant detected forcing chip to 32KHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab3100*)* @ab3100_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_setup(%struct.ab3100* %0) #0 {
  %2 = alloca %struct.ab3100*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ab3100* %0, %struct.ab3100** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ab3100_init_settings, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %5
  %11 = load %struct.ab3100*, %struct.ab3100** %2, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ab3100_init_settings, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ab3100_init_settings, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ab3100_set_register_interruptible(%struct.ab3100* %11, i32 %17, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %10
  br label %45

28:                                               ; preds = %10
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %5

32:                                               ; preds = %5
  %33 = load %struct.ab3100*, %struct.ab3100** %2, align 8
  %34 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 196
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.ab3100*, %struct.ab3100** %2, align 8
  %39 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_warn(i32 %40, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.ab3100*, %struct.ab3100** %2, align 8
  %43 = call i32 @ab3100_set_test_register_interruptible(%struct.ab3100* %42, i32 2, i32 8)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %37, %32
  br label %45

45:                                               ; preds = %44, %27
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @ab3100_set_register_interruptible(%struct.ab3100*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @ab3100_set_test_register_interruptible(%struct.ab3100*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
