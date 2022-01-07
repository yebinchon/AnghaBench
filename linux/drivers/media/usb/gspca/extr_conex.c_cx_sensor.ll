; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_conex.c_cx_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_conex.c_cx_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@cxsensor = common dso_local global i32* null, align 8
@reg20 = common dso_local global i32* null, align 8
@reg28 = common dso_local global i32* null, align 8
@reg10 = common dso_local global i32* null, align 8
@reg71a = common dso_local global i32* null, align 8
@reg71b = common dso_local global i32* null, align 8
@reg71c = common dso_local global i32* null, align 8
@reg71d = common dso_local global i32* null, align 8
@reg7b = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @cx_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx_sensor(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32*, i32** @cxsensor, align 8
  store i32* %6, i32** %5, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = load i32*, i32** @reg20, align 8
  %9 = call i32 @reg_w(%struct.gspca_dev* %7, i32 32, i32* %8, i32 8)
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %11 = load i32*, i32** @reg28, align 8
  %12 = call i32 @reg_w(%struct.gspca_dev* %10, i32 40, i32* %11, i32 8)
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = load i32*, i32** @reg10, align 8
  %15 = call i32 @reg_w(%struct.gspca_dev* %13, i32 16, i32* %14, i32 2)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = call i32 @reg_w_val(%struct.gspca_dev* %16, i32 146, i32 3)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %38 [
    i32 0, label %30
    i32 1, label %34
    i32 3, label %42
  ]

30:                                               ; preds = %1
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %32 = load i32*, i32** @reg71a, align 8
  %33 = call i32 @reg_w(%struct.gspca_dev* %31, i32 113, i32* %32, i32 4)
  br label %46

34:                                               ; preds = %1
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = load i32*, i32** @reg71b, align 8
  %37 = call i32 @reg_w(%struct.gspca_dev* %35, i32 113, i32* %36, i32 4)
  br label %46

38:                                               ; preds = %1
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = load i32*, i32** @reg71c, align 8
  %41 = call i32 @reg_w(%struct.gspca_dev* %39, i32 113, i32* %40, i32 4)
  br label %46

42:                                               ; preds = %1
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = load i32*, i32** @reg71d, align 8
  %45 = call i32 @reg_w(%struct.gspca_dev* %43, i32 113, i32* %44, i32 4)
  br label %46

46:                                               ; preds = %42, %38, %34, %30
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = load i32*, i32** @reg7b, align 8
  %49 = call i32 @reg_w(%struct.gspca_dev* %47, i32 123, i32* %48, i32 6)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %51 = call i32 @reg_w_val(%struct.gspca_dev* %50, i32 248, i32 0)
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %53 = load i32*, i32** @reg10, align 8
  %54 = call i32 @reg_w(%struct.gspca_dev* %52, i32 16, i32* %53, i32 2)
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = call i32 @reg_w_val(%struct.gspca_dev* %55, i32 152, i32 65)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %90, %46
  %58 = load i32, i32* %3, align 4
  %59 = icmp slt i32 %58, 11
  br i1 %59, label %60, label %93

60:                                               ; preds = %57
  %61 = load i32, i32* %3, align 4
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %3, align 4
  %65 = icmp eq i32 %64, 5
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %3, align 4
  %68 = icmp eq i32 %67, 8
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %63, %60
  store i32 8, i32* %4, align 4
  br label %71

70:                                               ; preds = %66
  store i32 4, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %69
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @reg_w(%struct.gspca_dev* %72, i32 229, i32* %73, i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 4
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %80 = call i32 @reg_r(%struct.gspca_dev* %79, i32 232, i32 1)
  br label %85

81:                                               ; preds = %71
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @reg_r(%struct.gspca_dev* %82, i32 232, i32 %83)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i32, i32* %4, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %5, align 8
  br label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %57

93:                                               ; preds = %57
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %95 = call i32 @reg_r(%struct.gspca_dev* %94, i32 231, i32 8)
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #1

declare dso_local i32 @reg_w_val(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
