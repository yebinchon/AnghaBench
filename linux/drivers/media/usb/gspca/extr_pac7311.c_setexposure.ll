; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac7311.c_setexposure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac7311.c_setexposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @setexposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setexposure(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %6 = call i32 @reg_w(%struct.gspca_dev* %5, i32 255, i32 4)
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @reg_w(%struct.gspca_dev* %7, i32 2, i32 %8)
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %11 = call i32 @reg_w(%struct.gspca_dev* %10, i32 17, i32 1)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = call i32 @reg_w(%struct.gspca_dev* %12, i32 255, i32 1)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 640
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = call i32 @reg_w(%struct.gspca_dev* %23, i32 8, i32 9)
  br label %28

25:                                               ; preds = %19, %2
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %27 = call i32 @reg_w(%struct.gspca_dev* %26, i32 8, i32 8)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 640
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %39 = call i32 @reg_w(%struct.gspca_dev* %38, i32 128, i32 1)
  br label %43

40:                                               ; preds = %34, %28
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %42 = call i32 @reg_w(%struct.gspca_dev* %41, i32 128, i32 28)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %45 = call i32 @reg_w(%struct.gspca_dev* %44, i32 17, i32 1)
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
