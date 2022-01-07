; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_clock_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_clock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_ptp_clock = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.mlxsw_sp = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_sp1_ptp_read_frc = common dso_local global i32 0, align 4
@MLXSW_SP1_PTP_CLOCK_CYCLES_SHIFT = common dso_local global i32 0, align 4
@MLXSW_SP1_PTP_CLOCK_FREQ_KHZ = common dso_local global i32 0, align 4
@MLXSW_SP1_PTP_CLOCK_MASK = common dso_local global i32 0, align 4
@mlxsw_sp1_ptp_clock_overflow = common dso_local global i32 0, align 4
@mlxsw_sp1_ptp_clock_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ptp_clock_register failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxsw_sp_ptp_clock* @mlxsw_sp1_ptp_clock_init(%struct.mlxsw_sp* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_ptp_clock*, align 8
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp_ptp_clock*, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mlxsw_sp_ptp_clock* @kzalloc(i32 48, i32 %11)
  store %struct.mlxsw_sp_ptp_clock* %12, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %13 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %14 = icmp ne %struct.mlxsw_sp_ptp_clock* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.mlxsw_sp_ptp_clock* @ERR_PTR(i32 %17)
  store %struct.mlxsw_sp_ptp_clock* %18, %struct.mlxsw_sp_ptp_clock** %3, align 8
  br label %122

19:                                               ; preds = %2
  %20 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %20, i32 0, i32 8
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load i32, i32* @mlxsw_sp1_ptp_read_frc, align 4
  %24 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @MLXSW_SP1_PTP_CLOCK_CYCLES_SHIFT, align 4
  %28 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @MLXSW_SP1_PTP_CLOCK_FREQ_KHZ, align 4
  %32 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clocksource_khz2mult(i32 %31, i32 %35)
  %37 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @MLXSW_SP1_PTP_CLOCK_MASK, align 4
  %47 = call i32 @CLOCKSOURCE_MASK(i32 %46)
  %48 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 4
  %56 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %56, i32 0, i32 5
  %58 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %58, i32 0, i32 4
  %60 = call i32 (...) @ktime_get_real()
  %61 = call i32 @ktime_to_ns(i32 %60)
  %62 = call i32 @timecounter_init(i32* %57, %struct.TYPE_3__* %59, i32 %61)
  %63 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @div64_u64(i64 9223372036854775807, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %70 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @div_u64(i32 %72, i32 3)
  %74 = call i32 @min(i32 %68, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %76 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %75, i32 0, i32 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @cyclecounter_cyc2ns(%struct.TYPE_3__* %76, i32 %77, i32 0, i32* %8)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @nsecs_to_jiffies(i32 %79)
  %81 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %82 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %84 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %83, i32 0, i32 0
  %85 = load i32, i32* @mlxsw_sp1_ptp_clock_overflow, align 4
  %86 = call i32 @INIT_DELAYED_WORK(i32* %84, i32 %85)
  %87 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %88 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %87, i32 0, i32 0
  %89 = call i32 @mlxsw_core_schedule_dw(i32* %88, i32 0)
  %90 = load i32, i32* @mlxsw_sp1_ptp_clock_info, align 4
  %91 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %92 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %94 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %93, i32 0, i32 2
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = call i32 @ptp_clock_register(i32* %94, %struct.device* %95)
  %97 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %98 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %100 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @IS_ERR(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %19
  %105 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %106 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @PTR_ERR(i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @dev_err(%struct.device* %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %110)
  br label %114

112:                                              ; preds = %19
  %113 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  store %struct.mlxsw_sp_ptp_clock* %113, %struct.mlxsw_sp_ptp_clock** %3, align 8
  br label %122

114:                                              ; preds = %104
  %115 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %116 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %115, i32 0, i32 0
  %117 = call i32 @cancel_delayed_work_sync(i32* %116)
  %118 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %9, align 8
  %119 = call i32 @kfree(%struct.mlxsw_sp_ptp_clock* %118)
  %120 = load i32, i32* %10, align 4
  %121 = call %struct.mlxsw_sp_ptp_clock* @ERR_PTR(i32 %120)
  store %struct.mlxsw_sp_ptp_clock* %121, %struct.mlxsw_sp_ptp_clock** %3, align 8
  br label %122

122:                                              ; preds = %114, %112, %15
  %123 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %3, align 8
  ret %struct.mlxsw_sp_ptp_clock* %123
}

declare dso_local %struct.mlxsw_sp_ptp_clock* @kzalloc(i32, i32) #1

declare dso_local %struct.mlxsw_sp_ptp_clock* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @clocksource_khz2mult(i32, i32) #1

declare dso_local i32 @CLOCKSOURCE_MASK(i32) #1

declare dso_local i32 @timecounter_init(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @div64_u64(i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @cyclecounter_cyc2ns(%struct.TYPE_3__*, i32, i32, i32*) #1

declare dso_local i32 @nsecs_to_jiffies(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mlxsw_core_schedule_dw(i32*, i32) #1

declare dso_local i32 @ptp_clock_register(i32*, %struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_ptp_clock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
