; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i32, i32, i32, %struct.omap3isp_hist_config* }
%struct.omap3isp_hist_config = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispstat*, i8*)* @hist_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hist_set_params(%struct.ispstat* %0, i8* %1) #0 {
  %3 = alloca %struct.ispstat*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.omap3isp_hist_config*, align 8
  %6 = alloca %struct.omap3isp_hist_config*, align 8
  store %struct.ispstat* %0, %struct.ispstat** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.omap3isp_hist_config*
  store %struct.omap3isp_hist_config* %8, %struct.omap3isp_hist_config** %5, align 8
  %9 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %10 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %9, i32 0, i32 3
  %11 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %10, align 8
  store %struct.omap3isp_hist_config* %11, %struct.omap3isp_hist_config** %6, align 8
  %12 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %13 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %18 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %5, align 8
  %19 = call i64 @hist_comp_params(%struct.ispstat* %17, %struct.omap3isp_hist_config* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %16, %2
  %22 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %23 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %5, align 8
  %24 = call i32 @memcpy(%struct.omap3isp_hist_config* %22, %struct.omap3isp_hist_config* %23, i32 8)
  %25 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %5, align 8
  %26 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %5, align 8
  %31 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %21
  %33 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %34 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %38 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %40 = call i32 @hist_get_buf_size(%struct.omap3isp_hist_config* %39)
  %41 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %42 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %32, %16
  ret void
}

declare dso_local i64 @hist_comp_params(%struct.ispstat*, %struct.omap3isp_hist_config*) #1

declare dso_local i32 @memcpy(%struct.omap3isp_hist_config*, %struct.omap3isp_hist_config*, i32) #1

declare dso_local i32 @hist_get_buf_size(%struct.omap3isp_hist_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
