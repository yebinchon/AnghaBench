; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_get_max_dimensions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_get_max_dimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.coda_codec* }
%struct.coda_codec = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coda_dev*, %struct.coda_codec*, i32*, i32*)* @coda_get_max_dimensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_get_max_dimensions(%struct.coda_dev* %0, %struct.coda_codec* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.coda_dev*, align 8
  %6 = alloca %struct.coda_codec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.coda_codec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.coda_dev* %0, %struct.coda_dev** %5, align 8
  store %struct.coda_codec* %1, %struct.coda_codec** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %15 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.coda_codec*, %struct.coda_codec** %17, align 8
  store %struct.coda_codec* %18, %struct.coda_codec** %9, align 8
  %19 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %20 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.coda_codec*, %struct.coda_codec** %6, align 8
  %25 = icmp ne %struct.coda_codec* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load %struct.coda_codec*, %struct.coda_codec** %6, align 8
  %28 = getelementptr inbounds %struct.coda_codec, %struct.coda_codec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.coda_codec*, %struct.coda_codec** %6, align 8
  %31 = getelementptr inbounds %struct.coda_codec, %struct.coda_codec* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  br label %59

33:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %55, %33
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.coda_codec*, %struct.coda_codec** %9, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.coda_codec, %struct.coda_codec* %40, i64 %42
  %44 = getelementptr inbounds %struct.coda_codec, %struct.coda_codec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @max(i32 %39, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.coda_codec*, %struct.coda_codec** %9, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.coda_codec, %struct.coda_codec* %48, i64 %50
  %52 = getelementptr inbounds %struct.coda_codec, %struct.coda_codec* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @max(i32 %47, i32 %53)
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %38
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %34

58:                                               ; preds = %34
  br label %59

59:                                               ; preds = %58, %26
  %60 = load i32*, i32** %7, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32*, i32** %8, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %12, align 4
  %70 = load i32*, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %65
  ret void
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
