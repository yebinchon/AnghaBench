; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_kim.c_st_kim_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_kim.c_st_kim_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kim_data_s = type { i32, i32, %struct.TYPE_6__*, i64, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.ti_st_plat_data* }
%struct.ti_st_plat_data = type { i32 (%struct.kim_data_s.0*)* }
%struct.kim_data_s.0 = type opaque
%struct.TYPE_4__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"ldisc_install = 0\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"install\00", align 1
@LDISC_TIME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c" timed out waiting for ldisc to be un-installed\00", align 1
@ETIMEDOUT = common dso_local global i64 0, align 8
@GPIO_LOW = common dso_local global i32 0, align 4
@GPIO_HIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @st_kim_stop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.kim_data_s*, align 8
  %5 = alloca %struct.ti_st_plat_data*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.kim_data_s*
  store %struct.kim_data_s* %8, %struct.kim_data_s** %4, align 8
  %9 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %10 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.ti_st_plat_data*, %struct.ti_st_plat_data** %13, align 8
  store %struct.ti_st_plat_data* %14, %struct.ti_st_plat_data** %5, align 8
  %15 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %16 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.tty_struct*, %struct.tty_struct** %18, align 8
  store %struct.tty_struct* %19, %struct.tty_struct** %6, align 8
  %20 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %21 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %20, i32 0, i32 1
  %22 = call i32 @reinit_completion(i32* %21)
  %23 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %24 = icmp ne %struct.tty_struct* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %27 = call i32 @tty_ldisc_flush(%struct.tty_struct* %26)
  %28 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %29 = call i32 @tty_driver_flush_buffer(%struct.tty_struct* %28)
  br label %30

30:                                               ; preds = %25, %1
  %31 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %33 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %35 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = call i32 @sysfs_notify(i32* %38, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %41 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %40, i32 0, i32 1
  %42 = load i32, i32* @LDISC_TIME, align 4
  %43 = call i32 @msecs_to_jiffies(i32 %42)
  %44 = call i64 @wait_for_completion_interruptible_timeout(i32* %41, i32 %43)
  store i64 %44, i64* %3, align 8
  %45 = load i64, i64* %3, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %30
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i64, i64* @ETIMEDOUT, align 8
  %50 = sub nsw i64 0, %49
  store i64 %50, i64* %3, align 8
  br label %51

51:                                               ; preds = %47, %30
  %52 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %53 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @GPIO_LOW, align 4
  %56 = call i32 @gpio_set_value_cansleep(i32 %54, i32 %55)
  %57 = call i32 @mdelay(i32 1)
  %58 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %59 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @GPIO_HIGH, align 4
  %62 = call i32 @gpio_set_value_cansleep(i32 %60, i32 %61)
  %63 = call i32 @mdelay(i32 1)
  %64 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %65 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @GPIO_LOW, align 4
  %68 = call i32 @gpio_set_value_cansleep(i32 %66, i32 %67)
  %69 = load %struct.ti_st_plat_data*, %struct.ti_st_plat_data** %5, align 8
  %70 = getelementptr inbounds %struct.ti_st_plat_data, %struct.ti_st_plat_data* %69, i32 0, i32 0
  %71 = load i32 (%struct.kim_data_s.0*)*, i32 (%struct.kim_data_s.0*)** %70, align 8
  %72 = icmp ne i32 (%struct.kim_data_s.0*)* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %51
  %74 = load %struct.ti_st_plat_data*, %struct.ti_st_plat_data** %5, align 8
  %75 = getelementptr inbounds %struct.ti_st_plat_data, %struct.ti_st_plat_data* %74, i32 0, i32 0
  %76 = load i32 (%struct.kim_data_s.0*)*, i32 (%struct.kim_data_s.0*)** %75, align 8
  %77 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %78 = bitcast %struct.kim_data_s* %77 to %struct.kim_data_s.0*
  %79 = call i32 %76(%struct.kim_data_s.0* %78)
  br label %80

80:                                               ; preds = %73, %51
  %81 = load i64, i64* %3, align 8
  ret i64 %81
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @tty_ldisc_flush(%struct.tty_struct*) #1

declare dso_local i32 @tty_driver_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
