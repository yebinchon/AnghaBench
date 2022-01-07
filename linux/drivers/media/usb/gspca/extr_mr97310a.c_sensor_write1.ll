; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_mr97310a.c_sensor_write1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_mr97310a.c_sensor_write1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64, i64 }

@CAM_TYPE_CIF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32, i32)* @sensor_write1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sensor_write1(%struct.gspca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %13 = bitcast %struct.gspca_dev* %12 to %struct.sd*
  store %struct.sd* %13, %struct.sd** %8, align 8
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.sd*, %struct.sd** %8, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CAM_TYPE_CIF, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @sensor_write_reg(%struct.gspca_dev* %21, i32 %22, i32 1, i32* %9, i32 1)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.sd*, %struct.sd** %8, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 19, i32 17
  store i32 %29, i32* %10, align 4
  br label %34

30:                                               ; preds = %3
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @sensor_write_reg(%struct.gspca_dev* %31, i32 %32, i32 0, i32* %9, i32 1)
  store i32 %33, i32* %11, align 4
  store i32 17, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %20
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %4, align 4
  br label %48

39:                                               ; preds = %34
  store i32 1, i32* %9, align 4
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @sensor_write_reg(%struct.gspca_dev* %40, i32 %41, i32 0, i32* %9, i32 1)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %45, %37
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @sensor_write_reg(%struct.gspca_dev*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
