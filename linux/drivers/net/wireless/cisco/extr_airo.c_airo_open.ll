; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_airo_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_airo_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.airo_info* }
%struct.airo_info = type { i32, i32, i32, %struct.net_device* }

@FLAG_FLASHING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FLAG_COMMIT = common dso_local global i32 0, align 4
@JOB_DIE = common dso_local global i32 0, align 4
@airo_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@airo_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"register interrupt %d failed, rc %d\00", align 1
@FLAG_RADIO_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @airo_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @airo_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.airo_info*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 2
  %8 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  store %struct.airo_info* %8, %struct.airo_info** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @FLAG_FLASHING, align 4
  %10 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %11 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %10, i32 0, i32 0
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %103

17:                                               ; preds = %1
  %18 = load i32, i32* @FLAG_COMMIT, align 4
  %19 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %20 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %25 = call i32 @disable_MAC(%struct.airo_info* %24, i32 1)
  %26 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %27 = call i32 @writeConfigRid(%struct.airo_info* %26, i32 1)
  br label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %30 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %29, i32 0, i32 3
  %31 = load %struct.net_device*, %struct.net_device** %30, align 8
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = icmp ne %struct.net_device* %31, %32
  br i1 %33, label %34, label %98

34:                                               ; preds = %28
  %35 = load i32, i32* @JOB_DIE, align 4
  %36 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %37 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %36, i32 0, i32 2
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  %39 = load i32, i32* @airo_thread, align 4
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @kthread_run(i32 %39, %struct.net_device* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %46 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %48 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %34
  %53 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %54 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @PTR_ERR(i32 %55)
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %2, align 4
  br label %103

58:                                               ; preds = %34
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @airo_interrupt, align 4
  %63 = load i32, i32* @IRQF_SHARED, align 4
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = call i32 @request_irq(i32 %61, i32 %62, i32 %63, i32 %66, %struct.net_device* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %58
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @airo_print_err(i32 %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* @JOB_DIE, align 4
  %81 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %82 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %81, i32 0, i32 2
  %83 = call i32 @set_bit(i32 %80, i32* %82)
  %84 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %85 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @kthread_stop(i32 %86)
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %103

89:                                               ; preds = %58
  %90 = load i32, i32* @FLAG_RADIO_DOWN, align 4
  %91 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %92 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %91, i32 0, i32 0
  %93 = call i32 @clear_bit(i32 %90, i32* %92)
  %94 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %95 = call i32 @enable_interrupts(%struct.airo_info* %94)
  %96 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %97 = call i32 @try_auto_wep(%struct.airo_info* %96)
  br label %98

98:                                               ; preds = %89, %28
  %99 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %100 = call i32 @enable_MAC(%struct.airo_info* %99, i32 1)
  %101 = load %struct.net_device*, %struct.net_device** %3, align 8
  %102 = call i32 @netif_start_queue(%struct.net_device* %101)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %98, %71, %52, %14
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @disable_MAC(%struct.airo_info*, i32) #1

declare dso_local i32 @writeConfigRid(%struct.airo_info*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kthread_run(i32, %struct.net_device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i64 @PTR_ERR(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @airo_print_err(i32, i8*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @enable_interrupts(%struct.airo_info*) #1

declare dso_local i32 @try_auto_wep(%struct.airo_info*) #1

declare dso_local i32 @enable_MAC(%struct.airo_info*, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
