; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-medusa-video.c_medusa_video_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-medusa-video.c_medusa_video_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32, i32* }

@MON_A_CTRL = common dso_local global i32 0, align 4
@DENC_AB_CTRL = common dso_local global i32 0, align 4
@BYP_AB_CTRL = common dso_local global i32 0, align 4
@AFE_AB_DIAG_CTRL = common dso_local global i32 0, align 4
@PIN_OE_CTRL = common dso_local global i32 0, align 4
@MAX_DECODERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @medusa_video_init(%struct.cx25821_dev* %0) #0 {
  %2 = alloca %struct.cx25821_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %8 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* @MON_A_CTRL, align 4
  %12 = call i32 @cx25821_i2c_read(i32* %10, i32 %11, i32* %4)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, -3841
  store i32 %14, i32* %3, align 4
  %15 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %16 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* @MON_A_CTRL, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @cx25821_i2c_write(i32* %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %154

25:                                               ; preds = %1
  %26 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %27 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* @MON_A_CTRL, align 4
  %31 = call i32 @cx25821_i2c_read(i32* %29, i32 %30, i32* %4)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, -33
  store i32 %33, i32* %3, align 4
  %34 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %35 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* @MON_A_CTRL, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @cx25821_i2c_write(i32* %37, i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  br label %154

44:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %55, %44
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %48 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @medusa_set_decoderduration(%struct.cx25821_dev* %52, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %45

58:                                               ; preds = %45
  %59 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %60 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* @DENC_AB_CTRL, align 4
  %64 = call i32 @cx25821_i2c_read(i32* %62, i32 %63, i32* %4)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, -9371792
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, 589832
  store i32 %68, i32* %3, align 4
  %69 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %70 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* @DENC_AB_CTRL, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @cx25821_i2c_write(i32* %72, i32 %73, i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %58
  br label %154

79:                                               ; preds = %58
  %80 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %81 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* @BYP_AB_CTRL, align 4
  %85 = call i32 @cx25821_i2c_read(i32* %83, i32 %84, i32* %4)
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = or i32 %86, 262400
  store i32 %87, i32* %3, align 4
  %88 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %89 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* @BYP_AB_CTRL, align 4
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @cx25821_i2c_write(i32* %91, i32 %92, i32 %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %79
  br label %154

98:                                               ; preds = %79
  %99 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %100 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* @AFE_AB_DIAG_CTRL, align 4
  %104 = call i32 @cx25821_i2c_read(i32* %102, i32 %103, i32* %4)
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* %3, align 4
  %106 = and i32 %105, -2080374785
  store i32 %106, i32* %3, align 4
  %107 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %108 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* @AFE_AB_DIAG_CTRL, align 4
  %112 = load i32, i32* %3, align 4
  %113 = or i32 %112, 268435456
  %114 = call i32 @cx25821_i2c_write(i32* %110, i32 %111, i32 %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %98
  br label %154

118:                                              ; preds = %98
  %119 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %120 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* @PIN_OE_CTRL, align 4
  %124 = call i32 @cx25821_i2c_read(i32* %122, i32 %123, i32* %4)
  store i32 %124, i32* %3, align 4
  %125 = load i32, i32* %3, align 4
  %126 = and i32 %125, -17760768
  store i32 %126, i32* %3, align 4
  %127 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %128 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @MAX_DECODERS, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %118
  %133 = load i32, i32* %3, align 4
  %134 = or i32 %133, 16777720
  store i32 %134, i32* %3, align 4
  br label %138

135:                                              ; preds = %118
  %136 = load i32, i32* %3, align 4
  %137 = or i32 %136, 17760520
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %135, %132
  %139 = load i32, i32* %3, align 4
  %140 = or i32 %139, 7
  store i32 %140, i32* %3, align 4
  %141 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %142 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* @PIN_OE_CTRL, align 4
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @cx25821_i2c_write(i32* %144, i32 %145, i32 %146)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %138
  br label %154

151:                                              ; preds = %138
  %152 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %153 = call i32 @medusa_set_videostandard(%struct.cx25821_dev* %152)
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %151, %150, %117, %97, %78, %43, %24
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @cx25821_i2c_read(i32*, i32, i32*) #1

declare dso_local i32 @cx25821_i2c_write(i32*, i32, i32) #1

declare dso_local i32 @medusa_set_decoderduration(%struct.cx25821_dev*, i32, i32) #1

declare dso_local i32 @medusa_set_videostandard(%struct.cx25821_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
