; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_do_post_powerup_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_do_post_powerup_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_radio = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@SI476X_PROP_DIGITAL_IO_INPUT_SAMPLE_RATE = common dso_local global i32 0, align 4
@SI476X_PROP_DIGITAL_IO_OUTPUT_FORMAT = common dso_local global i32 0, align 4
@SI476X_PROP_AUDIO_DEEMPHASIS = common dso_local global i32 0, align 4
@SI476X_PROP_AUDIO_PWR_LINE_FILTER = common dso_local global i32 0, align 4
@SI476X_PROP_INT_CTL_ENABLE = common dso_local global i32 0, align 4
@SI476X_PROP_VALID_MAX_TUNE_ERROR = common dso_local global i32 0, align 4
@SI476X_PROP_VALID_SNR_THRESHOLD = common dso_local global i32 0, align 4
@SI476X_PROP_VALID_RSSI_THRESHOLD = common dso_local global i32 0, align 4
@SI476X_FUNC_FM_RECEIVER = common dso_local global i32 0, align 4
@SI476X_PROP_FM_RDS_INTERRUPT_SOURCE = common dso_local global i32 0, align 4
@SI476X_PROP_FM_RDS_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si476x_radio*, i32)* @si476x_radio_do_post_powerup_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_radio_do_post_powerup_init(%struct.si476x_radio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.si476x_radio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.si476x_radio* %0, %struct.si476x_radio** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %8 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SI476X_PROP_DIGITAL_IO_INPUT_SAMPLE_RATE, align 4
  %13 = load i32, i32* @SI476X_PROP_DIGITAL_IO_OUTPUT_FORMAT, align 4
  %14 = call i32 @regcache_sync_region(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %114

19:                                               ; preds = %2
  %20 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %21 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SI476X_PROP_AUDIO_DEEMPHASIS, align 4
  %26 = load i32, i32* @SI476X_PROP_AUDIO_PWR_LINE_FILTER, align 4
  %27 = call i32 @regcache_sync_region(i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %114

32:                                               ; preds = %19
  %33 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %34 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SI476X_PROP_INT_CTL_ENABLE, align 4
  %39 = load i32, i32* @SI476X_PROP_INT_CTL_ENABLE, align 4
  %40 = call i32 @regcache_sync_region(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %114

45:                                               ; preds = %32
  %46 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %47 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SI476X_PROP_VALID_MAX_TUNE_ERROR, align 4
  %52 = load i32, i32* @SI476X_PROP_VALID_MAX_TUNE_ERROR, align 4
  %53 = call i32 @regcache_sync_region(i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %114

58:                                               ; preds = %45
  %59 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %60 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SI476X_PROP_VALID_SNR_THRESHOLD, align 4
  %65 = load i32, i32* @SI476X_PROP_VALID_RSSI_THRESHOLD, align 4
  %66 = call i32 @regcache_sync_region(i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %114

71:                                               ; preds = %58
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @SI476X_FUNC_FM_RECEIVER, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %110

75:                                               ; preds = %71
  %76 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %77 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = call i64 @si476x_core_has_diversity(%struct.TYPE_3__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %75
  %82 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %83 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %86 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @si476x_core_cmd_fm_phase_diversity(%struct.TYPE_3__* %84, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %81
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %114

95:                                               ; preds = %81
  br label %96

96:                                               ; preds = %95, %75
  %97 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %98 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SI476X_PROP_FM_RDS_INTERRUPT_SOURCE, align 4
  %103 = load i32, i32* @SI476X_PROP_FM_RDS_CONFIG, align 4
  %104 = call i32 @regcache_sync_region(i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %96
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %3, align 4
  br label %114

109:                                              ; preds = %96
  br label %110

110:                                              ; preds = %109, %71
  %111 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @si476x_radio_init_vtable(%struct.si476x_radio* %111, i32 %112)
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %110, %107, %93, %69, %56, %43, %30, %17
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @regcache_sync_region(i32, i32, i32) #1

declare dso_local i64 @si476x_core_has_diversity(%struct.TYPE_3__*) #1

declare dso_local i32 @si476x_core_cmd_fm_phase_diversity(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @si476x_radio_init_vtable(%struct.si476x_radio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
