; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_class_get_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_class_get_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_can_classdev = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cclk\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"no clock found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_can_class_get_clocks(%struct.m_can_classdev* %0) #0 {
  %2 = alloca %struct.m_can_classdev*, align 8
  %3 = alloca i32, align 4
  store %struct.m_can_classdev* %0, %struct.m_can_classdev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %5 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i8* @devm_clk_get(i32 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %9 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %8, i32 0, i32 2
  store i8* %7, i8** %9, align 8
  %10 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %11 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @devm_clk_get(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %15 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %17 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @IS_ERR(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %23 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %1
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i8* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
