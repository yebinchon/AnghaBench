; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_timer_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_timer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AUTH_OPEN = common dso_local global i32 0, align 4
@auto_wep = common dso_local global i32 0, align 4
@FLAG_COMMIT = common dso_local global i32 0, align 4
@JOB_AUTOWEP = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @timer_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_func(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.airo_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  store %struct.airo_info* %6, %struct.airo_info** %3, align 8
  %7 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %8 = call i32 @readConfigRid(%struct.airo_info* %7, i32 0)
  %9 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %10 = call i32 @disable_MAC(%struct.airo_info* %9, i32 0)
  %11 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %12 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %51 [
    i32 129, label %15
    i32 128, label %20
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @AUTH_OPEN, align 4
  %17 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %18 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  br label %55

20:                                               ; preds = %1
  %21 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %22 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @auto_wep, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %28 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %29 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @set_wep_tx_idx(%struct.airo_info* %27, i32 %30, i32 0, i32 0)
  %32 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %33 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 128, i32* %34, align 4
  %35 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %36 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %50

39:                                               ; preds = %20
  %40 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %41 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %40, i32 0, i32 6
  store i32 0, i32* %41, align 4
  %42 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %43 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %44 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @set_wep_tx_idx(%struct.airo_info* %42, i32 %45, i32 0, i32 0)
  %47 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %48 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 129, i32* %49, align 4
  br label %50

50:                                               ; preds = %39, %26
  br label %55

51:                                               ; preds = %1
  %52 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %53 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 128, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %50, %15
  %56 = load i32, i32* @FLAG_COMMIT, align 4
  %57 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %58 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %57, i32 0, i32 3
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  %60 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %61 = call i32 @writeConfigRid(%struct.airo_info* %60, i32 0)
  %62 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %63 = call i32 @enable_MAC(%struct.airo_info* %62, i32 0)
  %64 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %65 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %64, i32 0, i32 2
  %66 = call i32 @up(i32* %65)
  %67 = load i32, i32* @JOB_AUTOWEP, align 4
  %68 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %69 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %68, i32 0, i32 1
  %70 = call i32 @clear_bit(i32 %67, i32* %69)
  %71 = load i32, i32* @HZ, align 4
  %72 = mul nsw i32 %71, 3
  %73 = call i32 @RUN_AT(i32 %72)
  %74 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %75 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  ret void
}

declare dso_local i32 @readConfigRid(%struct.airo_info*, i32) #1

declare dso_local i32 @disable_MAC(%struct.airo_info*, i32) #1

declare dso_local i32 @set_wep_tx_idx(%struct.airo_info*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @writeConfigRid(%struct.airo_info*, i32) #1

declare dso_local i32 @enable_MAC(%struct.airo_info*, i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @RUN_AT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
