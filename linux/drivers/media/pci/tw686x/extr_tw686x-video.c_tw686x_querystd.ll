; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_querystd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_querystd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.tw686x_video_channel = type { i64, i32, %struct.tw686x_dev* }
%struct.tw686x_dev = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@SDT = common dso_local global i32* null, align 8
@SDT_EN = common dso_local global i32* null, align 8
@jiffies = common dso_local global i64 0, align 8
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_443 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@V4L2_STD_PAL_60 = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @tw686x_querystd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw686x_querystd(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tw686x_video_channel*, align 8
  %9 = alloca %struct.tw686x_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.tw686x_video_channel* @video_drvdata(%struct.file* %13)
  store %struct.tw686x_video_channel* %14, %struct.tw686x_video_channel** %8, align 8
  %15 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %8, align 8
  %16 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %15, i32 0, i32 2
  %17 = load %struct.tw686x_dev*, %struct.tw686x_dev** %16, align 8
  store %struct.tw686x_dev* %17, %struct.tw686x_dev** %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %8, align 8
  %19 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %18, i32 0, i32 1
  %20 = call i64 @vb2_is_streaming(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %131

25:                                               ; preds = %3
  %26 = load %struct.tw686x_dev*, %struct.tw686x_dev** %9, align 8
  %27 = load i32*, i32** @SDT, align 8
  %28 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %8, align 8
  %29 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @reg_read(%struct.tw686x_dev* %26, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.tw686x_dev*, %struct.tw686x_dev** %9, align 8
  %35 = load i32*, i32** @SDT, align 8
  %36 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %8, align 8
  %37 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @reg_write(%struct.tw686x_dev* %34, i32 %40, i32 7)
  %42 = load %struct.tw686x_dev*, %struct.tw686x_dev** %9, align 8
  %43 = load i32*, i32** @SDT_EN, align 8
  %44 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %8, align 8
  %45 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @reg_write(%struct.tw686x_dev* %42, i32 %48, i32 255)
  %50 = load i64, i64* @jiffies, align 8
  %51 = call i64 @msecs_to_jiffies(i32 500)
  %52 = add i64 %50, %51
  store i64 %52, i64* %12, align 8
  br label %53

53:                                               ; preds = %71, %25
  %54 = load i64, i64* %12, align 8
  %55 = call i64 @time_is_after_jiffies(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load %struct.tw686x_dev*, %struct.tw686x_dev** %9, align 8
  %59 = load i32*, i32** @SDT, align 8
  %60 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %8, align 8
  %61 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @reg_read(%struct.tw686x_dev* %58, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @BIT(i32 7)
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %57
  br label %73

71:                                               ; preds = %57
  %72 = call i32 @msleep(i32 100)
  br label %53

73:                                               ; preds = %70, %53
  %74 = load %struct.tw686x_dev*, %struct.tw686x_dev** %9, align 8
  %75 = load i32*, i32** @SDT, align 8
  %76 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %8, align 8
  %77 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @reg_write(%struct.tw686x_dev* %74, i32 %80, i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @BIT(i32 7)
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %131

88:                                               ; preds = %73
  %89 = load i32, i32* %11, align 4
  %90 = lshr i32 %89, 4
  %91 = and i32 %90, 7
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  switch i32 %92, label %128 [
    i32 133, label %93
    i32 134, label %98
    i32 129, label %103
    i32 131, label %108
    i32 132, label %113
    i32 130, label %118
    i32 128, label %123
  ]

93:                                               ; preds = %88
  %94 = load i32, i32* @V4L2_STD_NTSC, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %94
  store i32 %97, i32* %95, align 4
  br label %130

98:                                               ; preds = %88
  %99 = load i32, i32* @V4L2_STD_NTSC_443, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, %99
  store i32 %102, i32* %100, align 4
  br label %130

103:                                              ; preds = %88
  %104 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %104
  store i32 %107, i32* %105, align 4
  br label %130

108:                                              ; preds = %88
  %109 = load i32, i32* @V4L2_STD_PAL_60, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %109
  store i32 %112, i32* %110, align 4
  br label %130

113:                                              ; preds = %88
  %114 = load i32, i32* @V4L2_STD_PAL, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %114
  store i32 %117, i32* %115, align 4
  br label %130

118:                                              ; preds = %88
  %119 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, %119
  store i32 %122, i32* %120, align 4
  br label %130

123:                                              ; preds = %88
  %124 = load i32, i32* @V4L2_STD_SECAM, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %124
  store i32 %127, i32* %125, align 4
  br label %130

128:                                              ; preds = %88
  %129 = load i32*, i32** %7, align 8
  store i32 0, i32* %129, align 4
  br label %130

130:                                              ; preds = %128, %123, %118, %113, %108, %103, %98, %93
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %87, %22
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.tw686x_video_channel* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_streaming(i32*) #1

declare dso_local i32 @reg_read(%struct.tw686x_dev*, i32) #1

declare dso_local i32 @reg_write(%struct.tw686x_dev*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
