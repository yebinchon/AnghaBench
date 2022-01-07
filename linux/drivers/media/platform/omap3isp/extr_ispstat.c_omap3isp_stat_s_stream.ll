; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_omap3isp_stat_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_omap3isp_stat_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ispstat = type { %struct.TYPE_4__, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.ispstat*, i32)* }

@.str = private unnamed_addr constant [30 x i8] c"%s: module is being disabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap3isp_stat_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ispstat*, align 8
  %6 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.ispstat* @v4l2_get_subdevdata(%struct.v4l2_subdev* %7)
  store %struct.ispstat* %8, %struct.ispstat** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.ispstat*, %struct.ispstat** %5, align 8
  %13 = call i32 @isp_stat_try_enable(%struct.ispstat* %12)
  br label %53

14:                                               ; preds = %2
  %15 = load %struct.ispstat*, %struct.ispstat** %5, align 8
  %16 = call i32 @omap3isp_stat_enable(%struct.ispstat* %15, i32 0)
  %17 = load %struct.ispstat*, %struct.ispstat** %5, align 8
  %18 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.ispstat*, %struct.ispstat** %5, align 8
  %24 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32 (%struct.ispstat*, i32)*, i32 (%struct.ispstat*, i32)** %26, align 8
  %28 = load %struct.ispstat*, %struct.ispstat** %5, align 8
  %29 = call i32 %27(%struct.ispstat* %28, i32 0)
  %30 = load %struct.ispstat*, %struct.ispstat** %5, align 8
  %31 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.ispstat*, %struct.ispstat** %5, align 8
  %37 = call i32 @omap3isp_stat_pcr_busy(%struct.ispstat* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %14
  %40 = load %struct.ispstat*, %struct.ispstat** %5, align 8
  %41 = call i32 @omap3isp_stat_isr(%struct.ispstat* %40)
  br label %42

42:                                               ; preds = %39, %14
  %43 = load %struct.ispstat*, %struct.ispstat** %5, align 8
  %44 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ispstat*, %struct.ispstat** %5, align 8
  %49 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %42, %11
  ret i32 0
}

declare dso_local %struct.ispstat* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @isp_stat_try_enable(%struct.ispstat*) #1

declare dso_local i32 @omap3isp_stat_enable(%struct.ispstat*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @omap3isp_stat_pcr_busy(%struct.ispstat*) #1

declare dso_local i32 @omap3isp_stat_isr(%struct.ispstat*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
