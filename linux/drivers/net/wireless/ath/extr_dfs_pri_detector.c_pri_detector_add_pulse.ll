; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_dfs_pri_detector.c_pri_detector_add_pulse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_dfs_pri_detector.c_pri_detector_add_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pri_sequence = type { i32 }
%struct.pri_detector = type { i64, %struct.radar_detector_specs* }
%struct.radar_detector_specs = type { i64, i64, i64, i64 }
%struct.pulse_event = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pri_sequence* (%struct.pri_detector*, %struct.pulse_event*)* @pri_detector_add_pulse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pri_sequence* @pri_detector_add_pulse(%struct.pri_detector* %0, %struct.pulse_event* %1) #0 {
  %3 = alloca %struct.pri_sequence*, align 8
  %4 = alloca %struct.pri_detector*, align 8
  %5 = alloca %struct.pulse_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pri_sequence*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.radar_detector_specs*, align 8
  store %struct.pri_detector* %0, %struct.pri_detector** %4, align 8
  store %struct.pulse_event* %1, %struct.pulse_event** %5, align 8
  %10 = load %struct.pulse_event*, %struct.pulse_event** %5, align 8
  %11 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %14 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %13, i32 0, i32 1
  %15 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %14, align 8
  store %struct.radar_detector_specs* %15, %struct.radar_detector_specs** %9, align 8
  %16 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %9, align 8
  %17 = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.pulse_event*, %struct.pulse_event** %5, align 8
  %20 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %2
  %24 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %9, align 8
  %25 = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.pulse_event*, %struct.pulse_event** %5, align 8
  %28 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23, %2
  store %struct.pri_sequence* null, %struct.pri_sequence** %3, align 8
  br label %84

32:                                               ; preds = %23
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %35 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %9, align 8
  %39 = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store %struct.pri_sequence* null, %struct.pri_sequence** %3, align 8
  br label %84

43:                                               ; preds = %32
  %44 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %9, align 8
  %45 = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %9, align 8
  %50 = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.pulse_event*, %struct.pulse_event** %5, align 8
  %53 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store %struct.pri_sequence* null, %struct.pri_sequence** %3, align 8
  br label %84

57:                                               ; preds = %48, %43
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %60 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @pseq_handler_add_to_existing_seqs(%struct.pri_detector* %61, i64 %62)
  store i32 %63, i32* %6, align 4
  %64 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @pseq_handler_create_sequences(%struct.pri_detector* %64, i64 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %57
  %70 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @pri_detector_reset(%struct.pri_detector* %70, i64 %71)
  store %struct.pri_sequence* null, %struct.pri_sequence** %3, align 8
  br label %84

73:                                               ; preds = %57
  %74 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %75 = call %struct.pri_sequence* @pseq_handler_check_detection(%struct.pri_detector* %74)
  store %struct.pri_sequence* %75, %struct.pri_sequence** %7, align 8
  %76 = load %struct.pri_sequence*, %struct.pri_sequence** %7, align 8
  %77 = icmp eq %struct.pri_sequence* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @pulse_queue_enqueue(%struct.pri_detector* %79, i64 %80)
  br label %82

82:                                               ; preds = %78, %73
  %83 = load %struct.pri_sequence*, %struct.pri_sequence** %7, align 8
  store %struct.pri_sequence* %83, %struct.pri_sequence** %3, align 8
  br label %84

84:                                               ; preds = %82, %69, %56, %42, %31
  %85 = load %struct.pri_sequence*, %struct.pri_sequence** %3, align 8
  ret %struct.pri_sequence* %85
}

declare dso_local i32 @pseq_handler_add_to_existing_seqs(%struct.pri_detector*, i64) #1

declare dso_local i32 @pseq_handler_create_sequences(%struct.pri_detector*, i64, i32) #1

declare dso_local i32 @pri_detector_reset(%struct.pri_detector*, i64) #1

declare dso_local %struct.pri_sequence* @pseq_handler_check_detection(%struct.pri_detector*) #1

declare dso_local i32 @pulse_queue_enqueue(%struct.pri_detector*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
