; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28xx_dvb_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28xx_dvb_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, %struct.em28xx_dvb*, i64, %struct.TYPE_5__*, %struct.TYPE_4__, i64 }
%struct.em28xx_dvb = type { i32, i32, i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Closing DVB extension\0A\00", align 1
@EM28XX_DIGITAL_MODE = common dso_local global i32 0, align 4
@DVB_FE_DEVICE_REMOVED = common dso_local global i8* null, align 8
@em28xx_free_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_dvb_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_dvb_fini(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca %struct.em28xx_dvb*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %5 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %6 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %107

10:                                               ; preds = %1
  %11 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %12 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %107

17:                                               ; preds = %10
  %18 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %19 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %18, i32 0, i32 1
  %20 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %19, align 8
  %21 = icmp ne %struct.em28xx_dvb* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %107

23:                                               ; preds = %17
  %24 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %25 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i32 @dev_info(i32* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %30 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %29, i32 0, i32 1
  %31 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %30, align 8
  store %struct.em28xx_dvb* %31, %struct.em28xx_dvb** %4, align 8
  %32 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %33 = load i32, i32* @EM28XX_DIGITAL_MODE, align 4
  %34 = call i32 @em28xx_uninit_usb_xfer(%struct.em28xx* %32, i32 %33)
  %35 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %36 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %84

39:                                               ; preds = %23
  %40 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %41 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %40, i32 0, i32 3
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %42, i64 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = icmp ne %struct.TYPE_6__* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %39
  %47 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %48 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %49, i64 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = call i32 @prevent_sleep(i32* %52)
  %54 = load i8*, i8** @DVB_FE_DEVICE_REMOVED, align 8
  %55 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %56 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %55, i32 0, i32 3
  %57 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %57, i64 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i8* %54, i8** %60, align 8
  br label %61

61:                                               ; preds = %46, %39
  %62 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %63 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %62, i32 0, i32 3
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %64, i64 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = icmp ne %struct.TYPE_6__* %66, null
  br i1 %67, label %68, label %83

68:                                               ; preds = %61
  %69 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %70 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %69, i32 0, i32 3
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %71, i64 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = call i32 @prevent_sleep(i32* %74)
  %76 = load i8*, i8** @DVB_FE_DEVICE_REMOVED, align 8
  %77 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %78 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %77, i32 0, i32 3
  %79 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %79, i64 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i8* %76, i8** %82, align 8
  br label %83

83:                                               ; preds = %68, %61
  br label %84

84:                                               ; preds = %83, %23
  %85 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %86 = call i32 @em28xx_unregister_dvb(%struct.em28xx_dvb* %85)
  %87 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %88 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @dvb_module_release(i32 %89)
  %91 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %92 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dvb_module_release(i32 %93)
  %95 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %96 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dvb_module_release(i32 %97)
  %99 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %100 = call i32 @kfree(%struct.em28xx_dvb* %99)
  %101 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %102 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %101, i32 0, i32 1
  store %struct.em28xx_dvb* null, %struct.em28xx_dvb** %102, align 8
  %103 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %104 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %103, i32 0, i32 0
  %105 = load i32, i32* @em28xx_free_device, align 4
  %106 = call i32 @kref_put(i32* %104, i32 %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %84, %22, %16, %9
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @em28xx_uninit_usb_xfer(%struct.em28xx*, i32) #1

declare dso_local i32 @prevent_sleep(i32*) #1

declare dso_local i32 @em28xx_unregister_dvb(%struct.em28xx_dvb*) #1

declare dso_local i32 @dvb_module_release(i32) #1

declare dso_local i32 @kfree(%struct.em28xx_dvb*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
