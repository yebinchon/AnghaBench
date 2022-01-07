; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_schedule_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_schedule_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@STATUS_RESET_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: Scheduling firmware restart (%llds).\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@MAX_RESET_BACKOFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: Firmware restart already in progress.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw2100_priv*)* @schedule_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schedule_reset(%struct.ipw2100_priv* %0) #0 {
  %2 = alloca %struct.ipw2100_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %2, align 8
  %4 = call i32 (...) @ktime_get_boottime_seconds()
  store i32 %4, i32* %3, align 4
  %5 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %12 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  %15 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %16 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %21 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  br label %22

22:                                               ; preds = %19, %9, %1
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %25 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %27 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @STATUS_RESET_PENDING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %87, label %32

32:                                               ; preds = %22
  %33 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %34 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %39 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, i32, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %43 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %42, i32 0, i32 3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = call i32 @netif_carrier_off(%struct.TYPE_3__* %44)
  %46 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %47 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %46, i32 0, i32 3
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = call i32 @netif_stop_queue(%struct.TYPE_3__* %48)
  %50 = load i32, i32* @STATUS_RESET_PENDING, align 4
  %51 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %52 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %56 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %32
  %60 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %61 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %60, i32 0, i32 5
  %62 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %63 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @HZ, align 4
  %66 = mul nsw i32 %64, %65
  %67 = call i32 @schedule_delayed_work(i32* %61, i32 %66)
  br label %72

68:                                               ; preds = %32
  %69 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %70 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %69, i32 0, i32 5
  %71 = call i32 @schedule_delayed_work(i32* %70, i32 0)
  br label %72

72:                                               ; preds = %68, %59
  %73 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %74 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MAX_RESET_BACKOFF, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %80 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %78, %72
  %84 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %85 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %84, i32 0, i32 4
  %86 = call i32 @wake_up_interruptible(i32* %85)
  br label %94

87:                                               ; preds = %22
  %88 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %89 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %88, i32 0, i32 3
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, i32, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %87, %83
  ret void
}

declare dso_local i32 @ktime_get_boottime_seconds(...) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*, i32, ...) #1

declare dso_local i32 @netif_carrier_off(%struct.TYPE_3__*) #1

declare dso_local i32 @netif_stop_queue(%struct.TYPE_3__*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
