; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wl1273-core.c_wl1273_fm_set_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wl1273-core.c_wl1273_fm_set_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1273_core = type { i64, i32, i32 }

@WL1273_MODE_OFF = common dso_local global i64 0, align 8
@WL1273_MODE_SUSPENDED = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@WL1273_MODE_RX = common dso_local global i64 0, align 8
@WL1273_AUDIO_DIGITAL = common dso_local global i32 0, align 4
@WL1273_PCM_MODE_SET = common dso_local global i32 0, align 4
@WL1273_PCM_DEF_MODE = common dso_local global i32 0, align 4
@WL1273_I2S_MODE_CONFIG_SET = common dso_local global i32 0, align 4
@WL1273_AUDIO_ENABLE = common dso_local global i32 0, align 4
@WL1273_AUDIO_ENABLE_I2S = common dso_local global i32 0, align 4
@WL1273_AUDIO_ANALOG = common dso_local global i32 0, align 4
@WL1273_AUDIO_ENABLE_ANALOG = common dso_local global i32 0, align 4
@WL1273_MODE_TX = common dso_local global i64 0, align 8
@WL1273_AUDIO_IO_SET = common dso_local global i32 0, align 4
@WL1273_AUDIO_IO_SET_I2S = common dso_local global i32 0, align 4
@WL1273_AUDIO_IO_SET_ANALOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1273_core*, i32)* @wl1273_fm_set_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1273_fm_set_audio(%struct.wl1273_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1273_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wl1273_core* %0, %struct.wl1273_core** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %8 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @WL1273_MODE_OFF, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %14 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WL1273_MODE_SUSPENDED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @EPERM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %134

21:                                               ; preds = %12
  %22 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %23 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WL1273_MODE_RX, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @WL1273_AUDIO_DIGITAL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %27
  %32 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %33 = load i32, i32* @WL1273_PCM_MODE_SET, align 4
  %34 = load i32, i32* @WL1273_PCM_DEF_MODE, align 4
  %35 = call i32 @wl1273_fm_write_cmd(%struct.wl1273_core* %32, i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %132

39:                                               ; preds = %31
  %40 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %41 = load i32, i32* @WL1273_I2S_MODE_CONFIG_SET, align 4
  %42 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %43 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @wl1273_fm_write_cmd(%struct.wl1273_core* %40, i32 %41, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %132

49:                                               ; preds = %39
  %50 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %51 = load i32, i32* @WL1273_AUDIO_ENABLE, align 4
  %52 = load i32, i32* @WL1273_AUDIO_ENABLE_I2S, align 4
  %53 = call i32 @wl1273_fm_write_cmd(%struct.wl1273_core* %50, i32 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %132

57:                                               ; preds = %49
  br label %128

58:                                               ; preds = %27, %21
  %59 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %60 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @WL1273_MODE_RX, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @WL1273_AUDIO_ANALOG, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %70 = load i32, i32* @WL1273_AUDIO_ENABLE, align 4
  %71 = load i32, i32* @WL1273_AUDIO_ENABLE_ANALOG, align 4
  %72 = call i32 @wl1273_fm_write_cmd(%struct.wl1273_core* %69, i32 %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %132

76:                                               ; preds = %68
  br label %127

77:                                               ; preds = %64, %58
  %78 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %79 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @WL1273_MODE_TX, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %77
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @WL1273_AUDIO_DIGITAL, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %83
  %88 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %89 = load i32, i32* @WL1273_I2S_MODE_CONFIG_SET, align 4
  %90 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %91 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @wl1273_fm_write_cmd(%struct.wl1273_core* %88, i32 %89, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %132

97:                                               ; preds = %87
  %98 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %99 = load i32, i32* @WL1273_AUDIO_IO_SET, align 4
  %100 = load i32, i32* @WL1273_AUDIO_IO_SET_I2S, align 4
  %101 = call i32 @wl1273_fm_write_cmd(%struct.wl1273_core* %98, i32 %99, i32 %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %132

105:                                              ; preds = %97
  br label %126

106:                                              ; preds = %83, %77
  %107 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %108 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @WL1273_MODE_TX, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %106
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @WL1273_AUDIO_ANALOG, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %118 = load i32, i32* @WL1273_AUDIO_IO_SET, align 4
  %119 = load i32, i32* @WL1273_AUDIO_IO_SET_ANALOG, align 4
  %120 = call i32 @wl1273_fm_write_cmd(%struct.wl1273_core* %117, i32 %118, i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %132

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %112, %106
  br label %126

126:                                              ; preds = %125, %105
  br label %127

127:                                              ; preds = %126, %76
  br label %128

128:                                              ; preds = %127, %57
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %131 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %128, %123, %104, %96, %75, %56, %48, %38
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %132, %18
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @wl1273_fm_write_cmd(%struct.wl1273_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
