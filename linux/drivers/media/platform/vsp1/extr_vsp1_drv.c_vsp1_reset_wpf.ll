; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_drv.c_vsp1_reset_wpf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_drv.c_vsp1_reset_wpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_device = type { i32 }

@VI6_STATUS = common dso_local global i32 0, align 4
@VI6_SRESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to reset wpf.%u\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vsp1_reset_wpf(%struct.vsp1_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vsp1_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vsp1_device* %0, %struct.vsp1_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %9 = load i32, i32* @VI6_STATUS, align 4
  %10 = call i32 @vsp1_read(%struct.vsp1_device* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @VI6_STATUS_SYS_ACT(i32 %12)
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %19 = load i32, i32* @VI6_SRESET, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @VI6_SRESET_SRTS(i32 %20)
  %22 = call i32 @vsp1_write(%struct.vsp1_device* %18, i32 %19, i32 %21)
  store i32 10, i32* %6, align 4
  br label %23

23:                                               ; preds = %38, %17
  %24 = load i32, i32* %6, align 4
  %25 = icmp ugt i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %28 = load i32, i32* @VI6_STATUS, align 4
  %29 = call i32 @vsp1_read(%struct.vsp1_device* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @VI6_STATUS_SYS_ACT(i32 %31)
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  br label %41

36:                                               ; preds = %26
  %37 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, -1
  store i32 %40, i32* %6, align 4
  br label %23

41:                                               ; preds = %35, %23
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %46 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ETIMEDOUT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %44, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @vsp1_read(%struct.vsp1_device*, i32) #1

declare dso_local i32 @VI6_STATUS_SYS_ACT(i32) #1

declare dso_local i32 @vsp1_write(%struct.vsp1_device*, i32, i32) #1

declare dso_local i32 @VI6_SRESET_SRTS(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
