; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_find_codec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_find_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_codec = type { i32, i32 }
%struct.coda_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.coda_codec* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.coda_codec* (%struct.coda_dev*, i32, i32)* @coda_find_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.coda_codec* @coda_find_codec(%struct.coda_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.coda_codec*, align 8
  %5 = alloca %struct.coda_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.coda_codec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.coda_dev* %0, %struct.coda_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %12 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.coda_codec*, %struct.coda_codec** %14, align 8
  store %struct.coda_codec* %15, %struct.coda_codec** %8, align 8
  %16 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %17 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @coda_format_normalize_yuv(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @coda_format_normalize_yuv(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store %struct.coda_codec* null, %struct.coda_codec** %4, align 8
  br label %67

29:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %54, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = load %struct.coda_codec*, %struct.coda_codec** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.coda_codec, %struct.coda_codec* %35, i64 %37
  %39 = getelementptr inbounds %struct.coda_codec, %struct.coda_codec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load %struct.coda_codec*, %struct.coda_codec** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.coda_codec, %struct.coda_codec* %44, i64 %46
  %48 = getelementptr inbounds %struct.coda_codec, %struct.coda_codec* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %57

53:                                               ; preds = %43, %34
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %30

57:                                               ; preds = %52, %30
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store %struct.coda_codec* null, %struct.coda_codec** %4, align 8
  br label %67

62:                                               ; preds = %57
  %63 = load %struct.coda_codec*, %struct.coda_codec** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.coda_codec, %struct.coda_codec* %63, i64 %65
  store %struct.coda_codec* %66, %struct.coda_codec** %4, align 8
  br label %67

67:                                               ; preds = %62, %61, %28
  %68 = load %struct.coda_codec*, %struct.coda_codec** %4, align 8
  ret %struct.coda_codec* %68
}

declare dso_local i32 @coda_format_normalize_yuv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
