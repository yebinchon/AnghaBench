; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_check_and_set_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_check_and_set_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_video = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NUM_POLARITY_CHECKS = common dso_local global i32 0, align 4
@VE_MODE_DETECT_STATUS = common dso_local global i32 0, align 4
@VE_MODE_DETECT_STATUS_VSYNC = common dso_local global i32 0, align 4
@VE_MODE_DETECT_STATUS_HSYNC = common dso_local global i32 0, align 4
@VE_CTRL_HSYNC_POL = common dso_local global i32 0, align 4
@V4L2_DV_HSYNC_POS_POL = common dso_local global i32 0, align 4
@VE_CTRL_VSYNC_POL = common dso_local global i32 0, align 4
@V4L2_DV_VSYNC_POS_POL = common dso_local global i32 0, align 4
@VE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_video*)* @aspeed_video_check_and_set_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_video_check_and_set_polarity(%struct.aspeed_video* %0) #0 {
  %2 = alloca %struct.aspeed_video*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aspeed_video* %0, %struct.aspeed_video** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %38, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NUM_POLARITY_CHECKS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %14 = load i32, i32* @VE_MODE_DETECT_STATUS, align 4
  %15 = call i32 @aspeed_video_read(%struct.aspeed_video* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @VE_MODE_DETECT_STATUS_VSYNC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %5, align 4
  br label %26

23:                                               ; preds = %12
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @VE_MODE_DETECT_STATUS_HSYNC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %4, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %8

41:                                               ; preds = %8
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %94

47:                                               ; preds = %44, %41
  store i32 0, i32* %7, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, i32* @VE_CTRL_HSYNC_POL, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @V4L2_DV_HSYNC_POS_POL, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %55 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %53
  store i32 %58, i32* %56, align 4
  br label %66

59:                                               ; preds = %47
  %60 = load i32, i32* @V4L2_DV_HSYNC_POS_POL, align 4
  %61 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %62 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %59, %50
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32, i32* @VE_CTRL_VSYNC_POL, align 4
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* @V4L2_DV_VSYNC_POS_POL, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %74 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %72
  store i32 %77, i32* %75, align 4
  br label %85

78:                                               ; preds = %66
  %79 = load i32, i32* @V4L2_DV_VSYNC_POS_POL, align 4
  %80 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %81 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %79
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %78, %69
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %90 = load i32, i32* @VE_CTRL, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @aspeed_video_update(%struct.aspeed_video* %89, i32 %90, i32 0, i32 %91)
  br label %93

93:                                               ; preds = %88, %85
  br label %94

94:                                               ; preds = %93, %44
  ret void
}

declare dso_local i32 @aspeed_video_read(%struct.aspeed_video*, i32) #1

declare dso_local i32 @aspeed_video_update(%struct.aspeed_video*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
