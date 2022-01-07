; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_sethue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_sethue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64 }

@SENSOR_OV767x = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @sethue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sethue(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %5, align 8
  %10 = load %struct.sd*, %struct.sd** %5, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SENSOR_OV767x, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %48

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @fixp_sin16(i32 %17)
  %19 = mul nsw i32 %18, 128
  %20 = sdiv i32 %19, 32767
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @fixp_cos16(i32 %21)
  %23 = mul nsw i32 %22, 128
  %24 = sdiv i32 %23, 32767
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %16
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = call i32 @sccb_reg_read(%struct.gspca_dev* %29, i32 171)
  %31 = or i32 %30, 2
  %32 = call i32 @sccb_reg_write(%struct.gspca_dev* %28, i32 171, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %41

35:                                               ; preds = %16
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %38 = call i32 @sccb_reg_read(%struct.gspca_dev* %37, i32 171)
  %39 = and i32 %38, -3
  %40 = call i32 @sccb_reg_write(%struct.gspca_dev* %36, i32 171, i32 %39)
  br label %41

41:                                               ; preds = %35, %27
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @sccb_reg_write(%struct.gspca_dev* %42, i32 169, i32 %43)
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @sccb_reg_write(%struct.gspca_dev* %45, i32 170, i32 %46)
  br label %48

48:                                               ; preds = %41, %15
  ret void
}

declare dso_local i32 @fixp_sin16(i32) #1

declare dso_local i32 @fixp_cos16(i32) #1

declare dso_local i32 @sccb_reg_write(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @sccb_reg_read(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
