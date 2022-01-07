; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca508.c_ssi_w.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca508.c_ssi_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64* }

@.str = private unnamed_addr constant [17 x i8] c"ssi_w busy %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32, i32)* @ssi_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssi_w(%struct.gspca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 8
  %12 = call i32 @reg_write(%struct.gspca_dev* %9, i32 34818, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %76

16:                                               ; preds = %3
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 255
  %20 = call i32 @reg_write(%struct.gspca_dev* %17, i32 34817, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %76

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 65280
  %27 = icmp eq i32 %26, 4096
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 255
  %32 = call i32 @reg_write(%struct.gspca_dev* %29, i32 34821, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %76

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %37, 8
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %36, %24
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @reg_write(%struct.gspca_dev* %40, i32 34816, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %76

46:                                               ; preds = %39
  store i32 10, i32* %8, align 4
  br label %47

47:                                               ; preds = %73, %46
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %49 = call i32 @reg_read(%struct.gspca_dev* %48, i32 34819)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %75

53:                                               ; preds = %47
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %55 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %75

61:                                               ; preds = %53
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %8, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %68 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @gspca_err(%struct.gspca_dev* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %71)
  store i32 -1, i32* %7, align 4
  br label %75

73:                                               ; preds = %61
  %74 = call i32 @msleep(i32 8)
  br label %47

75:                                               ; preds = %65, %60, %52
  br label %76

76:                                               ; preds = %75, %45, %35, %23, %15
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @reg_write(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_read(%struct.gspca_dev*, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
