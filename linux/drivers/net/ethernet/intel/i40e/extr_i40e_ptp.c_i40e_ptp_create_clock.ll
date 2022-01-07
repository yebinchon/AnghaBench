; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ptp.c_i40e_ptp_create_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ptp.c_i40e_ptp_create_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32 }

@i40e_driver_name = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@i40e_ptp_adjfreq = common dso_local global i32 0, align 4
@i40e_ptp_adjtime = common dso_local global i32 0, align 4
@i40e_ptp_gettimex = common dso_local global i32 0, align 4
@i40e_ptp_settime = common dso_local global i32 0, align 4
@i40e_ptp_feature_enable = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i40e_pf*)* @i40e_ptp_create_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i40e_ptp_create_clock(%struct.i40e_pf* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.i40e_pf*, align 8
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  %4 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %5 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @IS_ERR_OR_NULL(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %84

10:                                               ; preds = %1
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %12 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @i40e_driver_name, align 4
  %16 = call i32 @strlcpy(i32 %14, i32 %15, i32 3)
  %17 = load i32, i32* @THIS_MODULE, align 4
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 8
  store i32 %17, i32* %20, align 8
  %21 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %22 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 999999999, i32* %23, align 8
  %24 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %25 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 7
  store i64 0, i64* %26, align 8
  %27 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %28 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @i40e_ptp_adjfreq, align 4
  %31 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %32 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 5
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @i40e_ptp_adjtime, align 4
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %36 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @i40e_ptp_gettimex, align 4
  %39 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %40 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @i40e_ptp_settime, align 4
  %43 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %44 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @i40e_ptp_feature_enable, align 4
  %47 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %48 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %51 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %50, i32 0, i32 5
  %52 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %53 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %52, i32 0, i32 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @ptp_clock_register(%struct.TYPE_6__* %51, i32* %55)
  %57 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %58 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %60 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %10
  %65 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %66 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @PTR_ERR(i32 %67)
  store i64 %68, i64* %2, align 8
  br label %84

69:                                               ; preds = %10
  %70 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %71 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %72 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %75 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %76 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %79 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %78, i32 0, i32 1
  %80 = call i32 @ktime_get_real_ts64(i32* %79)
  %81 = call i32 (...) @ktime_get()
  %82 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %83 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  store i64 0, i64* %2, align 8
  br label %84

84:                                               ; preds = %69, %64, %9
  %85 = load i64, i64* %2, align 8
  ret i64 %85
}

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @ptp_clock_register(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i64 @PTR_ERR(i32) #1

declare dso_local i32 @ktime_get_real_ts64(i32*) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
