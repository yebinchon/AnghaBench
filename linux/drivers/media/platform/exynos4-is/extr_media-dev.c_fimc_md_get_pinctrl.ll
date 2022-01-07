; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_get_pinctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_get_pinctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_md = type { %struct.fimc_pinctrl, %struct.TYPE_2__* }
%struct.fimc_pinctrl = type { i8*, i8*, i8* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@PINCTRL_STATE_DEFAULT = common dso_local global i32 0, align 4
@PINCTRL_STATE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_md*)* @fimc_md_get_pinctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_md_get_pinctrl(%struct.fimc_md* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_md*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fimc_pinctrl*, align 8
  store %struct.fimc_md* %0, %struct.fimc_md** %3, align 8
  %6 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %7 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %11 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %10, i32 0, i32 0
  store %struct.fimc_pinctrl* %11, %struct.fimc_pinctrl** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i8* @devm_pinctrl_get(%struct.device* %12)
  %14 = load %struct.fimc_pinctrl*, %struct.fimc_pinctrl** %5, align 8
  %15 = getelementptr inbounds %struct.fimc_pinctrl, %struct.fimc_pinctrl* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.fimc_pinctrl*, %struct.fimc_pinctrl** %5, align 8
  %17 = getelementptr inbounds %struct.fimc_pinctrl, %struct.fimc_pinctrl* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @IS_ERR(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.fimc_pinctrl*, %struct.fimc_pinctrl** %5, align 8
  %23 = getelementptr inbounds %struct.fimc_pinctrl, %struct.fimc_pinctrl* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @PTR_ERR(i8* %24)
  store i32 %25, i32* %2, align 4
  br label %52

26:                                               ; preds = %1
  %27 = load %struct.fimc_pinctrl*, %struct.fimc_pinctrl** %5, align 8
  %28 = getelementptr inbounds %struct.fimc_pinctrl, %struct.fimc_pinctrl* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @PINCTRL_STATE_DEFAULT, align 4
  %31 = call i8* @pinctrl_lookup_state(i8* %29, i32 %30)
  %32 = load %struct.fimc_pinctrl*, %struct.fimc_pinctrl** %5, align 8
  %33 = getelementptr inbounds %struct.fimc_pinctrl, %struct.fimc_pinctrl* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.fimc_pinctrl*, %struct.fimc_pinctrl** %5, align 8
  %35 = getelementptr inbounds %struct.fimc_pinctrl, %struct.fimc_pinctrl* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @IS_ERR(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %26
  %40 = load %struct.fimc_pinctrl*, %struct.fimc_pinctrl** %5, align 8
  %41 = getelementptr inbounds %struct.fimc_pinctrl, %struct.fimc_pinctrl* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @PTR_ERR(i8* %42)
  store i32 %43, i32* %2, align 4
  br label %52

44:                                               ; preds = %26
  %45 = load %struct.fimc_pinctrl*, %struct.fimc_pinctrl** %5, align 8
  %46 = getelementptr inbounds %struct.fimc_pinctrl, %struct.fimc_pinctrl* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* @PINCTRL_STATE_IDLE, align 4
  %49 = call i8* @pinctrl_lookup_state(i8* %47, i32 %48)
  %50 = load %struct.fimc_pinctrl*, %struct.fimc_pinctrl** %5, align 8
  %51 = getelementptr inbounds %struct.fimc_pinctrl, %struct.fimc_pinctrl* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %44, %39, %21
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i8* @devm_pinctrl_get(%struct.device*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @pinctrl_lookup_state(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
