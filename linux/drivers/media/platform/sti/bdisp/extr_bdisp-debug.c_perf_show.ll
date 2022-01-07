; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_perf_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_perf_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.bdisp_dev* }
%struct.bdisp_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.bdisp_request }
%struct.bdisp_request = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"No request\0A\00", align 1
@SECOND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"HW processing (%d requests):\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c" Average: %5lld us  (%3d fps)\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c" Min-Max: %5lld us  (%3d fps) - %5lld us  (%3d fps)\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c" Last:    %5lld us  (%3d fps)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @perf_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bdisp_dev*, align 8
  %7 = alloca %struct.bdisp_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %14 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %13, i32 0, i32 0
  %15 = load %struct.bdisp_dev*, %struct.bdisp_dev** %14, align 8
  store %struct.bdisp_dev* %15, %struct.bdisp_dev** %6, align 8
  %16 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %17 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  store %struct.bdisp_request* %18, %struct.bdisp_request** %7, align 8
  %19 = load %struct.bdisp_request*, %struct.bdisp_request** %7, align 8
  %20 = getelementptr inbounds %struct.bdisp_request, %struct.bdisp_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %25 = call i32 @seq_puts(%struct.seq_file* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %117

26:                                               ; preds = %2
  %27 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %28 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bdisp_request*, %struct.bdisp_request** %7, align 8
  %32 = getelementptr inbounds %struct.bdisp_request, %struct.bdisp_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @div64_s64(i32 %30, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @SECOND, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %43

39:                                               ; preds = %26
  %40 = load i32, i32* @SECOND, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %39, %38
  %44 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %45 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SECOND, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %58

51:                                               ; preds = %43
  %52 = load i32, i32* @SECOND, align 4
  %53 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %54 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %52, %56
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %51, %50
  %59 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %60 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SECOND, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 0, i32* %11, align 4
  br label %73

66:                                               ; preds = %58
  %67 = load i32, i32* @SECOND, align 4
  %68 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %69 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %67, %71
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %66, %65
  %74 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %75 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SECOND, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 0, i32* %12, align 4
  br label %88

81:                                               ; preds = %73
  %82 = load i32, i32* @SECOND, align 4
  %83 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %84 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %82, %86
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %81, %80
  %89 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %90 = load %struct.bdisp_request*, %struct.bdisp_request** %7, align 8
  %91 = getelementptr inbounds %struct.bdisp_request, %struct.bdisp_request* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %89, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %99 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %100 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %105 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %103, i32 %107, i32 %108)
  %110 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %111 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %112 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %114, i32 %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %88, %23
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @div64_s64(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
