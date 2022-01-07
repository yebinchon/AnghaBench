; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_w996Xcf.c_w9968cf_set_crop_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_w996Xcf.c_w9968cf_set_crop_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@SEN_OV7620 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @w9968cf_set_crop_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w9968cf_set_crop_window(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %13 = load %struct.sd*, %struct.sd** %2, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 352, i32* %11, align 4
  store i32 288, i32* %12, align 4
  br label %19

18:                                               ; preds = %1
  store i32 640, i32* %11, align 4
  store i32 480, i32* %12, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load %struct.sd*, %struct.sd** %2, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SEN_OV7620, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.sd*, %struct.sd** %2, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 277, i32* %3, align 4
  store i32 37, i32* %4, align 4
  br label %34

33:                                               ; preds = %25
  store i32 105, i32* %3, align 4
  store i32 37, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %32
  br label %36

35:                                               ; preds = %19
  store i32 320, i32* %3, align 4
  store i32 35, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load %struct.sd*, %struct.sd** %2, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 10
  %43 = load i32, i32* %11, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load %struct.sd*, %struct.sd** %2, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = shl i32 %49, 10
  %51 = load i32, i32* %12, align 4
  %52 = sdiv i32 %50, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %36
  %57 = load i32, i32* %11, align 4
  br label %67

58:                                               ; preds = %36
  %59 = load %struct.sd*, %struct.sd** %2, align 8
  %60 = getelementptr inbounds %struct.sd, %struct.sd* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 10
  %65 = load i32, i32* %8, align 4
  %66 = sdiv i32 %64, %65
  br label %67

67:                                               ; preds = %58, %56
  %68 = phi i32 [ %57, %56 ], [ %66, %58 ]
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.sd*, %struct.sd** %2, align 8
  %74 = getelementptr inbounds %struct.sd, %struct.sd* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 %77, 10
  %79 = load i32, i32* %7, align 4
  %80 = sdiv i32 %78, %79
  br label %83

81:                                               ; preds = %67
  %82 = load i32, i32* %12, align 4
  br label %83

83:                                               ; preds = %81, %72
  %84 = phi i32 [ %80, %72 ], [ %82, %81 ]
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.sd*, %struct.sd** %2, align 8
  %87 = getelementptr inbounds %struct.sd, %struct.sd* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.sd*, %struct.sd** %2, align 8
  %90 = getelementptr inbounds %struct.sd, %struct.sd* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %9, align 4
  %93 = sub nsw i32 %91, %92
  %94 = sdiv i32 %93, 2
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %10, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sdiv i32 %97, 2
  store i32 %98, i32* %6, align 4
  %99 = load %struct.sd*, %struct.sd** %2, align 8
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %100, %101
  %103 = call i32 @reg_w(%struct.sd* %99, i32 16, i32 %102)
  %104 = load %struct.sd*, %struct.sd** %2, align 8
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %105, %106
  %108 = call i32 @reg_w(%struct.sd* %104, i32 17, i32 %107)
  %109 = load %struct.sd*, %struct.sd** %2, align 8
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %112, %113
  %115 = call i32 @reg_w(%struct.sd* %109, i32 18, i32 %114)
  %116 = load %struct.sd*, %struct.sd** %2, align 8
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %119, %120
  %122 = call i32 @reg_w(%struct.sd* %116, i32 19, i32 %121)
  ret void
}

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
