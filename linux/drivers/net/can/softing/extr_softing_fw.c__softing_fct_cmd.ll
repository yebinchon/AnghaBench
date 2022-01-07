; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_fw.c__softing_fct_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_fw.c__softing_fct_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softing = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@DPRAM_FCT_PARAM = common dso_local global i64 0, align 8
@DPRAM_FCT_HOST = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i32 0, align 4
@DPRAM_FCT_RESULT = common dso_local global i64 0, align 8
@RES_NONE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"firmware %s failed (%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.softing*, i32, i32, i8*)* @_softing_fct_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_softing_fct_cmd(%struct.softing* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.softing*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.softing* %0, %struct.softing** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.softing*, %struct.softing** %6, align 8
  %14 = getelementptr inbounds %struct.softing, %struct.softing* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @DPRAM_FCT_PARAM, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = call i32 @iowrite16(i32 %12, i32* %17)
  %19 = load i32, i32* %8, align 4
  %20 = ashr i32 %19, 8
  %21 = load %struct.softing*, %struct.softing** %6, align 8
  %22 = getelementptr inbounds %struct.softing, %struct.softing* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @DPRAM_FCT_HOST, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = call i32 @iowrite8(i32 %20, i32* %27)
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.softing*, %struct.softing** %6, align 8
  %31 = getelementptr inbounds %struct.softing, %struct.softing* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @DPRAM_FCT_HOST, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @iowrite8(i32 %29, i32* %35)
  %37 = call i32 (...) @wmb()
  %38 = load i32, i32* @jiffies, align 4
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 1, %39
  %41 = add nsw i32 %38, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %11, align 8
  br label %43

43:                                               ; preds = %84, %4
  %44 = load %struct.softing*, %struct.softing** %6, align 8
  %45 = getelementptr inbounds %struct.softing, %struct.softing* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @DPRAM_FCT_HOST, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @ioread8(i32* %49)
  %51 = load %struct.softing*, %struct.softing** %6, align 8
  %52 = getelementptr inbounds %struct.softing, %struct.softing* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @DPRAM_FCT_HOST, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = call i32 @ioread8(i32* %57)
  %59 = shl i32 %58, 8
  %60 = add nsw i32 %50, %59
  store i32 %60, i32* %10, align 4
  %61 = call i32 (...) @rmb()
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @RES_OK, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %43
  %66 = load %struct.softing*, %struct.softing** %6, align 8
  %67 = getelementptr inbounds %struct.softing, %struct.softing* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @DPRAM_FCT_RESULT, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = call i32 @ioread16(i32* %70)
  store i32 %71, i32* %5, align 4
  br label %105

72:                                               ; preds = %43
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @jiffies, align 4
  %78 = load i64, i64* %11, align 8
  %79 = call i64 @time_after(i32 %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %72
  br label %85

82:                                               ; preds = %76
  %83 = call i32 @usleep_range(i32 500, i32 10000)
  br label %84

84:                                               ; preds = %82
  br i1 true, label %43, label %85

85:                                               ; preds = %84, %81
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @RES_NONE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* @ETIMEDOUT, align 4
  %91 = sub nsw i32 0, %90
  br label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @ECANCELED, align 4
  %94 = sub nsw i32 0, %93
  br label %95

95:                                               ; preds = %92, %89
  %96 = phi i32 [ %91, %89 ], [ %94, %92 ]
  store i32 %96, i32* %10, align 4
  %97 = load %struct.softing*, %struct.softing** %6, align 8
  %98 = getelementptr inbounds %struct.softing, %struct.softing* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i8*, i8** %9, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @dev_alert(i32* %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %101, i32 %102)
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %95, %65
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @iowrite16(i32, i32*) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ioread8(i32*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @ioread16(i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_alert(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
