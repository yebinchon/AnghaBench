; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_cmp_v4l2_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_cmp_v4l2_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_format = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_format*, %struct.v4l2_format*)* @cmp_v4l2_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_v4l2_format(%struct.v4l2_format* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca %struct.v4l2_format*, align 8
  %4 = alloca %struct.v4l2_format*, align 8
  store %struct.v4l2_format* %0, %struct.v4l2_format** %3, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %4, align 8
  %5 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %6 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %108

12:                                               ; preds = %2
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %17, %22
  br i1 %23, label %24, label %108

24:                                               ; preds = %12
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %31 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %29, %34
  br i1 %35, label %36, label %108

36:                                               ; preds = %24
  %37 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %38 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %43 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %41, %46
  br i1 %47, label %48, label %108

48:                                               ; preds = %36
  %49 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %50 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %55 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %53, %58
  br i1 %59, label %60, label %108

60:                                               ; preds = %48
  %61 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %62 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %67 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %65, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %60
  %73 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %74 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %79 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %77, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %72
  %85 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %86 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %91 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %89, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %84
  %97 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %98 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 7
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %103 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %101, %106
  br label %108

108:                                              ; preds = %96, %84, %72, %60, %48, %36, %24, %12, %2
  %109 = phi i1 [ false, %84 ], [ false, %72 ], [ false, %60 ], [ false, %48 ], [ false, %36 ], [ false, %24 ], [ false, %12 ], [ false, %2 ], [ %107, %96 ]
  %110 = zext i1 %109 to i32
  ret i32 %110
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
