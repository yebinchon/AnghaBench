; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sunplus.c_spca504A_acknowledged_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sunplus.c_spca504A_acknowledged_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i64* }

@D_FRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Status 0x%02x Need 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"status 0x%04x after wait %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i64, i64, i64, i64, i64)* @spca504A_acknowledged_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spca504A_acknowledged_command(%struct.gspca_dev* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.gspca_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @reg_w_riv(%struct.gspca_dev* %14, i64 %15, i64 %16, i64 %17)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %20 = call i32 @reg_r(%struct.gspca_dev* %19, i32 1, i32 1, i32 1)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  br label %64

26:                                               ; preds = %6
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %28 = load i32, i32* @D_FRAM, align 4
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %30 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @gspca_dbg(%struct.gspca_dev* %27, i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %34)
  %36 = load i64, i64* %12, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %26
  br label %64

39:                                               ; preds = %26
  store i64 200, i64* %12, align 8
  br label %40

40:                                               ; preds = %63, %39
  %41 = load i64, i64* %12, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %12, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = call i32 @msleep(i32 10)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %47 = call i32 @reg_r(%struct.gspca_dev* %46, i32 1, i32 1, i32 1)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %49 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %13, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %44
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %58 = load i32, i32* @D_FRAM, align 4
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %12, align 8
  %61 = sub nsw i64 200, %60
  %62 = call i32 @gspca_dbg(%struct.gspca_dev* %57, i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %59, i64 %61)
  br label %64

63:                                               ; preds = %44
  br label %40

64:                                               ; preds = %25, %38, %56, %40
  ret void
}

declare dso_local i32 @reg_w_riv(%struct.gspca_dev*, i64, i64, i64) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i64, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
