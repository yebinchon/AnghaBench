; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_mr97310a.c_sensor_write_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_mr97310a.c_sensor_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sensor_w_data = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.sensor_w_data*, i32)* @sensor_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sensor_write_regs(%struct.gspca_dev* %0, %struct.sensor_w_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca %struct.sensor_w_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store %struct.sensor_w_data* %1, %struct.sensor_w_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %46, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %10
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %16 = load %struct.sensor_w_data*, %struct.sensor_w_data** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.sensor_w_data, %struct.sensor_w_data* %16, i64 %18
  %20 = getelementptr inbounds %struct.sensor_w_data, %struct.sensor_w_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sensor_w_data*, %struct.sensor_w_data** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sensor_w_data, %struct.sensor_w_data* %22, i64 %24
  %26 = getelementptr inbounds %struct.sensor_w_data, %struct.sensor_w_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sensor_w_data*, %struct.sensor_w_data** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.sensor_w_data, %struct.sensor_w_data* %28, i64 %30
  %32 = getelementptr inbounds %struct.sensor_w_data, %struct.sensor_w_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sensor_w_data*, %struct.sensor_w_data** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.sensor_w_data, %struct.sensor_w_data* %34, i64 %36
  %38 = getelementptr inbounds %struct.sensor_w_data, %struct.sensor_w_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sensor_write_reg(%struct.gspca_dev* %15, i32 %21, i32 %27, i32 %33, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %14
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %50

45:                                               ; preds = %14
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %10

49:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %43
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @sensor_write_reg(%struct.gspca_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
