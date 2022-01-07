; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_buf_check_magic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_buf_check_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ispstat_buffer = type { i32, i64* }

@AF_EXTRA_DATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MAGIC_SIZE = common dso_local global i32 0, align 4
@MAGIC_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"%s: beginning magic check does not match.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: ending magic check does not match.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ispstat*, %struct.ispstat_buffer*)* @isp_stat_buf_check_magic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_stat_buf_check_magic(%struct.ispstat* %0, %struct.ispstat_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ispstat*, align 8
  %5 = alloca %struct.ispstat_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.ispstat* %0, %struct.ispstat** %4, align 8
  store %struct.ispstat_buffer* %1, %struct.ispstat_buffer** %5, align 8
  %10 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %11 = call i64 @IS_H3A_AF(%struct.ispstat* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %5, align 8
  %15 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @AF_EXTRA_DATA, align 4
  %18 = add nsw i32 %16, %17
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi i32 [ %18, %13 ], [ %22, %19 ]
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %28 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %31 = call i32 @isp_stat_buf_sync_magic_for_cpu(%struct.ispstat* %27, %struct.ispstat_buffer* %28, i32 %29, i32 %30)
  %32 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %5, align 8
  %33 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  store i64* %34, i64** %7, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = load i32, i32* @MAGIC_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  store i64* %38, i64** %8, align 8
  br label %39

39:                                               ; preds = %53, %23
  %40 = load i64*, i64** %7, align 8
  %41 = load i64*, i64** %8, align 8
  %42 = icmp ult i64* %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MAGIC_NUM, align 8
  %47 = icmp ne i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @likely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %51, %43
  br label %53

53:                                               ; preds = %52
  %54 = load i64*, i64** %7, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %55, i64** %7, align 8
  br label %39

56:                                               ; preds = %39
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %61 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %66 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_dbg(i32 %64, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %117

71:                                               ; preds = %56
  %72 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %5, align 8
  %73 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  store i64* %77, i64** %7, align 8
  %78 = load i64*, i64** %7, align 8
  %79 = load i32, i32* @MAGIC_SIZE, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64* %81, i64** %8, align 8
  br label %82

82:                                               ; preds = %108, %71
  %83 = load i64*, i64** %7, align 8
  %84 = load i64*, i64** %8, align 8
  %85 = icmp ult i64* %83, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %82
  %87 = load i64*, i64** %7, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @MAGIC_NUM, align 8
  %90 = icmp ne i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %86
  %95 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %96 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %95, i32 0, i32 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %101 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @dev_dbg(i32 %99, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %117

107:                                              ; preds = %86
  br label %108

108:                                              ; preds = %107
  %109 = load i64*, i64** %7, align 8
  %110 = getelementptr inbounds i64, i64* %109, i32 1
  store i64* %110, i64** %7, align 8
  br label %82

111:                                              ; preds = %82
  %112 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %113 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %5, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %116 = call i32 @isp_stat_buf_sync_magic_for_device(%struct.ispstat* %112, %struct.ispstat_buffer* %113, i32 %114, i32 %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %111, %94, %59
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i64 @IS_H3A_AF(%struct.ispstat*) #1

declare dso_local i32 @isp_stat_buf_sync_magic_for_cpu(%struct.ispstat*, %struct.ispstat_buffer*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @isp_stat_buf_sync_magic_for_device(%struct.ispstat*, %struct.ispstat_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
