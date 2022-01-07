; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_hw_open_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_hw_open_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fimc_is_sensor = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sensor_open_extended = type { i32, i32, i64, i64, i64, i64, i64 }

@HIC_OPEN_SENSOR = common dso_local global i32 0, align 4
@IS_ST_OPEN_SENSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_is*, %struct.fimc_is_sensor*)* @fimc_is_hw_open_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_is_hw_open_sensor(%struct.fimc_is* %0, %struct.fimc_is_sensor* %1) #0 {
  %3 = alloca %struct.fimc_is*, align 8
  %4 = alloca %struct.fimc_is_sensor*, align 8
  %5 = alloca %struct.sensor_open_extended*, align 8
  store %struct.fimc_is* %0, %struct.fimc_is** %3, align 8
  store %struct.fimc_is_sensor* %1, %struct.fimc_is_sensor** %4, align 8
  %6 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %7 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.sensor_open_extended*
  store %struct.sensor_open_extended* %11, %struct.sensor_open_extended** %5, align 8
  %12 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %13 = call i32 @fimc_is_hw_wait_intmsr0_intmsd0(%struct.fimc_is* %12)
  %14 = load %struct.sensor_open_extended*, %struct.sensor_open_extended** %5, align 8
  %15 = getelementptr inbounds %struct.sensor_open_extended, %struct.sensor_open_extended* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.sensor_open_extended*, %struct.sensor_open_extended** %5, align 8
  %17 = getelementptr inbounds %struct.sensor_open_extended, %struct.sensor_open_extended* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load %struct.sensor_open_extended*, %struct.sensor_open_extended** %5, align 8
  %19 = getelementptr inbounds %struct.sensor_open_extended, %struct.sensor_open_extended* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.sensor_open_extended*, %struct.sensor_open_extended** %5, align 8
  %21 = getelementptr inbounds %struct.sensor_open_extended, %struct.sensor_open_extended* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.sensor_open_extended*, %struct.sensor_open_extended** %5, align 8
  %23 = getelementptr inbounds %struct.sensor_open_extended, %struct.sensor_open_extended* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.sensor_open_extended*, %struct.sensor_open_extended** %5, align 8
  %25 = getelementptr inbounds %struct.sensor_open_extended, %struct.sensor_open_extended* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.sensor_open_extended*, %struct.sensor_open_extended** %5, align 8
  %27 = getelementptr inbounds %struct.sensor_open_extended, %struct.sensor_open_extended* %26, i32 0, i32 1
  store i32 88000000, i32* %27, align 4
  %28 = call i32 (...) @fimc_is_mem_barrier()
  %29 = call i32 @udelay(i32 100)
  %30 = load i32, i32* @HIC_OPEN_SENSOR, align 4
  %31 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %32 = call i32 @MCUCTL_REG_ISSR(i32 0)
  %33 = call i32 @mcuctl_write(i32 %30, %struct.fimc_is* %31, i32 %32)
  %34 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %35 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %38 = call i32 @MCUCTL_REG_ISSR(i32 1)
  %39 = call i32 @mcuctl_write(i32 %36, %struct.fimc_is* %37, i32 %38)
  %40 = load %struct.fimc_is_sensor*, %struct.fimc_is_sensor** %4, align 8
  %41 = getelementptr inbounds %struct.fimc_is_sensor, %struct.fimc_is_sensor* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %46 = call i32 @MCUCTL_REG_ISSR(i32 2)
  %47 = call i32 @mcuctl_write(i32 %44, %struct.fimc_is* %45, i32 %46)
  %48 = load %struct.fimc_is_sensor*, %struct.fimc_is_sensor** %4, align 8
  %49 = getelementptr inbounds %struct.fimc_is_sensor, %struct.fimc_is_sensor* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %52 = call i32 @MCUCTL_REG_ISSR(i32 3)
  %53 = call i32 @mcuctl_write(i32 %50, %struct.fimc_is* %51, i32 %52)
  %54 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %55 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %58 = call i32 @MCUCTL_REG_ISSR(i32 4)
  %59 = call i32 @mcuctl_write(i32 %56, %struct.fimc_is* %57, i32 %58)
  %60 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %61 = call i32 @fimc_is_hw_set_intgr0_gd0(%struct.fimc_is* %60)
  %62 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %63 = load i32, i32* @IS_ST_OPEN_SENSOR, align 4
  %64 = load %struct.fimc_is_sensor*, %struct.fimc_is_sensor** %4, align 8
  %65 = getelementptr inbounds %struct.fimc_is_sensor, %struct.fimc_is_sensor* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @fimc_is_wait_event(%struct.fimc_is* %62, i32 %63, i32 1, i32 %68)
  ret i32 %69
}

declare dso_local i32 @fimc_is_hw_wait_intmsr0_intmsd0(%struct.fimc_is*) #1

declare dso_local i32 @fimc_is_mem_barrier(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mcuctl_write(i32, %struct.fimc_is*, i32) #1

declare dso_local i32 @MCUCTL_REG_ISSR(i32) #1

declare dso_local i32 @fimc_is_hw_set_intgr0_gd0(%struct.fimc_is*) #1

declare dso_local i32 @fimc_is_wait_event(%struct.fimc_is*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
