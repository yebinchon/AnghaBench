; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_isi_camera_set_bus_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_isi_camera_set_bus_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_isi = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@ISI_CFG1_HSYNC_POL_ACTIVE_LOW = common dso_local global i32 0, align 4
@ISI_CFG1_VSYNC_POL_ACTIVE_LOW = common dso_local global i32 0, align 4
@ISI_CFG1_PIXCLK_POL_ACTIVE_FALLING = common dso_local global i32 0, align 4
@ISI_CFG1_EMB_SYNC = common dso_local global i32 0, align 4
@ISI_CFG1_FULL_MODE = common dso_local global i32 0, align 4
@ISI_CFG1_THMASK_BEATS_16 = common dso_local global i32 0, align 4
@ISI_CTRL = common dso_local global i32 0, align 4
@ISI_CTRL_DIS = common dso_local global i32 0, align 4
@ISI_CFG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_isi*)* @isi_camera_set_bus_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isi_camera_set_bus_param(%struct.atmel_isi* %0) #0 {
  %2 = alloca %struct.atmel_isi*, align 8
  %3 = alloca i32, align 4
  store %struct.atmel_isi* %0, %struct.atmel_isi** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %5 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @ISI_CFG1_HSYNC_POL_ACTIVE_LOW, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %15 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @ISI_CFG1_VSYNC_POL_ACTIVE_LOW, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %25 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @ISI_CFG1_PIXCLK_POL_ACTIVE_FALLING, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %35 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @ISI_CFG1_EMB_SYNC, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %45 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @ISI_CFG1_FULL_MODE, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i32, i32* @ISI_CFG1_THMASK_BEATS_16, align 4
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %58 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @pm_runtime_get_sync(i32 %59)
  %61 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %62 = load i32, i32* @ISI_CTRL, align 4
  %63 = load i32, i32* @ISI_CTRL_DIS, align 4
  %64 = call i32 @isi_writel(%struct.atmel_isi* %61, i32 %62, i32 %63)
  %65 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %66 = load i32, i32* @ISI_CFG1, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @isi_writel(%struct.atmel_isi* %65, i32 %66, i32 %67)
  %69 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %70 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @pm_runtime_put(i32 %71)
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @isi_writel(%struct.atmel_isi*, i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
