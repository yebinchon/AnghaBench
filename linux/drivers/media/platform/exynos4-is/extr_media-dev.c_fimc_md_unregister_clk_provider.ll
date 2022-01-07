; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_unregister_clk_provider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_unregister_clk_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_md = type { %struct.cam_clk_provider }
%struct.cam_clk_provider = type { i32, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_md*)* @fimc_md_unregister_clk_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_md_unregister_clk_provider(%struct.fimc_md* %0) #0 {
  %2 = alloca %struct.fimc_md*, align 8
  %3 = alloca %struct.cam_clk_provider*, align 8
  %4 = alloca i32, align 4
  store %struct.fimc_md* %0, %struct.fimc_md** %2, align 8
  %5 = load %struct.fimc_md*, %struct.fimc_md** %2, align 8
  %6 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %5, i32 0, i32 0
  store %struct.cam_clk_provider* %6, %struct.cam_clk_provider** %3, align 8
  %7 = load %struct.cam_clk_provider*, %struct.cam_clk_provider** %3, align 8
  %8 = getelementptr inbounds %struct.cam_clk_provider, %struct.cam_clk_provider* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.cam_clk_provider*, %struct.cam_clk_provider** %3, align 8
  %13 = getelementptr inbounds %struct.cam_clk_provider, %struct.cam_clk_provider* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @of_clk_del_provider(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.cam_clk_provider*, %struct.cam_clk_provider** %3, align 8
  %20 = getelementptr inbounds %struct.cam_clk_provider, %struct.cam_clk_provider* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load %struct.cam_clk_provider*, %struct.cam_clk_provider** %3, align 8
  %25 = getelementptr inbounds %struct.cam_clk_provider, %struct.cam_clk_provider* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clk_unregister(i32 %30)
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %17

35:                                               ; preds = %17
  ret void
}

declare dso_local i32 @of_clk_del_provider(i64) #1

declare dso_local i32 @clk_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
