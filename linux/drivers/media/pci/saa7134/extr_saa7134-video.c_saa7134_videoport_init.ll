; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_videoport_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_videoport_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.saa7134_dev = type { i64 }

@saa7134_boards = common dso_local global %struct.TYPE_2__* null, align 8
@SAA7134_VIDEO_PORT_CTRL0 = common dso_local global i32 0, align 4
@video_out = common dso_local global i32** null, align 8
@SET_T_CODE_POLARITY_NON_INVERTED = common dso_local global i32 0, align 4
@VP_T_CODE_P_INVERTED = common dso_local global i32 0, align 4
@SAA7134_VIDEO_PORT_CTRL1 = common dso_local global i32 0, align 4
@SAA7134_VIDEO_PORT_CTRL2 = common dso_local global i32 0, align 4
@SAA7134_VIDEO_PORT_CTRL4 = common dso_local global i32 0, align 4
@SET_CLOCK_NOT_DELAYED = common dso_local global i32 0, align 4
@VP_CLK_CTRL2_DELAYED = common dso_local global i32 0, align 4
@SET_CLOCK_INVERTED = common dso_local global i32 0, align 4
@VP_CLK_CTRL1_INVERTED = common dso_local global i32 0, align 4
@SAA7134_VIDEO_PORT_CTRL5 = common dso_local global i32 0, align 4
@SET_VSYNC_OFF = common dso_local global i32 0, align 4
@VP_VS_TYPE_MASK = common dso_local global i32 0, align 4
@VP_VS_TYPE_OFF = common dso_local global i32 0, align 4
@SAA7134_VIDEO_PORT_CTRL6 = common dso_local global i32 0, align 4
@SAA7134_VIDEO_PORT_CTRL7 = common dso_local global i32 0, align 4
@SAA7134_VIDEO_PORT_CTRL8 = common dso_local global i32 0, align 4
@SAA7134_VIDEO_PORT_CTRL3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_videoport_init(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @saa7134_boards, align 8
  %7 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %8 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @saa7134_boards, align 8
  %14 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %15 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @SAA7134_VIDEO_PORT_CTRL0, align 4
  %21 = load i32**, i32*** @video_out, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @saa_writeb(i32 %20, i32 %27)
  %29 = load i32**, i32*** @video_out, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SET_T_CODE_POLARITY_NON_INVERTED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %1
  %41 = load i32, i32* @VP_T_CODE_P_INVERTED, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %1
  %46 = load i32, i32* @SAA7134_VIDEO_PORT_CTRL1, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @saa_writeb(i32 %46, i32 %47)
  %49 = load i32, i32* @SAA7134_VIDEO_PORT_CTRL2, align 4
  %50 = load i32**, i32*** @video_out, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @saa_writeb(i32 %49, i32 %56)
  %58 = load i32, i32* @SAA7134_VIDEO_PORT_CTRL4, align 4
  %59 = load i32**, i32*** @video_out, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @saa_writeb(i32 %58, i32 %65)
  %67 = load i32**, i32*** @video_out, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @SET_CLOCK_NOT_DELAYED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %45
  %79 = load i32, i32* @VP_CLK_CTRL2_DELAYED, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %4, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %78, %45
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @SET_CLOCK_INVERTED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @VP_CLK_CTRL1_INVERTED, align 4
  %90 = load i32, i32* %4, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %88, %83
  %93 = load i32, i32* @SAA7134_VIDEO_PORT_CTRL5, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @saa_writeb(i32 %93, i32 %94)
  %96 = load i32**, i32*** @video_out, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 6
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @SET_VSYNC_OFF, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %92
  %108 = load i32, i32* @VP_VS_TYPE_MASK, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %4, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* @VP_VS_TYPE_OFF, align 4
  %113 = load i32, i32* %4, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %107, %92
  %116 = load i32, i32* @SAA7134_VIDEO_PORT_CTRL6, align 4
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @saa_writeb(i32 %116, i32 %117)
  %119 = load i32, i32* @SAA7134_VIDEO_PORT_CTRL7, align 4
  %120 = load i32**, i32*** @video_out, align 8
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 7
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @saa_writeb(i32 %119, i32 %126)
  %128 = load i32, i32* @SAA7134_VIDEO_PORT_CTRL8, align 4
  %129 = load i32**, i32*** @video_out, align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 8
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @saa_writeb(i32 %128, i32 %135)
  %137 = load i32, i32* @SAA7134_VIDEO_PORT_CTRL3, align 4
  %138 = load i32**, i32*** @video_out, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @saa_writeb(i32 %137, i32 %144)
  ret i32 0
}

declare dso_local i32 @saa_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
