; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_setsharpness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_setsharpness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sd = type { i64 }

@BRIDGE_TP6800 = common dso_local global i64 0, align 8
@TP6800_R78_FORMAT = common dso_local global i32 0, align 4
@TP6800_R5D_DEMOSAIC_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @setsharpness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setsharpness(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %5, align 8
  %8 = load %struct.sd*, %struct.sd** %5, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BRIDGE_TP6800, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %17 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 640
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = load i32, i32* @TP6800_R78_FORMAT, align 4
  %24 = call i32 @reg_w(%struct.gspca_dev* %22, i32 %23, i32 0)
  br label %28

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = load i32, i32* @TP6800_R5D_DEMOSAIC_CFG, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @reg_w(%struct.gspca_dev* %29, i32 %30, i32 %31)
  br label %40

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = shl i32 %34, 5
  %36 = or i32 %35, 8
  store i32 %36, i32* %4, align 4
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @reg_w(%struct.gspca_dev* %37, i32 89, i32 %38)
  br label %40

40:                                               ; preds = %33, %28
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
