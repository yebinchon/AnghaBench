; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_omap3isp_stat_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_omap3isp_stat_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s: user wants to %s module.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"%s: cannot enable module as it's never been successfully configured so far.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ISPSTAT_DISABLING = common dso_local global i64 0, align 8
@ISPSTAT_ENABLED = common dso_local global i64 0, align 8
@ISPSTAT_DISABLED = common dso_local global i64 0, align 8
@ISPSTAT_ENABLING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap3isp_stat_enable(%struct.ispstat* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ispstat*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ispstat* %0, %struct.ispstat** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %8 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %13 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %20 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %19)
  %21 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %22 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %25 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %31 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %59, label %34

34:                                               ; preds = %2
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %39 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %45 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %48 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %53 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %51, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %118

59:                                               ; preds = %34, %2
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %59
  %63 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %64 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ISPSTAT_DISABLING, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i64, i64* @ISPSTAT_ENABLED, align 8
  %70 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %71 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %83

72:                                               ; preds = %62
  %73 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %74 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ISPSTAT_DISABLED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i64, i64* @ISPSTAT_ENABLING, align 8
  %80 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %81 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %72
  br label %83

83:                                               ; preds = %82, %68
  br label %108

84:                                               ; preds = %59
  %85 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %86 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ISPSTAT_ENABLING, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i64, i64* @ISPSTAT_DISABLED, align 8
  %92 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %93 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %107

94:                                               ; preds = %84
  %95 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %96 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ISPSTAT_ENABLED, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load i64, i64* @ISPSTAT_DISABLING, align 8
  %102 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %103 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %105 = call i32 @isp_stat_buf_clear(%struct.ispstat* %104)
  br label %106

106:                                              ; preds = %100, %94
  br label %107

107:                                              ; preds = %106, %90
  br label %108

108:                                              ; preds = %107, %83
  %109 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %110 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %6, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32* %112, i64 %113)
  %115 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %116 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %115, i32 0, i32 1
  %117 = call i32 @mutex_unlock(i32* %116)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %108, %37
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @isp_stat_buf_clear(%struct.ispstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
