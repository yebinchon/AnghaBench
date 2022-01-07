; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-hw.c_hva_hw_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-hw.c_hva_hw_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hva_dev = type { i32, %struct.device* }

@.str = private unnamed_addr constant [34 x i8] c"%s     failed to prepare hva clk\0A\00", align 1
@HVA_PREFIX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CLK_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s     failed to set clock frequency\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hva_hw_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.hva_dev*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call %struct.hva_dev* @dev_get_drvdata(%struct.device* %5)
  store %struct.hva_dev* %6, %struct.hva_dev** %4, align 8
  %7 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %8 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @clk_prepare_enable(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %14 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %13, i32 0, i32 1
  %15 = load %struct.device*, %struct.device** %14, align 8
  %16 = load i32, i32* @HVA_PREFIX, align 4
  %17 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %34

20:                                               ; preds = %1
  %21 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %22 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CLK_RATE, align 4
  %25 = call i64 @clk_set_rate(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load i32, i32* @HVA_PREFIX, align 4
  %30 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %27, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.hva_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i64 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
