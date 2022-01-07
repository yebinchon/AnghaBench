; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_is_shiftable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_is_shiftable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_format_info = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @ccdc_is_shiftable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_is_shiftable(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.isp_format_info*, align 8
  %9 = alloca %struct.isp_format_info*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %50

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = call %struct.isp_format_info* @omap3isp_video_format_info(i64 %15)
  store %struct.isp_format_info* %16, %struct.isp_format_info** %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.isp_format_info* @omap3isp_video_format_info(i64 %17)
  store %struct.isp_format_info* %18, %struct.isp_format_info** %9, align 8
  %19 = load %struct.isp_format_info*, %struct.isp_format_info** %8, align 8
  %20 = getelementptr inbounds %struct.isp_format_info, %struct.isp_format_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = load %struct.isp_format_info*, %struct.isp_format_info** %9, align 8
  %25 = getelementptr inbounds %struct.isp_format_info, %struct.isp_format_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %14
  store i32 0, i32* %4, align 4
  br label %50

29:                                               ; preds = %23
  %30 = load %struct.isp_format_info*, %struct.isp_format_info** %8, align 8
  %31 = getelementptr inbounds %struct.isp_format_info, %struct.isp_format_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.isp_format_info*, %struct.isp_format_info** %9, align 8
  %34 = getelementptr inbounds %struct.isp_format_info, %struct.isp_format_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %50

38:                                               ; preds = %29
  %39 = load %struct.isp_format_info*, %struct.isp_format_info** %8, align 8
  %40 = getelementptr inbounds %struct.isp_format_info, %struct.isp_format_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.isp_format_info*, %struct.isp_format_info** %9, align 8
  %43 = getelementptr inbounds %struct.isp_format_info, %struct.isp_format_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sub i32 %41, %44
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %45, %46
  %48 = icmp ule i32 %47, 6
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %38, %37, %28, %13
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.isp_format_info* @omap3isp_video_format_info(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
