; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_dfs_pri_detector.c_pri_detector_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_dfs_pri_detector.c_pri_detector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pri_detector = type { i32, i32, %struct.radar_detector_specs*, i32, i32, i32, i32, i32 }
%struct.radar_detector_specs = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@pri_detector_exit = common dso_local global i32 0, align 4
@pri_detector_add_pulse = common dso_local global i32 0, align 4
@pri_detector_reset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pri_detector* @pri_detector_init(%struct.radar_detector_specs* %0) #0 {
  %2 = alloca %struct.pri_detector*, align 8
  %3 = alloca %struct.radar_detector_specs*, align 8
  %4 = alloca %struct.pri_detector*, align 8
  store %struct.radar_detector_specs* %0, %struct.radar_detector_specs** %3, align 8
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.pri_detector* @kzalloc(i32 40, i32 %5)
  store %struct.pri_detector* %6, %struct.pri_detector** %4, align 8
  %7 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %8 = icmp eq %struct.pri_detector* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.pri_detector* null, %struct.pri_detector** %2, align 8
  br label %50

10:                                               ; preds = %1
  %11 = load i32, i32* @pri_detector_exit, align 4
  %12 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %13 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @pri_detector_add_pulse, align 4
  %15 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %16 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @pri_detector_reset, align 4
  %18 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %19 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %21 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %20, i32 0, i32 4
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %24 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %23, i32 0, i32 3
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %3, align 8
  %27 = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %3, align 8
  %30 = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %3, align 8
  %34 = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %38 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %3, align 8
  %40 = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 2
  %43 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %44 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %3, align 8
  %46 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %47 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %46, i32 0, i32 2
  store %struct.radar_detector_specs* %45, %struct.radar_detector_specs** %47, align 8
  %48 = call i32 (...) @pool_register_ref()
  %49 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  store %struct.pri_detector* %49, %struct.pri_detector** %2, align 8
  br label %50

50:                                               ; preds = %10, %9
  %51 = load %struct.pri_detector*, %struct.pri_detector** %2, align 8
  ret %struct.pri_detector* %51
}

declare dso_local %struct.pri_detector* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @pool_register_ref(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
