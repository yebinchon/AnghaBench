; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_dln2.c_dln2_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_dln2.c_dln2_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dln2_platform_data = type { i32 }
%struct.dln2_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dln2_transfer(%struct.platform_device* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.dln2_platform_data*, align 8
  %14 = alloca %struct.dln2_dev*, align 8
  %15 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.dln2_dev* @dev_get_drvdata(i32 %19)
  store %struct.dln2_dev* %20, %struct.dln2_dev** %14, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call %struct.dln2_platform_data* @dev_get_platdata(%struct.TYPE_2__* %22)
  store %struct.dln2_platform_data* %23, %struct.dln2_platform_data** %13, align 8
  %24 = load %struct.dln2_platform_data*, %struct.dln2_platform_data** %13, align 8
  %25 = getelementptr inbounds %struct.dln2_platform_data, %struct.dln2_platform_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %15, align 4
  %27 = load %struct.dln2_dev*, %struct.dln2_dev** %14, align 8
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = call i32 @_dln2_transfer(%struct.dln2_dev* %27, i32 %28, i32 %29, i8* %30, i32 %31, i8* %32, i32* %33)
  ret i32 %34
}

declare dso_local %struct.dln2_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.dln2_platform_data* @dev_get_platdata(%struct.TYPE_2__*) #1

declare dso_local i32 @_dln2_transfer(%struct.dln2_dev*, i32, i32, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
