; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_host.c_mmc_alloc_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_host.c_mmc_alloc_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.device* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32*, %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mmc_host_ida = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"mmc%d\00", align 1
@mmc_host_class = common dso_local global i32 0, align 4
@mmc_rescan = common dso_local global i32 0, align 4
@sdio_irq_work = common dso_local global i32 0, align 4
@mmc_retune_timer = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mmc_host* @mmc_alloc_host(i32 %0, %struct.device* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_host*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = add i64 80, %9
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mmc_host* @kzalloc(i32 %11, i32 %12)
  store %struct.mmc_host* %13, %struct.mmc_host** %7, align 8
  %14 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %15 = icmp ne %struct.mmc_host* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.mmc_host* null, %struct.mmc_host** %3, align 8
  br label %101

17:                                               ; preds = %2
  %18 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %19 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32 @ida_simple_get(i32* @mmc_host_ida, i32 0, i32 0, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %26 = call i32 @kfree(%struct.mmc_host* %25)
  store %struct.mmc_host* null, %struct.mmc_host** %3, align 8
  br label %101

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %30 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %32 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 14
  %33 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %34 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_set_name(%struct.TYPE_7__* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %39 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %38, i32 0, i32 15
  store %struct.device* %37, %struct.device** %39, align 8
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %42 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %41, i32 0, i32 14
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store %struct.device* %40, %struct.device** %43, align 8
  %44 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %45 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %44, i32 0, i32 14
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32* @mmc_host_class, i32** %46, align 8
  %47 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %48 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %47, i32 0, i32 14
  %49 = call i32 @device_initialize(%struct.TYPE_7__* %48)
  %50 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %51 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %50, i32 0, i32 14
  %52 = call i32 @device_enable_async_suspend(%struct.TYPE_7__* %51)
  %53 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %54 = call i64 @mmc_gpio_alloc(%struct.mmc_host* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %27
  %57 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %58 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %57, i32 0, i32 14
  %59 = call i32 @put_device(%struct.TYPE_7__* %58)
  store %struct.mmc_host* null, %struct.mmc_host** %3, align 8
  br label %101

60:                                               ; preds = %27
  %61 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %62 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %61, i32 0, i32 13
  %63 = call i32 @spin_lock_init(i32* %62)
  %64 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %65 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %64, i32 0, i32 12
  %66 = call i32 @init_waitqueue_head(i32* %65)
  %67 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %68 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %67, i32 0, i32 11
  %69 = load i32, i32* @mmc_rescan, align 4
  %70 = call i32 @INIT_DELAYED_WORK(i32* %68, i32 %69)
  %71 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %72 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %71, i32 0, i32 10
  %73 = load i32, i32* @sdio_irq_work, align 4
  %74 = call i32 @INIT_DELAYED_WORK(i32* %72, i32 %73)
  %75 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %76 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %75, i32 0, i32 9
  %77 = load i32, i32* @mmc_retune_timer, align 4
  %78 = call i32 @timer_setup(i32* %76, i32 %77, i32 0)
  %79 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %80 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* @PAGE_SIZE, align 4
  %82 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %83 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %86 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %88 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %87, i32 0, i32 5
  store i32 512, i32* %88, align 4
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = sdiv i32 %89, 512
  %91 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %92 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  %95 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %96 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %95, i32 0, i32 8
  store i32 %94, i32* %96, align 8
  %97 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %98 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 10, i32* %99, align 4
  %100 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  store %struct.mmc_host* %100, %struct.mmc_host** %3, align 8
  br label %101

101:                                              ; preds = %60, %56, %24, %16
  %102 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  ret %struct.mmc_host* %102
}

declare dso_local %struct.mmc_host* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.mmc_host*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_7__*) #1

declare dso_local i32 @device_enable_async_suspend(%struct.TYPE_7__*) #1

declare dso_local i64 @mmc_gpio_alloc(%struct.mmc_host*) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
