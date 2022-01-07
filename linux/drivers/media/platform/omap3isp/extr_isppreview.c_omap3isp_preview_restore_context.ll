; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_omap3isp_preview_restore_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_omap3isp_preview_restore_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { %struct.isp_prev_device }
%struct.isp_prev_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@OMAP3ISP_PREV_FEATURES_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3isp_preview_restore_context(%struct.isp_device* %0) #0 {
  %2 = alloca %struct.isp_device*, align 8
  %3 = alloca %struct.isp_prev_device*, align 8
  %4 = alloca i32, align 4
  store %struct.isp_device* %0, %struct.isp_device** %2, align 8
  %5 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %6 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %5, i32 0, i32 0
  store %struct.isp_prev_device* %6, %struct.isp_prev_device** %3, align 8
  %7 = load i32, i32* @OMAP3ISP_PREV_FEATURES_END, align 4
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %4, align 4
  %9 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %10 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %12, %13
  %15 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %16 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %14, i32* %20, align 4
  %21 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %22 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %25, %26
  %28 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %29 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %27, i32* %33, align 4
  %34 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %37 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @preview_setup_hw(%struct.isp_prev_device* %34, i32 %35, i32 %39)
  %41 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %42 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %48 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  ret void
}

declare dso_local i32 @preview_setup_hw(%struct.isp_prev_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
