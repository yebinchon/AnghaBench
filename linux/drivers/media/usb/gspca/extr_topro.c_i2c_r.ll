; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_i2c_r.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_i2c_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32* }
%struct.sd = type { i64 }

@TP6800_R19_SIF_ADDR_S2 = common dso_local global i32 0, align 4
@TP6800_R11_SIF_CONTROL = common dso_local global i32 0, align 4
@TP6800_R14_SIF_RX_DATA = common dso_local global i32 0, align 4
@BRIDGE_TP6800 = common dso_local global i64 0, align 8
@TP6800_R1B_SIF_RX_DATA2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32, i32)* @i2c_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_r(%struct.gspca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sd*, align 8
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %8, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %13 = load i32, i32* @TP6800_R19_SIF_ADDR_S2, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @reg_w(%struct.gspca_dev* %12, i32 %13, i32 %14)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %17 = load i32, i32* @TP6800_R11_SIF_CONTROL, align 4
  %18 = call i32 @reg_w(%struct.gspca_dev* %16, i32 %17, i32 2)
  %19 = call i32 @msleep(i32 5)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %21 = load i32, i32* @TP6800_R14_SIF_RX_DATA, align 4
  %22 = call i32 @reg_r(%struct.gspca_dev* %20, i32 %21)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %24 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.sd*, %struct.sd** %8, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BRIDGE_TP6800, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %66

35:                                               ; preds = %3
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %40 = load i32, i32* @TP6800_R1B_SIF_RX_DATA2, align 4
  %41 = call i32 @reg_r(%struct.gspca_dev* %39, i32 %40)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %43 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %38, %35
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %52 = load i32, i32* @TP6800_R11_SIF_CONTROL, align 4
  %53 = call i32 @reg_r(%struct.gspca_dev* %51, i32 %52)
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %55 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %66

62:                                               ; preds = %50
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %64 = load i32, i32* @TP6800_R11_SIF_CONTROL, align 4
  %65 = call i32 @reg_w(%struct.gspca_dev* %63, i32 %64, i32 0)
  store i32 -1, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %60, %33
  %67 = load i32, i32* %4, align 4
  ret i32 %67
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
