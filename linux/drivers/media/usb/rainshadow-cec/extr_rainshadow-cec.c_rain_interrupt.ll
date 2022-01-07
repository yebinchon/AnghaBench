; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/rainshadow-cec/extr_rainshadow-cec.c_rain_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/rainshadow-cec/extr_rainshadow-cec.c_rain_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.rain = type { i64, i8*, i64, i32, i32, i32 }

@DATA_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"buffer overflow\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @rain_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rain_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.serio*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.rain*, align 8
  store %struct.serio* %0, %struct.serio** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  %9 = load %struct.serio*, %struct.serio** %5, align 8
  %10 = call %struct.rain* @serio_get_drvdata(%struct.serio* %9)
  store %struct.rain* %10, %struct.rain** %8, align 8
  %11 = load %struct.rain*, %struct.rain** %8, align 8
  %12 = getelementptr inbounds %struct.rain, %struct.rain* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DATA_SIZE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.rain*, %struct.rain** %8, align 8
  %18 = getelementptr inbounds %struct.rain, %struct.rain* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_warn_once(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %21, i32* %4, align 4
  br label %52

22:                                               ; preds = %3
  %23 = load %struct.rain*, %struct.rain** %8, align 8
  %24 = getelementptr inbounds %struct.rain, %struct.rain* %23, i32 0, i32 4
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.rain*, %struct.rain** %8, align 8
  %27 = getelementptr inbounds %struct.rain, %struct.rain* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load i8, i8* %6, align 1
  %31 = load %struct.rain*, %struct.rain** %8, align 8
  %32 = getelementptr inbounds %struct.rain, %struct.rain* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.rain*, %struct.rain** %8, align 8
  %35 = getelementptr inbounds %struct.rain, %struct.rain* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  store i8 %30, i8* %37, align 1
  %38 = load %struct.rain*, %struct.rain** %8, align 8
  %39 = getelementptr inbounds %struct.rain, %struct.rain* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 1
  %42 = and i64 %41, 255
  %43 = load %struct.rain*, %struct.rain** %8, align 8
  %44 = getelementptr inbounds %struct.rain, %struct.rain* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.rain*, %struct.rain** %8, align 8
  %46 = getelementptr inbounds %struct.rain, %struct.rain* %45, i32 0, i32 4
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.rain*, %struct.rain** %8, align 8
  %49 = getelementptr inbounds %struct.rain, %struct.rain* %48, i32 0, i32 3
  %50 = call i32 @schedule_work(i32* %49)
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %22, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.rain* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @dev_warn_once(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
