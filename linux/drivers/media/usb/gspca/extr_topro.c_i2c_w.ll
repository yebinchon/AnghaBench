; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_i2c_w.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_i2c_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64* }
%struct.sd = type { i64 }

@TP6800_R11_SIF_CONTROL = common dso_local global i32 0, align 4
@TP6800_R19_SIF_ADDR_S2 = common dso_local global i32 0, align 4
@TP6800_R13_SIF_TX_DATA = common dso_local global i32 0, align 4
@BRIDGE_TP6800 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32, i32)* @i2c_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_w(%struct.gspca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %8, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %12 = load i32, i32* @TP6800_R11_SIF_CONTROL, align 4
  %13 = call i32 @reg_w(%struct.gspca_dev* %11, i32 %12, i32 0)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %15 = load i32, i32* @TP6800_R19_SIF_ADDR_S2, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @reg_w(%struct.gspca_dev* %14, i32 %15, i32 %16)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %19 = load i32, i32* @TP6800_R13_SIF_TX_DATA, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @reg_w(%struct.gspca_dev* %18, i32 %19, i32 %20)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %23 = load i32, i32* @TP6800_R11_SIF_CONTROL, align 4
  %24 = call i32 @reg_w(%struct.gspca_dev* %22, i32 %23, i32 1)
  %25 = load %struct.sd*, %struct.sd** %8, align 8
  %26 = getelementptr inbounds %struct.sd, %struct.sd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BRIDGE_TP6800, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

31:                                               ; preds = %3
  %32 = call i32 @msleep(i32 5)
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %34 = load i32, i32* @TP6800_R11_SIF_CONTROL, align 4
  %35 = call i32 @reg_r(%struct.gspca_dev* %33, i32 %34)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %37 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %47

43:                                               ; preds = %31
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %45 = load i32, i32* @TP6800_R11_SIF_CONTROL, align 4
  %46 = call i32 @reg_w(%struct.gspca_dev* %44, i32 %45, i32 0)
  store i32 -1, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %42, %30
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
