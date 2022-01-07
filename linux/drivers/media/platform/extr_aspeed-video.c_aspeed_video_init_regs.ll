; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_init_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_video = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@VE_COMP_CTRL_RSVD = common dso_local global i32 0, align 4
@VE_COMP_CTRL_DCT_LUM = common dso_local global i32 0, align 4
@VE_COMP_CTRL_DCT_CHR = common dso_local global i32 0, align 4
@VE_CTRL_AUTO_OR_CURSOR = common dso_local global i32 0, align 4
@VE_SEQ_CTRL_JPEG_MODE = common dso_local global i32 0, align 4
@VE_CTRL_FRC = common dso_local global i32 0, align 4
@VE_SEQ_CTRL_YUV420 = common dso_local global i32 0, align 4
@VE_PROTECTION_KEY = common dso_local global i32 0, align 4
@VE_PROTECTION_KEY_UNLOCK = common dso_local global i32 0, align 4
@VE_INTERRUPT_CTRL = common dso_local global i32 0, align 4
@VE_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@VE_COMP_PROC_OFFSET = common dso_local global i32 0, align 4
@VE_COMP_OFFSET = common dso_local global i32 0, align 4
@VE_JPEG_ADDR = common dso_local global i32 0, align 4
@VE_SEQ_CTRL = common dso_local global i32 0, align 4
@VE_CTRL = common dso_local global i32 0, align 4
@VE_COMP_CTRL = common dso_local global i32 0, align 4
@VE_SCALING_FACTOR = common dso_local global i32 0, align 4
@VE_SCALING_FILTER0 = common dso_local global i32 0, align 4
@VE_SCALING_FILTER1 = common dso_local global i32 0, align 4
@VE_SCALING_FILTER2 = common dso_local global i32 0, align 4
@VE_SCALING_FILTER3 = common dso_local global i32 0, align 4
@VE_MODE_DETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_video*)* @aspeed_video_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_video_init_regs(%struct.aspeed_video* %0) #0 {
  %2 = alloca %struct.aspeed_video*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aspeed_video* %0, %struct.aspeed_video** %2, align 8
  %6 = load i32, i32* @VE_COMP_CTRL_RSVD, align 4
  %7 = load i32, i32* @VE_COMP_CTRL_DCT_LUM, align 4
  %8 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %9 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @FIELD_PREP(i32 %7, i32 %10)
  %12 = or i32 %6, %11
  %13 = load i32, i32* @VE_COMP_CTRL_DCT_CHR, align 4
  %14 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %15 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, 16
  %18 = call i32 @FIELD_PREP(i32 %13, i32 %17)
  %19 = or i32 %12, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @VE_CTRL_AUTO_OR_CURSOR, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @VE_SEQ_CTRL_JPEG_MODE, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %23 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = load i32, i32* @VE_CTRL_FRC, align 4
  %28 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %29 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @FIELD_PREP(i32 %27, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %26, %1
  %35 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %36 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @VE_SEQ_CTRL_YUV420, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %45 = load i32, i32* @VE_PROTECTION_KEY, align 4
  %46 = load i32, i32* @VE_PROTECTION_KEY_UNLOCK, align 4
  %47 = call i32 @aspeed_video_write(%struct.aspeed_video* %44, i32 %45, i32 %46)
  %48 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %49 = load i32, i32* @VE_INTERRUPT_CTRL, align 4
  %50 = call i32 @aspeed_video_write(%struct.aspeed_video* %48, i32 %49, i32 0)
  %51 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %52 = load i32, i32* @VE_INTERRUPT_STATUS, align 4
  %53 = call i32 @aspeed_video_write(%struct.aspeed_video* %51, i32 %52, i32 -1)
  %54 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %55 = load i32, i32* @VE_COMP_PROC_OFFSET, align 4
  %56 = call i32 @aspeed_video_write(%struct.aspeed_video* %54, i32 %55, i32 0)
  %57 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %58 = load i32, i32* @VE_COMP_OFFSET, align 4
  %59 = call i32 @aspeed_video_write(%struct.aspeed_video* %57, i32 %58, i32 0)
  %60 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %61 = load i32, i32* @VE_JPEG_ADDR, align 4
  %62 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %63 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @aspeed_video_write(%struct.aspeed_video* %60, i32 %61, i32 %65)
  %67 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %68 = load i32, i32* @VE_SEQ_CTRL, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @aspeed_video_write(%struct.aspeed_video* %67, i32 %68, i32 %69)
  %71 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %72 = load i32, i32* @VE_CTRL, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @aspeed_video_write(%struct.aspeed_video* %71, i32 %72, i32 %73)
  %75 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %76 = load i32, i32* @VE_COMP_CTRL, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @aspeed_video_write(%struct.aspeed_video* %75, i32 %76, i32 %77)
  %79 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %80 = load i32, i32* @VE_SCALING_FACTOR, align 4
  %81 = call i32 @aspeed_video_write(%struct.aspeed_video* %79, i32 %80, i32 268439552)
  %82 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %83 = load i32, i32* @VE_SCALING_FILTER0, align 4
  %84 = call i32 @aspeed_video_write(%struct.aspeed_video* %82, i32 %83, i32 2097152)
  %85 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %86 = load i32, i32* @VE_SCALING_FILTER1, align 4
  %87 = call i32 @aspeed_video_write(%struct.aspeed_video* %85, i32 %86, i32 2097152)
  %88 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %89 = load i32, i32* @VE_SCALING_FILTER2, align 4
  %90 = call i32 @aspeed_video_write(%struct.aspeed_video* %88, i32 %89, i32 2097152)
  %91 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %92 = load i32, i32* @VE_SCALING_FILTER3, align 4
  %93 = call i32 @aspeed_video_write(%struct.aspeed_video* %91, i32 %92, i32 2097152)
  %94 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %95 = load i32, i32* @VE_MODE_DETECT, align 4
  %96 = call i32 @aspeed_video_write(%struct.aspeed_video* %94, i32 %95, i32 577135872)
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @aspeed_video_write(%struct.aspeed_video*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
