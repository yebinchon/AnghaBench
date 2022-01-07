; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_set_decoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_set_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, i32, i32, i32, i64, i64, i32, %struct.saa7134_tvnorm* }
%struct.saa7134_tvnorm = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@noninterlaced = common dso_local global i64 0, align 8
@SAA7134_SYNC_CTRL_AUFD = common dso_local global i32 0, align 4
@SAA7134_CHROMA_CTRL1_AUTO0 = common dso_local global i32 0, align 4
@SAA7134_CHROMA_CTRL1_FCTC = common dso_local global i32 0, align 4
@SAA7134_LUMA_CTRL_LDEL = common dso_local global i32 0, align 4
@SAA7134_INCR_DELAY = common dso_local global i32 0, align 4
@SAA7134_ANALOG_IN_CTRL1 = common dso_local global i32 0, align 4
@SAA7134_ANALOG_IN_CTRL2 = common dso_local global i32 0, align 4
@SAA7134_ANALOG_IN_CTRL3 = common dso_local global i32 0, align 4
@SAA7134_ANALOG_IN_CTRL4 = common dso_local global i32 0, align 4
@SAA7134_HSYNC_START = common dso_local global i32 0, align 4
@SAA7134_HSYNC_STOP = common dso_local global i32 0, align 4
@SAA7134_SOURCE_TIMING1 = common dso_local global i32 0, align 4
@SAA7134_SYNC_CTRL = common dso_local global i32 0, align 4
@SAA7134_LUMA_CTRL = common dso_local global i32 0, align 4
@SAA7134_DEC_LUMA_BRIGHT = common dso_local global i32 0, align 4
@SAA7134_DEC_LUMA_CONTRAST = common dso_local global i32 0, align 4
@SAA7134_DEC_CHROMA_SATURATION = common dso_local global i32 0, align 4
@SAA7134_DEC_CHROMA_HUE = common dso_local global i32 0, align 4
@SAA7134_CHROMA_CTRL1 = common dso_local global i32 0, align 4
@SAA7134_CHROMA_GAIN = common dso_local global i32 0, align 4
@SAA7134_CHROMA_CTRL2 = common dso_local global i32 0, align 4
@SAA7134_MODE_DELAY_CTRL = common dso_local global i32 0, align 4
@SAA7134_ANALOG_ADC = common dso_local global i32 0, align 4
@SAA7134_VGATE_START = common dso_local global i32 0, align 4
@SAA7134_VGATE_STOP = common dso_local global i32 0, align 4
@SAA7134_MISC_VGATE_MSB = common dso_local global i32 0, align 4
@SAA7134_RAW_DATA_GAIN = common dso_local global i32 0, align 4
@SAA7134_RAW_DATA_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7134_dev*)* @saa7134_set_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa7134_set_decoder(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.saa7134_tvnorm*, align 8
  %8 = alloca %struct.TYPE_2__, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %9 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %10 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %9, i32 0, i32 7
  %11 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %10, align 8
  store %struct.saa7134_tvnorm* %11, %struct.saa7134_tvnorm** %7, align 8
  %12 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %13 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %14 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @card_in(%struct.saa7134_dev* %12, i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %7, align 8
  %21 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  %23 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %7, align 8
  %24 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %7, align 8
  %27 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %29, 5
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, 128
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %1
  %35 = load i64, i64* @noninterlaced, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %39 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, 32
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* @SAA7134_SYNC_CTRL_AUFD, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @SAA7134_CHROMA_CTRL1_AUTO0, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @SAA7134_CHROMA_CTRL1_FCTC, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @SAA7134_LUMA_CTRL_LDEL, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %3, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* @SAA7134_INCR_DELAY, align 4
  %61 = call i32 @saa_writeb(i32 %60, i32 8)
  %62 = load i32, i32* @SAA7134_ANALOG_IN_CTRL1, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 192, %63
  %65 = call i32 @saa_writeb(i32 %62, i32 %64)
  %66 = load i32, i32* @SAA7134_ANALOG_IN_CTRL2, align 4
  %67 = call i32 @saa_writeb(i32 %66, i32 0)
  %68 = load i32, i32* @SAA7134_ANALOG_IN_CTRL3, align 4
  %69 = call i32 @saa_writeb(i32 %68, i32 144)
  %70 = load i32, i32* @SAA7134_ANALOG_IN_CTRL4, align 4
  %71 = call i32 @saa_writeb(i32 %70, i32 144)
  %72 = load i32, i32* @SAA7134_HSYNC_START, align 4
  %73 = call i32 @saa_writeb(i32 %72, i32 235)
  %74 = load i32, i32* @SAA7134_HSYNC_STOP, align 4
  %75 = call i32 @saa_writeb(i32 %74, i32 224)
  %76 = load i32, i32* @SAA7134_SOURCE_TIMING1, align 4
  %77 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %7, align 8
  %78 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @saa_writeb(i32 %76, i32 %79)
  %81 = load i32, i32* @SAA7134_SYNC_CTRL, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @saa_writeb(i32 %81, i32 %82)
  %84 = load i32, i32* @SAA7134_LUMA_CTRL, align 4
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @saa_writeb(i32 %84, i32 %85)
  %87 = load i32, i32* @SAA7134_DEC_LUMA_BRIGHT, align 4
  %88 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %89 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @saa_writeb(i32 %87, i32 %90)
  %92 = load i32, i32* @SAA7134_DEC_LUMA_CONTRAST, align 4
  %93 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %94 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %45
  %98 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %99 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 0, %100
  br label %106

102:                                              ; preds = %45
  %103 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %104 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  br label %106

106:                                              ; preds = %102, %97
  %107 = phi i32 [ %101, %97 ], [ %105, %102 ]
  %108 = call i32 @saa_writeb(i32 %92, i32 %107)
  %109 = load i32, i32* @SAA7134_DEC_CHROMA_SATURATION, align 4
  %110 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %111 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %116 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 0, %117
  br label %123

119:                                              ; preds = %106
  %120 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %121 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  br label %123

123:                                              ; preds = %119, %114
  %124 = phi i32 [ %118, %114 ], [ %122, %119 ]
  %125 = call i32 @saa_writeb(i32 %109, i32 %124)
  %126 = load i32, i32* @SAA7134_DEC_CHROMA_HUE, align 4
  %127 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %128 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @saa_writeb(i32 %126, i32 %129)
  %131 = load i32, i32* @SAA7134_CHROMA_CTRL1, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @saa_writeb(i32 %131, i32 %132)
  %134 = load i32, i32* @SAA7134_CHROMA_GAIN, align 4
  %135 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %7, align 8
  %136 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @saa_writeb(i32 %134, i32 %137)
  %139 = load i32, i32* @SAA7134_CHROMA_CTRL2, align 4
  %140 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %7, align 8
  %141 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @saa_writeb(i32 %139, i32 %142)
  %144 = load i32, i32* @SAA7134_MODE_DELAY_CTRL, align 4
  %145 = call i32 @saa_writeb(i32 %144, i32 0)
  %146 = load i32, i32* @SAA7134_ANALOG_ADC, align 4
  %147 = call i32 @saa_writeb(i32 %146, i32 1)
  %148 = load i32, i32* @SAA7134_VGATE_START, align 4
  %149 = call i32 @saa_writeb(i32 %148, i32 17)
  %150 = load i32, i32* @SAA7134_VGATE_STOP, align 4
  %151 = call i32 @saa_writeb(i32 %150, i32 254)
  %152 = load i32, i32* @SAA7134_MISC_VGATE_MSB, align 4
  %153 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %7, align 8
  %154 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @saa_writeb(i32 %152, i32 %155)
  %157 = load i32, i32* @SAA7134_RAW_DATA_GAIN, align 4
  %158 = call i32 @saa_writeb(i32 %157, i32 64)
  %159 = load i32, i32* @SAA7134_RAW_DATA_OFFSET, align 4
  %160 = call i32 @saa_writeb(i32 %159, i32 128)
  ret void
}

declare dso_local i32 @card_in(%struct.saa7134_dev*, i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
