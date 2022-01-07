; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-core.c_saa7164_histogram_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-core.c_saa7164_histogram_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7164_histogram = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7164_histogram*, i8*)* @saa7164_histogram_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa7164_histogram_reset(%struct.saa7164_histogram* %0, i8* %1) #0 {
  %3 = alloca %struct.saa7164_histogram*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.saa7164_histogram* %0, %struct.saa7164_histogram** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.saa7164_histogram*, %struct.saa7164_histogram** %3, align 8
  %7 = call i32 @memset(%struct.saa7164_histogram* %6, i32 0, i32 16)
  %8 = load %struct.saa7164_histogram*, %struct.saa7164_histogram** %3, align 8
  %9 = getelementptr inbounds %struct.saa7164_histogram, %struct.saa7164_histogram* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strscpy(i32 %10, i8* %11, i32 4)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %26, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 30
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.saa7164_histogram*, %struct.saa7164_histogram** %3, align 8
  %19 = getelementptr inbounds %struct.saa7164_histogram, %struct.saa7164_histogram* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 0, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %17, i32* %25, align 4
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %13

29:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %45, %29
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 18
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %34, 10
  %36 = add nsw i32 30, %35
  %37 = load %struct.saa7164_histogram*, %struct.saa7164_histogram** %3, align 8
  %38 = getelementptr inbounds %struct.saa7164_histogram, %struct.saa7164_histogram* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 30, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %36, i32* %44, align 4
  br label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %30

48:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %64, %48
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 15
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = mul nsw i32 %53, 200
  %55 = add nsw i32 200, %54
  %56 = load %struct.saa7164_histogram*, %struct.saa7164_histogram** %3, align 8
  %57 = getelementptr inbounds %struct.saa7164_histogram, %struct.saa7164_histogram* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 48, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %55, i32* %63, align 4
  br label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %49

67:                                               ; preds = %49
  %68 = load %struct.saa7164_histogram*, %struct.saa7164_histogram** %3, align 8
  %69 = getelementptr inbounds %struct.saa7164_histogram, %struct.saa7164_histogram* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 55
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 2000, i32* %72, align 4
  %73 = load %struct.saa7164_histogram*, %struct.saa7164_histogram** %3, align 8
  %74 = getelementptr inbounds %struct.saa7164_histogram, %struct.saa7164_histogram* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 56
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 4000, i32* %77, align 4
  %78 = load %struct.saa7164_histogram*, %struct.saa7164_histogram** %3, align 8
  %79 = getelementptr inbounds %struct.saa7164_histogram, %struct.saa7164_histogram* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 57
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 8000, i32* %82, align 4
  %83 = load %struct.saa7164_histogram*, %struct.saa7164_histogram** %3, align 8
  %84 = getelementptr inbounds %struct.saa7164_histogram, %struct.saa7164_histogram* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 58
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 15000, i32* %87, align 4
  %88 = load %struct.saa7164_histogram*, %struct.saa7164_histogram** %3, align 8
  %89 = getelementptr inbounds %struct.saa7164_histogram, %struct.saa7164_histogram* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 59
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 30000, i32* %92, align 4
  %93 = load %struct.saa7164_histogram*, %struct.saa7164_histogram** %3, align 8
  %94 = getelementptr inbounds %struct.saa7164_histogram, %struct.saa7164_histogram* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 60
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 60000, i32* %97, align 4
  %98 = load %struct.saa7164_histogram*, %struct.saa7164_histogram** %3, align 8
  %99 = getelementptr inbounds %struct.saa7164_histogram, %struct.saa7164_histogram* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 61
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i32 300000, i32* %102, align 4
  %103 = load %struct.saa7164_histogram*, %struct.saa7164_histogram** %3, align 8
  %104 = getelementptr inbounds %struct.saa7164_histogram, %struct.saa7164_histogram* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 62
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 900000, i32* %107, align 4
  %108 = load %struct.saa7164_histogram*, %struct.saa7164_histogram** %3, align 8
  %109 = getelementptr inbounds %struct.saa7164_histogram, %struct.saa7164_histogram* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 63
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i32 3600000, i32* %112, align 4
  ret void
}

declare dso_local i32 @memset(%struct.saa7164_histogram*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
