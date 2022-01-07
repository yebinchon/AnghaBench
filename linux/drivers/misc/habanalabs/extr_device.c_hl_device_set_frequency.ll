; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_hl_device_set_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_hl_device_set_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*, i32)* }

@PM_MANUAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Changing device frequency to %s\0A\00", align 1
@PLL_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"low\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_device_set_frequency(%struct.hl_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %7 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PM_MANUAL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %13 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %39

18:                                               ; preds = %11
  %19 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %20 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PLL_HIGH, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %29 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.hl_device*, i32)*, i32 (%struct.hl_device*, i32)** %31, align 8
  %33 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 %32(%struct.hl_device* %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %38 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %18, %17
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
