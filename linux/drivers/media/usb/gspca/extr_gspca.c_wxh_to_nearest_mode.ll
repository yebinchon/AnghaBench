; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_wxh_to_nearest_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_wxh_to_nearest_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32, i32, i64)* @wxh_to_nearest_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wxh_to_nearest_mode(%struct.gspca_dev* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gspca_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  br label %15

15:                                               ; preds = %57, %4
  %16 = load i32, i32* %10, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %10, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %20, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %19
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %34 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %32, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %31
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %46 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %44, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %95

57:                                               ; preds = %43, %31, %19
  br label %15

58:                                               ; preds = %15
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %60 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %92, %58
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %10, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %93

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %70 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sge i32 %68, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %67
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %82 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %80, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %93

92:                                               ; preds = %79, %67
  br label %63

93:                                               ; preds = %91, %63
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %55
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
