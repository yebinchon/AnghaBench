; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_zc3xx.c_setsharpness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_zc3xx.c_setsharpness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.gspca_dev = type { i32 }

@setsharpness.sharpness_tb = internal constant [4 x [2 x %struct.TYPE_3__]] [[2 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 2, i32 3 }, %struct.TYPE_3__ zeroinitializer], [2 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 4, i32 7 }, %struct.TYPE_3__ zeroinitializer], [2 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 8, i32 15 }, %struct.TYPE_3__ zeroinitializer], [2 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 16, i32 30 }, %struct.TYPE_3__ zeroinitializer]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i64)* @setsharpness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setsharpness(%struct.gspca_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = getelementptr inbounds [4 x [2 x %struct.TYPE_3__]], [4 x [2 x %struct.TYPE_3__]]* @setsharpness.sharpness_tb, i64 0, i64 %6
  %8 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %9 = bitcast %struct.TYPE_3__* %8 to i64*
  %10 = load i64, i64* %9, align 16
  %11 = call i32 @reg_w(%struct.gspca_dev* %5, i64 %10, i32 454)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = call i32 @reg_r(%struct.gspca_dev* %12, i32 456)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = call i32 @reg_r(%struct.gspca_dev* %14, i32 457)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %17 = call i32 @reg_r(%struct.gspca_dev* %16, i32 458)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds [4 x [2 x %struct.TYPE_3__]], [4 x [2 x %struct.TYPE_3__]]* @setsharpness.sharpness_tb, i64 0, i64 %19
  %21 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %20, i64 0, i64 1
  %22 = bitcast %struct.TYPE_3__* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @reg_w(%struct.gspca_dev* %18, i64 %23, i32 459)
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i64, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
