; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_reset_module.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_reset_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ican3_dev = type { i32, i32, i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@DPM_FREE_START = common dso_local global i32 0, align 4
@QUEUE_OLD_CONTROL = common dso_local global i32 0, align 4
@TARGET_RUNNING = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to reset CAN module\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ican3_dev*)* @ican3_reset_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ican3_reset_module(%struct.ican3_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ican3_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ican3_dev* %0, %struct.ican3_dev** %3, align 8
  %7 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %8 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = shl i32 1, %9
  %11 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %12 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %11, i32 0, i32 5
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @iowrite8(i32 %10, i32* %14)
  %16 = load i32, i32* @DPM_FREE_START, align 4
  %17 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %18 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %20 = load i32, i32* @QUEUE_OLD_CONTROL, align 4
  %21 = call i32 @ican3_set_page(%struct.ican3_dev* %19, i32 %20)
  %22 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %23 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TARGET_RUNNING, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @ioread8(i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %29 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @iowrite8(i32 0, i32* %31)
  %33 = load i64, i64* @jiffies, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %51, %1
  %35 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %36 = load i32, i32* @QUEUE_OLD_CONTROL, align 4
  %37 = call i32 @ican3_set_page(%struct.ican3_dev* %35, i32 %36)
  %38 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %39 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TARGET_RUNNING, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @ioread8(i64 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = xor i32 %45, 255
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %67

49:                                               ; preds = %34
  %50 = call i32 @msleep(i32 10)
  br label %51

51:                                               ; preds = %49
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load i32, i32* @HZ, align 4
  %55 = sdiv i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = add i64 %53, %56
  %58 = call i64 @time_before(i64 %52, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %34, label %60

60:                                               ; preds = %51
  %61 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %62 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @netdev_err(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @ETIMEDOUT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %60, %48
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i32 @ican3_set_page(%struct.ican3_dev*, i32) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
