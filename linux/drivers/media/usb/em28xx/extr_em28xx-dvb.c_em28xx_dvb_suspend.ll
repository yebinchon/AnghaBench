; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28xx_dvb_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28xx_dvb_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { %struct.TYPE_4__*, %struct.em28xx_dvb*, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.em28xx_dvb = type { i64* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Suspending DVB extension\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fe0 suspend %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fe1 suspend %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_dvb_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_dvb_suspend(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.em28xx_dvb*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %7 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

11:                                               ; preds = %1
  %12 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %73

18:                                               ; preds = %11
  %19 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %20 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 (i32*, i8*, ...) @dev_info(i32* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %25 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %24, i32 0, i32 1
  %26 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %25, align 8
  %27 = icmp ne %struct.em28xx_dvb* %26, null
  br i1 %27, label %28, label %72

28:                                               ; preds = %18
  %29 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %30 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %29, i32 0, i32 1
  %31 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %30, align 8
  store %struct.em28xx_dvb* %31, %struct.em28xx_dvb** %5, align 8
  %32 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %5, align 8
  %33 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %28
  %39 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %5, align 8
  %40 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @dvb_frontend_suspend(i64 %43)
  store i32 %44, i32* %4, align 4
  %45 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %46 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i32*, i8*, ...) @dev_info(i32* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %38, %28
  %52 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %5, align 8
  %53 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %51
  %59 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %5, align 8
  %60 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @dvb_frontend_suspend(i64 %63)
  %65 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %66 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %4, align 4
  %70 = call i32 (i32*, i8*, ...) @dev_info(i32* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %58, %51
  br label %72

72:                                               ; preds = %71, %18
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %17, %10
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @dvb_frontend_suspend(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
