; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac7311.c_reg_w_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac7311.c_reg_w_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@USB_BUF_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Incorrect variable sequence\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32*, i32)* @reg_w_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_w_var(%struct.gspca_dev* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %11

11:                                               ; preds = %61, %4
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %6, align 8
  %14 = load i32, i32* %12, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %6, align 8
  %17 = load i32, i32* %15, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %25 [
    i32 129, label %19
    i32 128, label %20
  ]

19:                                               ; preds = %11
  br label %62

20:                                               ; preds = %11
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @reg_w_page(%struct.gspca_dev* %21, i32* %22, i32 %23)
  br label %61

25:                                               ; preds = %11
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @USB_BUF_SZ, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %31 = call i32 @gspca_err(%struct.gspca_dev* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %62

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @reg_w_buf(%struct.gspca_dev* %40, i32 %41, i32* %42, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %6, align 8
  br label %60

49:                                               ; preds = %36
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @reg_w_buf(%struct.gspca_dev* %50, i32 %51, i32* %52, i32 8)
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 8
  store i32* %55, i32** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 8
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %58, 8
  store i32 %59, i32* %10, align 4
  br label %33

60:                                               ; preds = %39, %33
  br label %61

61:                                               ; preds = %60, %20
  br label %11

62:                                               ; preds = %29, %19
  ret void
}

declare dso_local i32 @reg_w_page(%struct.gspca_dev*, i32*, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*) #1

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
