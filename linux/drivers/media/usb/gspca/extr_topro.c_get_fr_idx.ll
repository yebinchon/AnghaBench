; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_get_fr_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_get_fr_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sd = type { i64, i64 }

@BRIDGE_TP6800 = common dso_local global i64 0, align 8
@rates = common dso_local global i64* null, align 8
@rates_6810 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @get_fr_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fr_idx(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BRIDGE_TP6800, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i64*, i64** @rates, align 8
  %16 = call i32 @ARRAY_SIZE(i64* %15)
  %17 = sub nsw i32 %16, 1
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load %struct.sd*, %struct.sd** %3, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** @rates, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %22, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %34

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %13

34:                                               ; preds = %29, %13
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 6, %35
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 6
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 640
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 5, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %39, %34
  br label %84

47:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %66, %47
  %49 = load i32, i32* %4, align 4
  %50 = load i64*, i64** @rates_6810, align 8
  %51 = call i32 @ARRAY_SIZE(i64* %50)
  %52 = sub nsw i32 %51, 1
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = load %struct.sd*, %struct.sd** %3, align 8
  %56 = getelementptr inbounds %struct.sd, %struct.sd* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** @rates_6810, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %57, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %69

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %48

69:                                               ; preds = %64, %48
  %70 = load i32, i32* %4, align 4
  %71 = sub nsw i32 7, %70
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %72, 7
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %76 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 640
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 6, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %74, %69
  %82 = load i32, i32* %4, align 4
  %83 = or i32 %82, 128
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %81, %46
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
