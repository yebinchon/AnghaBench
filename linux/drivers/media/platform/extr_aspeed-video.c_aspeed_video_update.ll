; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_video = type { i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"update %03x[%08x -> %08x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_video*, i64, i64, i64)* @aspeed_video_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_video_update(%struct.aspeed_video* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.aspeed_video*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.aspeed_video* %0, %struct.aspeed_video** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.aspeed_video*, %struct.aspeed_video** %5, align 8
  %12 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @readl(i64 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = xor i64 %18, -1
  %20 = load i64, i64* %9, align 8
  %21 = and i64 %20, %19
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.aspeed_video*, %struct.aspeed_video** %5, align 8
  %27 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i64 %25, i64 %30)
  %32 = load %struct.aspeed_video*, %struct.aspeed_video** %5, align 8
  %33 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.aspeed_video*, %struct.aspeed_video** %5, align 8
  %38 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i64 @readl(i64 %41)
  %43 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %36, i64 %42)
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
