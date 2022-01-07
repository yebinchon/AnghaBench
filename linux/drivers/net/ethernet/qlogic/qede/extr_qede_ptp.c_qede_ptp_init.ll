; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ptp.c_qede_ptp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ptp.c_qede_ptp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32, %struct.qede_ptp* }
%struct.qede_ptp = type { %struct.TYPE_5__, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 (i32)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"PTP HW enable failed\0A\00", align 1
@qede_ptp_task = common dso_local global i32 0, align 4
@qede_ptp_read_cc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, i32)* @qede_ptp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_ptp_init(%struct.qede_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qede_ptp*, align 8
  %7 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %9 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %8, i32 0, i32 1
  %10 = load %struct.qede_ptp*, %struct.qede_ptp** %9, align 8
  store %struct.qede_ptp* %10, %struct.qede_ptp** %6, align 8
  %11 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %12 = icmp ne %struct.qede_ptp* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %69

16:                                               ; preds = %2
  %17 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %18 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %17, i32 0, i32 4
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %21 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %26 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %24(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %16
  %32 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %33 = call i32 @DP_INFO(%struct.qede_dev* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %69

35:                                               ; preds = %16
  %36 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %37 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %36, i32 0, i32 2
  %38 = load i32, i32* @qede_ptp_task, align 4
  %39 = call i32 @INIT_WORK(i32* %37, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %35
  %43 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %44 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %43, i32 0, i32 0
  %45 = call i32 @memset(%struct.TYPE_5__* %44, i32 0, i32 24)
  %46 = load i32, i32* @qede_ptp_read_cc, align 4
  %47 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %48 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = call i32 @CYCLECOUNTER_MASK(i32 64)
  %51 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %52 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 8
  %54 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %55 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %58 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %61 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %60, i32 0, i32 1
  %62 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %63 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %62, i32 0, i32 0
  %64 = call i32 (...) @ktime_get_real()
  %65 = call i32 @ktime_to_ns(i32 %64)
  %66 = call i32 @timecounter_init(i32* %61, %struct.TYPE_5__* %63, i32 %65)
  br label %67

67:                                               ; preds = %42, %35
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %31, %13
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @CYCLECOUNTER_MASK(i32) #1

declare dso_local i32 @timecounter_init(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get_real(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
