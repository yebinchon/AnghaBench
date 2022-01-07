; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_set_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_set_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"prescale=%d xscale=%d yscale=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7134_dev*, i32, i32, i32, i32)* @set_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_size(%struct.saa7134_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.saa7134_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 2, i32 1
  store i32 %24, i32* %20, align 4
  %25 = load %struct.saa7134_dev*, %struct.saa7134_dev** %6, align 8
  %26 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %16, align 4
  %29 = load %struct.saa7134_dev*, %struct.saa7134_dev** %6, align 8
  %30 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 2
  store i32 %33, i32* %18, align 4
  %34 = load %struct.saa7134_dev*, %struct.saa7134_dev** %6, align 8
  %35 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.saa7134_dev*, %struct.saa7134_dev** %6, align 8
  %39 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %37, %41
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %17, align 4
  %44 = load %struct.saa7134_dev*, %struct.saa7134_dev** %6, align 8
  %45 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.saa7134_dev*, %struct.saa7134_dev** %6, align 8
  %49 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %47, %51
  %53 = sub nsw i32 %52, 1
  %54 = sdiv i32 %53, 2
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @SAA7134_VIDEO_H_START1(i32 %55)
  %57 = load i32, i32* %16, align 4
  %58 = and i32 %57, 255
  %59 = call i32 @saa_writeb(i32 %56, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @SAA7134_VIDEO_H_START2(i32 %60)
  %62 = load i32, i32* %16, align 4
  %63 = ashr i32 %62, 8
  %64 = call i32 @saa_writeb(i32 %61, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @SAA7134_VIDEO_H_STOP1(i32 %65)
  %67 = load i32, i32* %17, align 4
  %68 = and i32 %67, 255
  %69 = call i32 @saa_writeb(i32 %66, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @SAA7134_VIDEO_H_STOP2(i32 %70)
  %72 = load i32, i32* %17, align 4
  %73 = ashr i32 %72, 8
  %74 = call i32 @saa_writeb(i32 %71, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @SAA7134_VIDEO_V_START1(i32 %75)
  %77 = load i32, i32* %18, align 4
  %78 = and i32 %77, 255
  %79 = call i32 @saa_writeb(i32 %76, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @SAA7134_VIDEO_V_START2(i32 %80)
  %82 = load i32, i32* %18, align 4
  %83 = ashr i32 %82, 8
  %84 = call i32 @saa_writeb(i32 %81, i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @SAA7134_VIDEO_V_STOP1(i32 %85)
  %87 = load i32, i32* %19, align 4
  %88 = and i32 %87, 255
  %89 = call i32 @saa_writeb(i32 %86, i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @SAA7134_VIDEO_V_STOP2(i32 %90)
  %92 = load i32, i32* %19, align 4
  %93 = ashr i32 %92, 8
  %94 = call i32 @saa_writeb(i32 %91, i32 %93)
  %95 = load %struct.saa7134_dev*, %struct.saa7134_dev** %6, align 8
  %96 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = sdiv i32 %98, %99
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 0, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %5
  store i32 1, i32* %11, align 4
  br label %104

104:                                              ; preds = %103, %5
  %105 = load %struct.saa7134_dev*, %struct.saa7134_dev** %6, align 8
  %106 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 1024, %108
  %110 = load i32, i32* %11, align 4
  %111 = sdiv i32 %109, %110
  %112 = load i32, i32* %8, align 4
  %113 = sdiv i32 %111, %112
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %20, align 4
  %115 = mul nsw i32 512, %114
  %116 = load %struct.saa7134_dev*, %struct.saa7134_dev** %6, align 8
  %117 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %115, %119
  %121 = load i32, i32* %9, align 4
  %122 = sdiv i32 %120, %121
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @video_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %123, i32 %124, i32 %125)
  %127 = load %struct.saa7134_dev*, %struct.saa7134_dev** %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @set_h_prescale(%struct.saa7134_dev* %127, i32 %128, i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @SAA7134_H_SCALE_INC1(i32 %131)
  %133 = load i32, i32* %12, align 4
  %134 = and i32 %133, 255
  %135 = call i32 @saa_writeb(i32 %132, i32 %134)
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @SAA7134_H_SCALE_INC2(i32 %136)
  %138 = load i32, i32* %12, align 4
  %139 = ashr i32 %138, 8
  %140 = call i32 @saa_writeb(i32 %137, i32 %139)
  %141 = load %struct.saa7134_dev*, %struct.saa7134_dev** %6, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @set_v_scale(%struct.saa7134_dev* %141, i32 %142, i32 %143)
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @SAA7134_VIDEO_PIXELS1(i32 %145)
  %147 = load i32, i32* %8, align 4
  %148 = and i32 %147, 255
  %149 = call i32 @saa_writeb(i32 %146, i32 %148)
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @SAA7134_VIDEO_PIXELS2(i32 %150)
  %152 = load i32, i32* %8, align 4
  %153 = ashr i32 %152, 8
  %154 = call i32 @saa_writeb(i32 %151, i32 %153)
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @SAA7134_VIDEO_LINES1(i32 %155)
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %20, align 4
  %159 = sdiv i32 %157, %158
  %160 = and i32 %159, 255
  %161 = call i32 @saa_writeb(i32 %156, i32 %160)
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @SAA7134_VIDEO_LINES2(i32 %162)
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %20, align 4
  %166 = sdiv i32 %164, %165
  %167 = ashr i32 %166, 8
  %168 = call i32 @saa_writeb(i32 %163, i32 %167)
  %169 = load %struct.saa7134_dev*, %struct.saa7134_dev** %6, align 8
  %170 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %15, align 4
  %172 = load %struct.saa7134_dev*, %struct.saa7134_dev** %6, align 8
  %173 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @SAA7134_V_PHASE_OFFSET0(i32 %175)
  %177 = load i32, i32* %15, align 4
  %178 = call i32 @saa_writeb(i32 %176, i32 %177)
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @SAA7134_V_PHASE_OFFSET1(i32 %179)
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @saa_writeb(i32 %180, i32 %181)
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @SAA7134_V_PHASE_OFFSET2(i32 %183)
  %185 = load i32, i32* %15, align 4
  %186 = call i32 @saa_writeb(i32 %184, i32 %185)
  %187 = load i32, i32* %7, align 4
  %188 = call i32 @SAA7134_V_PHASE_OFFSET3(i32 %187)
  %189 = load i32, i32* %14, align 4
  %190 = call i32 @saa_writeb(i32 %188, i32 %189)
  ret void
}

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @SAA7134_VIDEO_H_START1(i32) #1

declare dso_local i32 @SAA7134_VIDEO_H_START2(i32) #1

declare dso_local i32 @SAA7134_VIDEO_H_STOP1(i32) #1

declare dso_local i32 @SAA7134_VIDEO_H_STOP2(i32) #1

declare dso_local i32 @SAA7134_VIDEO_V_START1(i32) #1

declare dso_local i32 @SAA7134_VIDEO_V_START2(i32) #1

declare dso_local i32 @SAA7134_VIDEO_V_STOP1(i32) #1

declare dso_local i32 @SAA7134_VIDEO_V_STOP2(i32) #1

declare dso_local i32 @video_dbg(i8*, i32, i32, i32) #1

declare dso_local i32 @set_h_prescale(%struct.saa7134_dev*, i32, i32) #1

declare dso_local i32 @SAA7134_H_SCALE_INC1(i32) #1

declare dso_local i32 @SAA7134_H_SCALE_INC2(i32) #1

declare dso_local i32 @set_v_scale(%struct.saa7134_dev*, i32, i32) #1

declare dso_local i32 @SAA7134_VIDEO_PIXELS1(i32) #1

declare dso_local i32 @SAA7134_VIDEO_PIXELS2(i32) #1

declare dso_local i32 @SAA7134_VIDEO_LINES1(i32) #1

declare dso_local i32 @SAA7134_VIDEO_LINES2(i32) #1

declare dso_local i32 @SAA7134_V_PHASE_OFFSET0(i32) #1

declare dso_local i32 @SAA7134_V_PHASE_OFFSET1(i32) #1

declare dso_local i32 @SAA7134_V_PHASE_OFFSET2(i32) #1

declare dso_local i32 @SAA7134_V_PHASE_OFFSET3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
