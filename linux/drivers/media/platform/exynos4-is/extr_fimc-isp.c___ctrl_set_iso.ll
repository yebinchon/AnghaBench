; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c___ctrl_set_iso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c___ctrl_set_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@V4L2_ISO_SENSITIVITY_AUTO = common dso_local global i32 0, align 4
@ISP_ISO_COMMAND_AUTO = common dso_local global i32 0, align 4
@iso_qmenu = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ISP_ISO_COMMAND_MANUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_is*, i32)* @__ctrl_set_iso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ctrl_set_iso(%struct.fimc_is* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_is*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fimc_is* %0, %struct.fimc_is** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @V4L2_ISO_SENSITIVITY_AUTO, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %13 = load i32, i32* @ISP_ISO_COMMAND_AUTO, align 4
  %14 = call i32 @__is_set_isp_iso(%struct.fimc_is* %12, i32 %13, i32 0)
  store i32 0, i32* %3, align 4
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %17 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32*, i32** @iso_qmenu, align 8
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = icmp uge i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %15
  %31 = load i32*, i32** @iso_qmenu, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %37 = load i32, i32* @ISP_ISO_COMMAND_MANUAL, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @__is_set_isp_iso(%struct.fimc_is* %36, i32 %37, i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %30, %27, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @__is_set_isp_iso(%struct.fimc_is*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
