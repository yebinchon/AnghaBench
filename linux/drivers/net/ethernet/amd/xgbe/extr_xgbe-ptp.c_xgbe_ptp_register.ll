; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ptp.c_xgbe_ptp_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ptp.c_xgbe_ptp_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.TYPE_2__, %struct.cyclecounter, i32, i32, i32, %struct.ptp_clock*, i32, i32, %struct.ptp_clock_info }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cyclecounter = type { i32, i64, i32, i32 }
%struct.ptp_clock = type { i32 }
%struct.ptp_clock_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@xgbe_adjfreq = common dso_local global i32 0, align 4
@xgbe_adjtime = common dso_local global i32 0, align 4
@xgbe_gettime = common dso_local global i32 0, align 4
@xgbe_settime = common dso_local global i32 0, align 4
@xgbe_enable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ptp_clock_register failed\0A\00", align 1
@xgbe_cc_read = common dso_local global i32 0, align 4
@MAC_TSCR = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xgbe_ptp_register(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.ptp_clock_info*, align 8
  %4 = alloca %struct.ptp_clock*, align 8
  %5 = alloca %struct.cyclecounter*, align 8
  %6 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 8
  store %struct.ptp_clock_info* %8, %struct.ptp_clock_info** %3, align 8
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 1
  store %struct.cyclecounter* %10, %struct.cyclecounter** %5, align 8
  %11 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %3, align 8
  %12 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %15 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @netdev_name(i32 %16)
  %18 = call i32 @snprintf(i32 %13, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @THIS_MODULE, align 4
  %20 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %3, align 8
  %21 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %23 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %3, align 8
  %26 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @xgbe_adjfreq, align 4
  %28 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %3, align 8
  %29 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @xgbe_adjtime, align 4
  %31 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %3, align 8
  %32 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @xgbe_gettime, align 4
  %34 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %3, align 8
  %35 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @xgbe_settime, align 4
  %37 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %3, align 8
  %38 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @xgbe_enable, align 4
  %40 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %3, align 8
  %41 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %3, align 8
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %44 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.ptp_clock* @ptp_clock_register(%struct.ptp_clock_info* %42, i32 %45)
  store %struct.ptp_clock* %46, %struct.ptp_clock** %4, align 8
  %47 = load %struct.ptp_clock*, %struct.ptp_clock** %4, align 8
  %48 = call i64 @IS_ERR(%struct.ptp_clock* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %1
  %51 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %52 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %96

55:                                               ; preds = %1
  %56 = load %struct.ptp_clock*, %struct.ptp_clock** %4, align 8
  %57 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %58 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %57, i32 0, i32 5
  store %struct.ptp_clock* %56, %struct.ptp_clock** %58, align 8
  store i32 50000000, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = shl i32 %59, 32
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %63 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @div_u64(i32 %61, i32 %64)
  %66 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %67 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @xgbe_cc_read, align 4
  %69 = load %struct.cyclecounter*, %struct.cyclecounter** %5, align 8
  %70 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = call i32 @CLOCKSOURCE_MASK(i32 64)
  %72 = load %struct.cyclecounter*, %struct.cyclecounter** %5, align 8
  %73 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.cyclecounter*, %struct.cyclecounter** %5, align 8
  %75 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.cyclecounter*, %struct.cyclecounter** %5, align 8
  %77 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %79 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %78, i32 0, i32 2
  %80 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %81 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %80, i32 0, i32 1
  %82 = call i32 (...) @ktime_get_real()
  %83 = call i32 @ktime_to_ns(i32 %82)
  %84 = call i32 @timecounter_init(i32* %79, %struct.cyclecounter* %81, i32 %83)
  %85 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %86 = load i32, i32* @MAC_TSCR, align 4
  %87 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %85, i32 %86, i32 0)
  %88 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %89 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %90 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %93 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %94 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  br label %96

96:                                               ; preds = %55, %50
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @netdev_name(i32) #1

declare dso_local %struct.ptp_clock* @ptp_clock_register(%struct.ptp_clock_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ptp_clock*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @CLOCKSOURCE_MASK(i32) #1

declare dso_local i32 @timecounter_init(i32*, %struct.cyclecounter*, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
