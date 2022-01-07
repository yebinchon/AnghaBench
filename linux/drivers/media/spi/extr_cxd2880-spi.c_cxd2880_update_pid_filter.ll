; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_update_pid_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_update_pid_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_dvb_spi = type { i32, i32 }
%struct.cxd2880_pid_filter_config = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"invalid arg.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"set_pid_filter failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_dvb_spi*, %struct.cxd2880_pid_filter_config*, i32)* @cxd2880_update_pid_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_update_pid_filter(%struct.cxd2880_dvb_spi* %0, %struct.cxd2880_pid_filter_config* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_dvb_spi*, align 8
  %6 = alloca %struct.cxd2880_pid_filter_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cxd2880_pid_filter_config, align 8
  store %struct.cxd2880_dvb_spi* %0, %struct.cxd2880_dvb_spi** %5, align 8
  store %struct.cxd2880_pid_filter_config* %1, %struct.cxd2880_pid_filter_config** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %11 = icmp ne %struct.cxd2880_dvb_spi* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.cxd2880_pid_filter_config*, %struct.cxd2880_pid_filter_config** %6, align 8
  %14 = icmp ne %struct.cxd2880_pid_filter_config* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12, %3
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %56

19:                                               ; preds = %12
  %20 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %21 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = call i32 @memset(%struct.cxd2880_pid_filter_config* %9, i32 0, i32 16)
  %27 = getelementptr inbounds %struct.cxd2880_pid_filter_config, %struct.cxd2880_pid_filter_config* %9, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = getelementptr inbounds %struct.cxd2880_pid_filter_config, %struct.cxd2880_pid_filter_config* %9, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.cxd2880_pid_filter_config, %struct.cxd2880_pid_filter_config* %9, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 8191, i32* %35, align 4
  %36 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %37 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cxd2880_set_pid_filter(i32 %38, %struct.cxd2880_pid_filter_config* %9)
  store i32 %39, i32* %8, align 4
  br label %46

40:                                               ; preds = %19
  %41 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %42 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cxd2880_pid_filter_config*, %struct.cxd2880_pid_filter_config** %6, align 8
  %45 = call i32 @cxd2880_set_pid_filter(i32 %43, %struct.cxd2880_pid_filter_config* %44)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %40, %25
  %47 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %48 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %46
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.cxd2880_pid_filter_config*, i32, i32) #1

declare dso_local i32 @cxd2880_set_pid_filter(i32, %struct.cxd2880_pid_filter_config*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
