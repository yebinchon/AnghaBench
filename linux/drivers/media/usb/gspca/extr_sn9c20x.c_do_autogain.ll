; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_do_autogain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_do_autogain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@MIN_AVG_LUM = common dso_local global i64 0, align 8
@MAX_AVG_LUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i64)* @do_autogain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_autogain(%struct.gspca_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i64, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %5, align 8
  %9 = load %struct.sd*, %struct.sd** %5, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = call i64 @v4l2_ctrl_g_ctrl(%struct.TYPE_3__* %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @MIN_AVG_LUM, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.sd*, %struct.sd** %5, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %17, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.sd*, %struct.sd** %5, align 8
  %26 = getelementptr inbounds %struct.sd, %struct.sd* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = add nsw i64 %28, 1
  %30 = call i32 @v4l2_ctrl_s_ctrl(%struct.TYPE_3__* %27, i64 %29)
  br label %31

31:                                               ; preds = %24, %16, %2
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @MAX_AVG_LUM, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.sd*, %struct.sd** %5, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %36, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load %struct.sd*, %struct.sd** %5, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub nsw i64 %47, 1
  %49 = call i32 @v4l2_ctrl_s_ctrl(%struct.TYPE_3__* %46, i64 %48)
  br label %50

50:                                               ; preds = %43, %35, %31
  ret void
}

declare dso_local i64 @v4l2_ctrl_g_ctrl(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(%struct.TYPE_3__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
