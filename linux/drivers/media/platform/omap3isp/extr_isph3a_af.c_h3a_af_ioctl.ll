; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isph3a_af.c_h3a_af_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isph3a_af.c_h3a_af_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ispstat = type { i32 }

@ENOIOCTLCMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.v4l2_subdev*, i32, i8*)* @h3a_af_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @h3a_af_ioctl(%struct.v4l2_subdev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ispstat*, align 8
  %9 = alloca i32*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.ispstat* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.ispstat* %11, %struct.ispstat** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %36 [
    i32 131, label %13
    i32 129, label %17
    i32 128, label %21
    i32 130, label %25
  ]

13:                                               ; preds = %3
  %14 = load %struct.ispstat*, %struct.ispstat** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @omap3isp_stat_config(%struct.ispstat* %14, i8* %15)
  store i64 %16, i64* %4, align 8
  br label %39

17:                                               ; preds = %3
  %18 = load %struct.ispstat*, %struct.ispstat** %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @omap3isp_stat_request_statistics(%struct.ispstat* %18, i8* %19)
  store i64 %20, i64* %4, align 8
  br label %39

21:                                               ; preds = %3
  %22 = load %struct.ispstat*, %struct.ispstat** %8, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @omap3isp_stat_request_statistics_time32(%struct.ispstat* %22, i8* %23)
  store i64 %24, i64* %4, align 8
  br label %39

25:                                               ; preds = %3
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %9, align 8
  %28 = load %struct.ispstat*, %struct.ispstat** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @omap3isp_stat_enable(%struct.ispstat* %28, i32 %34)
  store i64 %35, i64* %4, align 8
  br label %39

36:                                               ; preds = %3
  %37 = load i64, i64* @ENOIOCTLCMD, align 8
  %38 = sub nsw i64 0, %37
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %36, %25, %21, %17, %13
  %40 = load i64, i64* %4, align 8
  ret i64 %40
}

declare dso_local %struct.ispstat* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i64 @omap3isp_stat_config(%struct.ispstat*, i8*) #1

declare dso_local i64 @omap3isp_stat_request_statistics(%struct.ispstat*, i8*) #1

declare dso_local i64 @omap3isp_stat_request_statistics_time32(%struct.ispstat*, i8*) #1

declare dso_local i64 @omap3isp_stat_enable(%struct.ispstat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
