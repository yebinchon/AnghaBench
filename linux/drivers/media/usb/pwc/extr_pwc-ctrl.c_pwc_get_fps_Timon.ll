; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-ctrl.c_pwc_get_fps_Timon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-ctrl.c_pwc_get_fps_Timon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.pwc_device = type { i32 }

@PWC_FPS_MAX_TIMON = common dso_local global i32 0, align 4
@Timon_table = common dso_local global %struct.TYPE_2__*** null, align 8
@Timon_fps_vector = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*, i32, i32)* @pwc_get_fps_Timon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_get_fps_Timon(%struct.pwc_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwc_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %39, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @PWC_FPS_MAX_TIMON, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load %struct.TYPE_2__***, %struct.TYPE_2__**** @Timon_table, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %14, i64 %16
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %18, i64 %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %13
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %6, align 4
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32*, i32** @Timon_fps_vector, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %4, align 4
  br label %43

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %13
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %9

42:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
