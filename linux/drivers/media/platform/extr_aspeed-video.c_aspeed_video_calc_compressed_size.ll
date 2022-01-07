; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_calc_compressed_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_calc_compressed_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_video = type { i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@VE_STREAM_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Max compressed size: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_video*, i32)* @aspeed_video_calc_compressed_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_video_calc_compressed_size(%struct.aspeed_video* %0, i32 %1) #0 {
  %3 = alloca %struct.aspeed_video*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.aspeed_video* %0, %struct.aspeed_video** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 4, i32* %9, align 4
  store i32 1024, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = udiv i32 %12, 2
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @UINT_MAX, align 4
  %15 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %16 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %53, %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 6
  br i1 %19, label %20, label %56

20:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %49, %20
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %52

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 4, %25
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 1024, %27
  %29 = mul i32 %26, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %49

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %37 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 %41, 3
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %47 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %40, %34
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %21

52:                                               ; preds = %21
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %17

56:                                               ; preds = %17
  %57 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %58 = load i32, i32* @VE_STREAM_BUF_SIZE, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @aspeed_video_write(%struct.aspeed_video* %57, i32 %58, i32 %59)
  %61 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %62 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %65 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %66)
  ret void
}

declare dso_local i32 @aspeed_video_write(%struct.aspeed_video*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
