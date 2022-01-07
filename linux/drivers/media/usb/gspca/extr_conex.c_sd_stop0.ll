; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_conex.c_sd_stop0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_conex.c_sd_stop0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @sd_stop0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_stop0(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  store i32 50, i32* %3, align 4
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %42

9:                                                ; preds = %1
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %11 = call i32 @reg_w_val(%struct.gspca_dev* %10, i32 0, i32 0)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = call i32 @reg_r(%struct.gspca_dev* %12, i32 2, i32 1)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = call i32 @reg_w_val(%struct.gspca_dev* %14, i32 83, i32 0)
  br label %16

16:                                               ; preds = %30, %9
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %3, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = call i32 @reg_r(%struct.gspca_dev* %21, i32 83, i32 1)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %31

30:                                               ; preds = %20
  br label %16

31:                                               ; preds = %29, %16
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = call i32 @reg_w_val(%struct.gspca_dev* %32, i32 0, i32 0)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = call i32 @reg_r(%struct.gspca_dev* %34, i32 2, i32 1)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = call i32 @reg_w_val(%struct.gspca_dev* %36, i32 16, i32 0)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = call i32 @reg_r(%struct.gspca_dev* %38, i32 51, i32 1)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = call i32 @reg_w_val(%struct.gspca_dev* %40, i32 252, i32 224)
  br label %42

42:                                               ; preds = %31, %8
  ret void
}

declare dso_local i32 @reg_w_val(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
