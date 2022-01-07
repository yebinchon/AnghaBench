; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_setquality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_setquality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64 }

@TP6800_R7A_BLK_THRLD = common dso_local global i32 0, align 4
@TP6800_R79_QUALITY = common dso_local global i32 0, align 4
@BRIDGE_TP6810 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @setquality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setquality(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 16
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 15, %11
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = load i32, i32* @TP6800_R7A_BLK_THRLD, align 4
  %16 = call i32 @reg_w(%struct.gspca_dev* %14, i32 %15, i32 0)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %18 = load i32, i32* @TP6800_R79_QUALITY, align 4
  %19 = call i32 @reg_w(%struct.gspca_dev* %17, i32 %18, i32 4)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %21 = load i32, i32* @TP6800_R79_QUALITY, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @reg_w(%struct.gspca_dev* %20, i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 15
  br i1 %25, label %26, label %37

26:                                               ; preds = %13
  %27 = load %struct.sd*, %struct.sd** %5, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BRIDGE_TP6810, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = call i32 @msleep(i32 4)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %35 = load i32, i32* @TP6800_R7A_BLK_THRLD, align 4
  %36 = call i32 @reg_w(%struct.gspca_dev* %34, i32 %35, i32 25)
  br label %37

37:                                               ; preds = %32, %26, %13
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
