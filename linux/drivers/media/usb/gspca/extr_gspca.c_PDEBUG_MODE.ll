; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_PDEBUG_MODE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_PDEBUG_MODE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s %c%c%c%c %dx%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s 0x%08x %dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i8*, i32, i32, i32)* @PDEBUG_MODE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PDEBUG_MODE(%struct.gspca_dev* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.gspca_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %10, align 4
  %14 = ashr i32 %13, 24
  %15 = icmp sge i32 %14, 48
  br i1 %15, label %16, label %37

16:                                               ; preds = %6
  %17 = load i32, i32* %10, align 4
  %18 = ashr i32 %17, 24
  %19 = icmp sle i32 %18, 122
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = and i32 %24, 255
  %26 = load i32, i32* %10, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 255
  %29 = load i32, i32* %10, align 4
  %30 = ashr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = load i32, i32* %10, align 4
  %33 = ashr i32 %32, 24
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 (%struct.gspca_dev*, i32, i8*, i8*, i32, i32, i32, ...) @gspca_dbg(%struct.gspca_dev* %21, i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %25, i32 %28, i32 %31, i32 %33, i32 %34, i32 %35)
  br label %45

37:                                               ; preds = %16, %6
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 (%struct.gspca_dev*, i32, i8*, i8*, i32, i32, i32, ...) @gspca_dbg(%struct.gspca_dev* %38, i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %37, %20
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
