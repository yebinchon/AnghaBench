; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jl2005bcd.c_jl2005c_start_new_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jl2005bcd.c_jl2005c_start_new_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32* }

@jl2005c_start_new_frame.instruction = internal global [2 x i32] [i32 127, i32 1], align 4
@D_FRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"frame_brightness is 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @jl2005c_start_new_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jl2005c_start_new_frame(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = call i32 @jl2005c_write2(%struct.gspca_dev* %7, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @jl2005c_start_new_frame.instruction, i64 0, i64 0))
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %55

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %42, %13
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 20
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %45

23:                                               ; preds = %21
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %25 = call i32 @jl2005c_read_reg(%struct.gspca_dev* %24, i32 126)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %55

30:                                               ; preds = %23
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %32 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %37 = call i32 @jl2005c_read_reg(%struct.gspca_dev* %36, i32 125)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %55

42:                                               ; preds = %30
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %14

45:                                               ; preds = %21
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %47 = load i32, i32* @D_FRAM, align 4
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %49 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @gspca_dbg(%struct.gspca_dev* %46, i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %45, %40, %28, %11
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @jl2005c_write2(%struct.gspca_dev*, i32*) #1

declare dso_local i32 @jl2005c_read_reg(%struct.gspca_dev*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
