; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_pb0100.c_pb0100_set_autogain_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_pb0100.c_pb0100_set_autogain_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sd = type { i32 }

@PB_R21 = common dso_local global i32 0, align 4
@PB_R22 = common dso_local global i32 0, align 4
@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Set autogain target to %d, status: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @pb0100_set_autogain_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pb0100_set_autogain_target(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %9, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %17 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %15, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sdiv i32 %21, 64
  %23 = load i32, i32* %6, align 4
  %24 = sdiv i32 %23, 4096
  %25 = add nsw i32 %22, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %26, %27
  %29 = ashr i32 %28, 8
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.sd*, %struct.sd** %9, align 8
  %34 = load i32, i32* @PB_R21, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @stv06xx_write_sensor(%struct.sd* %33, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %2
  %40 = load %struct.sd*, %struct.sd** %9, align 8
  %41 = load i32, i32* @PB_R22, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @stv06xx_write_sensor(%struct.sd* %40, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %39, %2
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %46 = load i32, i32* @D_CONF, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @gspca_dbg(%struct.gspca_dev* %45, i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @stv06xx_write_sensor(%struct.sd*, i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
