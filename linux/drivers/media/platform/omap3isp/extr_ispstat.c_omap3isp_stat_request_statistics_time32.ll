; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_omap3isp_stat_request_statistics_time32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_omap3isp_stat_request_statistics_time32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i32 }
%struct.omap3isp_stat_data_time32 = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.omap3isp_stat_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap3isp_stat_request_statistics_time32(%struct.ispstat* %0, %struct.omap3isp_stat_data_time32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ispstat*, align 8
  %5 = alloca %struct.omap3isp_stat_data_time32*, align 8
  %6 = alloca %struct.omap3isp_stat_data, align 4
  %7 = alloca i32, align 4
  store %struct.ispstat* %0, %struct.ispstat** %4, align 8
  store %struct.omap3isp_stat_data_time32* %1, %struct.omap3isp_stat_data_time32** %5, align 8
  %8 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %9 = call i32 @omap3isp_stat_request_statistics(%struct.ispstat* %8, %struct.omap3isp_stat_data* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %31

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.omap3isp_stat_data, %struct.omap3isp_stat_data* %6, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.omap3isp_stat_data_time32*, %struct.omap3isp_stat_data_time32** %5, align 8
  %19 = getelementptr inbounds %struct.omap3isp_stat_data_time32, %struct.omap3isp_stat_data_time32* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = getelementptr inbounds %struct.omap3isp_stat_data, %struct.omap3isp_stat_data* %6, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.omap3isp_stat_data_time32*, %struct.omap3isp_stat_data_time32** %5, align 8
  %25 = getelementptr inbounds %struct.omap3isp_stat_data_time32, %struct.omap3isp_stat_data_time32* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.omap3isp_stat_data_time32*, %struct.omap3isp_stat_data_time32** %5, align 8
  %28 = getelementptr inbounds %struct.omap3isp_stat_data_time32, %struct.omap3isp_stat_data_time32* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.omap3isp_stat_data, %struct.omap3isp_stat_data* %6, i32 0, i32 0
  %30 = call i32 @memcpy(i32* %28, i32* %29, i32 4)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %14, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @omap3isp_stat_request_statistics(%struct.ispstat*, %struct.omap3isp_stat_data*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
