; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_vv6410.c_vv6410_set_exposure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_vv6410.c_vv6410_set_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@VV6410_CIF_LINELENGTH = common dso_local global i32 0, align 4
@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Set coarse exposure to %d, fine exposure to %d\0A\00", align 1
@VV6410_FINEH = common dso_local global i32 0, align 4
@VV6410_FINEL = common dso_local global i32 0, align 4
@VV6410_COARSEH = common dso_local global i32 0, align 4
@VV6410_COARSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @vv6410_set_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vv6410_set_exposure(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = mul nsw i32 %11, %12
  %14 = ashr i32 %13, 14
  %15 = load i32, i32* %4, align 4
  %16 = sdiv i32 %15, 4
  %17 = add nsw i32 %14, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @VV6410_CIF_LINELENGTH, align 4
  %20 = srem i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @VV6410_CIF_LINELENGTH, align 4
  %23 = sdiv i32 %21, %22
  %24 = call i32 @min(i32 512, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = load i32, i32* @D_CONF, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @gspca_dbg(%struct.gspca_dev* %25, i32 %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.sd*, %struct.sd** %6, align 8
  %31 = load i32, i32* @VV6410_FINEH, align 4
  %32 = load i32, i32* %7, align 4
  %33 = lshr i32 %32, 8
  %34 = call i32 @stv06xx_write_sensor(%struct.sd* %30, i32 %31, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %62

38:                                               ; preds = %2
  %39 = load %struct.sd*, %struct.sd** %6, align 8
  %40 = load i32, i32* @VV6410_FINEL, align 4
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 255
  %43 = call i32 @stv06xx_write_sensor(%struct.sd* %39, i32 %40, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %62

47:                                               ; preds = %38
  %48 = load %struct.sd*, %struct.sd** %6, align 8
  %49 = load i32, i32* @VV6410_COARSEH, align 4
  %50 = load i32, i32* %8, align 4
  %51 = lshr i32 %50, 8
  %52 = call i32 @stv06xx_write_sensor(%struct.sd* %48, i32 %49, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %62

56:                                               ; preds = %47
  %57 = load %struct.sd*, %struct.sd** %6, align 8
  %58 = load i32, i32* @VV6410_COARSEL, align 4
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 255
  %61 = call i32 @stv06xx_write_sensor(%struct.sd* %57, i32 %58, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %56, %55, %46, %37
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32) #1

declare dso_local i32 @stv06xx_write_sensor(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
