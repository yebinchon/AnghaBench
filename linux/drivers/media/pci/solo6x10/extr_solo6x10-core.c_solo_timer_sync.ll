; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-core.c_solo_timer_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-core.c_solo_timer_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i64, i32, i64 }
%struct.timespec64 = type { i32, i64 }

@SOLO_DEV_6110 = common dso_local global i64 0, align 8
@SOLO_TIMER_SEC = common dso_local global i32 0, align 4
@SOLO_TIMER_USEC = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@SOLO_TIMER_USEC_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_dev*)* @solo_timer_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solo_timer_sync(%struct.solo_dev* %0) #0 {
  %2 = alloca %struct.solo_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.solo_dev* %0, %struct.solo_dev** %2, align 8
  %8 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %9 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SOLO_DEV_6110, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %83

14:                                               ; preds = %1
  %15 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %16 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = icmp slt i32 %18, 60
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %83

21:                                               ; preds = %14
  %22 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %23 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %22, i32 0, i32 1
  store i32 0, i32* %23, align 8
  %24 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %25 = load i32, i32* @SOLO_TIMER_SEC, align 4
  %26 = call i64 @solo_reg_read(%struct.solo_dev* %24, i32 %25)
  store i64 %26, i64* %3, align 8
  %27 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %28 = load i32, i32* @SOLO_TIMER_USEC, align 4
  %29 = call i64 @solo_reg_read(%struct.solo_dev* %27, i32 %28)
  store i64 %29, i64* %4, align 8
  %30 = call i32 @ktime_get_ts64(%struct.timespec64* %5)
  %31 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = sub nsw i64 %32, %33
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = mul nsw i64 %35, 1000000
  %37 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @NSEC_PER_USEC, align 4
  %40 = sdiv i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %4, align 8
  %43 = sub nsw i64 %41, %42
  %44 = add nsw i64 %36, %43
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp sgt i64 %45, 1000
  br i1 %46, label %50, label %47

47:                                               ; preds = %21
  %48 = load i64, i64* %6, align 8
  %49 = icmp slt i64 %48, -1000
  br i1 %49, label %50, label %53

50:                                               ; preds = %47, %21
  %51 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %52 = call i32 @solo_set_time(%struct.solo_dev* %51)
  br label %83

53:                                               ; preds = %47
  %54 = load i64, i64* %6, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %53
  %57 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %58 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = sdiv i64 %60, 4
  %62 = load i64, i64* %7, align 8
  %63 = sub nsw i64 %62, %61
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  store i64 0, i64* %7, align 8
  br label %72

67:                                               ; preds = %56
  %68 = load i64, i64* %7, align 8
  %69 = icmp sgt i64 %68, 255
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i64 255, i64* %7, align 8
  br label %71

71:                                               ; preds = %70, %67
  br label %72

72:                                               ; preds = %71, %66
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %75 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %77 = load i32, i32* @SOLO_TIMER_USEC_LSB, align 4
  %78 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %79 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @solo_reg_write(%struct.solo_dev* %76, i32 %77, i64 %80)
  br label %82

82:                                               ; preds = %72, %53
  br label %83

83:                                               ; preds = %13, %20, %82, %50
  ret void
}

declare dso_local i64 @solo_reg_read(%struct.solo_dev*, i32) #1

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local i32 @solo_set_time(%struct.solo_dev*) #1

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
