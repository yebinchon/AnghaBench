; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_dp83640_clock_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_dp83640_clock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dp83640_clock = type { %struct.TYPE_2__, i32, i32, i32, %struct.mii_bus*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32 }
%struct.mii_bus = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"dp83640 timer\00", align 1
@N_EXT_TS = common dso_local global i32 0, align 4
@N_PER_OUT = common dso_local global i32 0, align 4
@DP83640_N_PINS = common dso_local global i32 0, align 4
@ptp_dp83640_adjfine = common dso_local global i32 0, align 4
@ptp_dp83640_adjtime = common dso_local global i32 0, align 4
@ptp_dp83640_gettime = common dso_local global i32 0, align 4
@ptp_dp83640_settime = common dso_local global i32 0, align 4
@ptp_dp83640_enable = common dso_local global i32 0, align 4
@ptp_dp83640_verify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dp83640_clock*, %struct.mii_bus*)* @dp83640_clock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dp83640_clock_init(%struct.dp83640_clock* %0, %struct.mii_bus* %1) #0 {
  %3 = alloca %struct.dp83640_clock*, align 8
  %4 = alloca %struct.mii_bus*, align 8
  store %struct.dp83640_clock* %0, %struct.dp83640_clock** %3, align 8
  store %struct.mii_bus* %1, %struct.mii_bus** %4, align 8
  %5 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %6 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %5, i32 0, i32 5
  %7 = call i32 @INIT_LIST_HEAD(i32* %6)
  %8 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %9 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %10 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %9, i32 0, i32 4
  store %struct.mii_bus* %8, %struct.mii_bus** %10, align 8
  %11 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %12 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %11, i32 0, i32 3
  %13 = call i32 @mutex_init(i32* %12)
  %14 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %15 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %14, i32 0, i32 2
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %18 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %17, i32 0, i32 1
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load i32, i32* @THIS_MODULE, align 4
  %21 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %22 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 14
  store i32 %20, i32* %23, align 4
  %24 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %25 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 13
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @sprintf(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %30 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 1953124, i32* %31, align 8
  %32 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %33 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 12
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @N_EXT_TS, align 4
  %36 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %37 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 11
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* @N_PER_OUT, align 4
  %40 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %41 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 10
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @DP83640_N_PINS, align 4
  %44 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %45 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 9
  store i32 %43, i32* %46, align 8
  %47 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %48 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 8
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @ptp_dp83640_adjfine, align 4
  %51 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %52 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 7
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @ptp_dp83640_adjtime, align 4
  %55 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %56 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 6
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @ptp_dp83640_gettime, align 4
  %59 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %60 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 5
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @ptp_dp83640_settime, align 4
  %63 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %64 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* @ptp_dp83640_enable, align 4
  %67 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %68 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @ptp_dp83640_verify, align 4
  %71 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %72 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load %struct.dp83640_clock*, %struct.dp83640_clock** %3, align 8
  %75 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dp83640_gpio_defaults(i32 %77)
  %79 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %80 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %79, i32 0, i32 0
  %81 = call i32 @get_device(i32* %80)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @dp83640_gpio_defaults(i32) #1

declare dso_local i32 @get_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
