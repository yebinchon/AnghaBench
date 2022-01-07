; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_set_standard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_set_standard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw686x_video_channel = type { i32, i64, i32 }

@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_443 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@V4L2_STD_PAL_60 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SDT = common dso_local global i32* null, align 8
@VIDEO_CONTROL1 = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@SYS_MODE_DMA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tw686x_video_channel*, i32)* @tw686x_set_standard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw686x_set_standard(%struct.tw686x_video_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tw686x_video_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tw686x_video_channel* %0, %struct.tw686x_video_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @V4L2_STD_NTSC, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %57

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @V4L2_STD_PAL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1, i32* %6, align 4
  br label %56

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @V4L2_STD_SECAM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 2, i32* %6, align 4
  br label %55

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @V4L2_STD_NTSC_443, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 3, i32* %6, align 4
  br label %54

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 4, i32* %6, align 4
  br label %53

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 5, i32* %6, align 4
  br label %52

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @V4L2_STD_PAL_60, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 6, i32* %6, align 4
  br label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %111

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %41
  br label %53

53:                                               ; preds = %52, %35
  br label %54

54:                                               ; preds = %53, %29
  br label %55

55:                                               ; preds = %54, %23
  br label %56

56:                                               ; preds = %55, %17
  br label %57

57:                                               ; preds = %56, %11
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %60 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %62 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** @SDT, align 8
  %65 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %66 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @reg_write(i32 %63, i32 %69, i32 %70)
  %72 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %73 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @VIDEO_CONTROL1, align 4
  %76 = call i32 @reg_read(i32 %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @V4L2_STD_525_60, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %57
  %82 = load i32, i32* @SYS_MODE_DMA_SHIFT, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %85 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %83, %86
  %88 = trunc i64 %87 to i32
  %89 = shl i32 1, %88
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %104

93:                                               ; preds = %57
  %94 = load i32, i32* @SYS_MODE_DMA_SHIFT, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %97 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %95, %98
  %100 = trunc i64 %99 to i32
  %101 = shl i32 1, %100
  %102 = load i32, i32* %6, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %93, %81
  %105 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %106 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @VIDEO_CONTROL1, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @reg_write(i32 %107, i32 %108, i32 %109)
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %104, %48
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @reg_write(i32, i32, i32) #1

declare dso_local i32 @reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
