; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-audio.c_set_audclk_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-audio.c_set_audclk_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.cx18_av_state }
%struct.cx18_av_state = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CX18_AV_AUDIO_SERIAL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18*, i32)* @set_audclk_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_audclk_freq(%struct.cx18* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx18_av_state*, align 8
  store %struct.cx18* %0, %struct.cx18** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cx18*, %struct.cx18** %4, align 8
  %8 = getelementptr inbounds %struct.cx18, %struct.cx18* %7, i32 0, i32 0
  store %struct.cx18_av_state* %8, %struct.cx18_av_state** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 32000
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 44100
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 48000
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %156

20:                                               ; preds = %14, %11, %2
  %21 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %22 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CX18_AV_AUDIO_SERIAL2, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %86

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %85 [
    i32 32000, label %28
    i32 44100, label %47
    i32 48000, label %66
  ]

28:                                               ; preds = %26
  %29 = load %struct.cx18*, %struct.cx18** %4, align 8
  %30 = call i32 @cx18_av_write4(%struct.cx18* %29, i32 264, i32 537723919)
  %31 = load %struct.cx18*, %struct.cx18** %4, align 8
  %32 = call i32 @cx18_av_write4(%struct.cx18* %31, i32 268, i32 2876158)
  %33 = load %struct.cx18*, %struct.cx18** %4, align 8
  %34 = call i32 @cx18_av_write4(%struct.cx18* %33, i32 272, i32 24540172)
  %35 = load %struct.cx18*, %struct.cx18** %4, align 8
  %36 = call i32 @cx18_av_write4(%struct.cx18* %35, i32 2304, i32 134346623)
  %37 = load %struct.cx18*, %struct.cx18** %4, align 8
  %38 = call i32 @cx18_av_write4(%struct.cx18* %37, i32 2308, i32 134346623)
  %39 = load %struct.cx18*, %struct.cx18** %4, align 8
  %40 = call i32 @cx18_av_write4(%struct.cx18* %39, i32 2316, i32 134346623)
  %41 = load %struct.cx18*, %struct.cx18** %4, align 8
  %42 = call i32 @cx18_av_write(%struct.cx18* %41, i32 295, i32 96)
  %43 = load %struct.cx18*, %struct.cx18** %4, align 8
  %44 = call i32 @cx18_av_write4(%struct.cx18* %43, i32 300, i32 287322111)
  %45 = load %struct.cx18*, %struct.cx18** %4, align 8
  %46 = call i32 @cx18_av_write4(%struct.cx18* %45, i32 296, i32 -1609748744)
  br label %85

47:                                               ; preds = %26
  %48 = load %struct.cx18*, %struct.cx18** %4, align 8
  %49 = call i32 @cx18_av_write4(%struct.cx18* %48, i32 264, i32 403571727)
  %50 = load %struct.cx18*, %struct.cx18** %4, align 8
  %51 = call i32 @cx18_av_write4(%struct.cx18* %50, i32 268, i32 2876158)
  %52 = load %struct.cx18*, %struct.cx18** %4, align 8
  %53 = call i32 @cx18_av_write4(%struct.cx18* %52, i32 272, i32 6463986)
  %54 = load %struct.cx18*, %struct.cx18** %4, align 8
  %55 = call i32 @cx18_av_write4(%struct.cx18* %54, i32 2304, i32 134311257)
  %56 = load %struct.cx18*, %struct.cx18** %4, align 8
  %57 = call i32 @cx18_av_write4(%struct.cx18* %56, i32 2308, i32 134311257)
  %58 = load %struct.cx18*, %struct.cx18** %4, align 8
  %59 = call i32 @cx18_av_write4(%struct.cx18* %58, i32 2316, i32 134311257)
  %60 = load %struct.cx18*, %struct.cx18** %4, align 8
  %61 = call i32 @cx18_av_write(%struct.cx18* %60, i32 295, i32 88)
  %62 = load %struct.cx18*, %struct.cx18** %4, align 8
  %63 = call i32 @cx18_av_write4(%struct.cx18* %62, i32 300, i32 287347455)
  %64 = load %struct.cx18*, %struct.cx18** %4, align 8
  %65 = call i32 @cx18_av_write4(%struct.cx18* %64, i32 296, i32 -1608692744)
  br label %85

66:                                               ; preds = %26
  %67 = load %struct.cx18*, %struct.cx18** %4, align 8
  %68 = call i32 @cx18_av_write4(%struct.cx18* %67, i32 264, i32 370017295)
  %69 = load %struct.cx18*, %struct.cx18** %4, align 8
  %70 = call i32 @cx18_av_write4(%struct.cx18* %69, i32 268, i32 2876158)
  %71 = load %struct.cx18*, %struct.cx18** %4, align 8
  %72 = call i32 @cx18_av_write4(%struct.cx18* %71, i32 272, i32 5384109)
  %73 = load %struct.cx18*, %struct.cx18** %4, align 8
  %74 = call i32 @cx18_av_write4(%struct.cx18* %73, i32 2304, i32 134303658)
  %75 = load %struct.cx18*, %struct.cx18** %4, align 8
  %76 = call i32 @cx18_av_write4(%struct.cx18* %75, i32 2308, i32 134303658)
  %77 = load %struct.cx18*, %struct.cx18** %4, align 8
  %78 = call i32 @cx18_av_write4(%struct.cx18* %77, i32 2316, i32 134303658)
  %79 = load %struct.cx18*, %struct.cx18** %4, align 8
  %80 = call i32 @cx18_av_write(%struct.cx18* %79, i32 295, i32 86)
  %81 = load %struct.cx18*, %struct.cx18** %4, align 8
  %82 = call i32 @cx18_av_write4(%struct.cx18* %81, i32 300, i32 287334399)
  %83 = load %struct.cx18*, %struct.cx18** %4, align 8
  %84 = call i32 @cx18_av_write4(%struct.cx18* %83, i32 296, i32 -1609460744)
  br label %85

85:                                               ; preds = %26, %66, %47, %28
  br label %152

86:                                               ; preds = %20
  %87 = load i32, i32* %5, align 4
  switch i32 %87, label %151 [
    i32 32000, label %88
    i32 44100, label %109
    i32 48000, label %130
  ]

88:                                               ; preds = %86
  %89 = load %struct.cx18*, %struct.cx18** %4, align 8
  %90 = call i32 @cx18_av_write4(%struct.cx18* %89, i32 264, i32 806159375)
  %91 = load %struct.cx18*, %struct.cx18** %4, align 8
  %92 = call i32 @cx18_av_write4(%struct.cx18* %91, i32 268, i32 2876158)
  %93 = load %struct.cx18*, %struct.cx18** %4, align 8
  %94 = call i32 @cx18_av_write4(%struct.cx18* %93, i32 272, i32 24540172)
  %95 = load %struct.cx18*, %struct.cx18** %4, align 8
  %96 = call i32 @cx18_av_write4(%struct.cx18* %95, i32 2296, i32 134283264)
  %97 = load %struct.cx18*, %struct.cx18** %4, align 8
  %98 = call i32 @cx18_av_write4(%struct.cx18* %97, i32 2304, i32 134348800)
  %99 = load %struct.cx18*, %struct.cx18** %4, align 8
  %100 = call i32 @cx18_av_write4(%struct.cx18* %99, i32 2308, i32 134348800)
  %101 = load %struct.cx18*, %struct.cx18** %4, align 8
  %102 = call i32 @cx18_av_write4(%struct.cx18* %101, i32 2316, i32 134348800)
  %103 = load %struct.cx18*, %struct.cx18** %4, align 8
  %104 = call i32 @cx18_av_write(%struct.cx18* %103, i32 295, i32 112)
  %105 = load %struct.cx18*, %struct.cx18** %4, align 8
  %106 = call i32 @cx18_av_write4(%struct.cx18* %105, i32 300, i32 287318015)
  %107 = load %struct.cx18*, %struct.cx18** %4, align 8
  %108 = call i32 @cx18_av_write4(%struct.cx18* %107, i32 296, i32 -1609748744)
  br label %151

109:                                              ; preds = %86
  %110 = load %struct.cx18*, %struct.cx18** %4, align 8
  %111 = call i32 @cx18_av_write4(%struct.cx18* %110, i32 264, i32 604898319)
  %112 = load %struct.cx18*, %struct.cx18** %4, align 8
  %113 = call i32 @cx18_av_write4(%struct.cx18* %112, i32 268, i32 2876158)
  %114 = load %struct.cx18*, %struct.cx18** %4, align 8
  %115 = call i32 @cx18_av_write4(%struct.cx18* %114, i32 272, i32 6463986)
  %116 = load %struct.cx18*, %struct.cx18** %4, align 8
  %117 = call i32 @cx18_av_write4(%struct.cx18* %116, i32 2296, i32 134308045)
  %118 = load %struct.cx18*, %struct.cx18** %4, align 8
  %119 = call i32 @cx18_av_write4(%struct.cx18* %118, i32 2304, i32 134312837)
  %120 = load %struct.cx18*, %struct.cx18** %4, align 8
  %121 = call i32 @cx18_av_write4(%struct.cx18* %120, i32 2308, i32 134312837)
  %122 = load %struct.cx18*, %struct.cx18** %4, align 8
  %123 = call i32 @cx18_av_write4(%struct.cx18* %122, i32 2316, i32 134312837)
  %124 = load %struct.cx18*, %struct.cx18** %4, align 8
  %125 = call i32 @cx18_av_write(%struct.cx18* %124, i32 295, i32 100)
  %126 = load %struct.cx18*, %struct.cx18** %4, align 8
  %127 = call i32 @cx18_av_write4(%struct.cx18* %126, i32 300, i32 287334911)
  %128 = load %struct.cx18*, %struct.cx18** %4, align 8
  %129 = call i32 @cx18_av_write4(%struct.cx18* %128, i32 296, i32 -1608692744)
  br label %151

130:                                              ; preds = %86
  %131 = load %struct.cx18*, %struct.cx18** %4, align 8
  %132 = call i32 @cx18_av_write4(%struct.cx18* %131, i32 264, i32 537723919)
  %133 = load %struct.cx18*, %struct.cx18** %4, align 8
  %134 = call i32 @cx18_av_write4(%struct.cx18* %133, i32 268, i32 2876158)
  %135 = load %struct.cx18*, %struct.cx18** %4, align 8
  %136 = call i32 @cx18_av_write4(%struct.cx18* %135, i32 272, i32 24540172)
  %137 = load %struct.cx18*, %struct.cx18** %4, align 8
  %138 = call i32 @cx18_av_write4(%struct.cx18* %137, i32 2296, i32 134316032)
  %139 = load %struct.cx18*, %struct.cx18** %4, align 8
  %140 = call i32 @cx18_av_write4(%struct.cx18* %139, i32 2304, i32 134305109)
  %141 = load %struct.cx18*, %struct.cx18** %4, align 8
  %142 = call i32 @cx18_av_write4(%struct.cx18* %141, i32 2308, i32 134305109)
  %143 = load %struct.cx18*, %struct.cx18** %4, align 8
  %144 = call i32 @cx18_av_write4(%struct.cx18* %143, i32 2316, i32 134305109)
  %145 = load %struct.cx18*, %struct.cx18** %4, align 8
  %146 = call i32 @cx18_av_write(%struct.cx18* %145, i32 295, i32 96)
  %147 = load %struct.cx18*, %struct.cx18** %4, align 8
  %148 = call i32 @cx18_av_write4(%struct.cx18* %147, i32 300, i32 287326207)
  %149 = load %struct.cx18*, %struct.cx18** %4, align 8
  %150 = call i32 @cx18_av_write4(%struct.cx18* %149, i32 296, i32 -1609460744)
  br label %151

151:                                              ; preds = %86, %130, %109, %88
  br label %152

152:                                              ; preds = %151, %85
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %155 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %152, %17
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @cx18_av_write4(%struct.cx18*, i32, i32) #1

declare dso_local i32 @cx18_av_write(%struct.cx18*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
