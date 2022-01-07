; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_atmel-ssc.c_ssc_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_atmel-ssc.c_ssc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssc_device = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@user_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"device already free\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssc_free(%struct.ssc_device* %0) #0 {
  %2 = alloca %struct.ssc_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ssc_device* %0, %struct.ssc_device** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = call i32 @spin_lock(i32* @user_lock)
  %5 = load %struct.ssc_device*, %struct.ssc_device** %2, align 8
  %6 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.ssc_device*, %struct.ssc_device** %2, align 8
  %11 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  br label %20

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  %15 = load %struct.ssc_device*, %struct.ssc_device** %2, align 8
  %16 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %14, %9
  %21 = call i32 @spin_unlock(i32* @user_lock)
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.ssc_device*, %struct.ssc_device** %2, align 8
  %26 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_unprepare(i32 %27)
  br label %29

29:                                               ; preds = %24, %20
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @clk_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
