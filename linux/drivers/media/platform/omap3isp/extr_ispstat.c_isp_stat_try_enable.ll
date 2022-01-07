; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_try_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_try_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32, i32*, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.ispstat*, i32*)* }

@ISPSTAT_ENABLING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"%s: module is enabled.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispstat*)* @isp_stat_try_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_stat_try_enable(%struct.ispstat* %0) #0 {
  %2 = alloca %struct.ispstat*, align 8
  %3 = alloca i64, align 8
  store %struct.ispstat* %0, %struct.ispstat** %2, align 8
  %4 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %5 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %4, i32 0, i32 6
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %84

9:                                                ; preds = %1
  %10 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %11 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %17 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ISPSTAT_ENABLING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %9
  %22 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %23 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %77, label %26

26:                                               ; preds = %21
  %27 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %28 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %27, i32 0, i32 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %77

31:                                               ; preds = %26
  %32 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %33 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %32, i32 0, i32 1
  store i32 1, i32* %33, align 8
  %34 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %35 = call i32 @isp_stat_buf_next(%struct.ispstat* %34)
  %36 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %37 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %36, i32 0, i32 7
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.ispstat*, i32*)*, i32 (%struct.ispstat*, i32*)** %39, align 8
  %41 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %42 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %43 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %42, i32 0, i32 6
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 %40(%struct.ispstat* %41, i32* %44)
  %46 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %47 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %48 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @isp_stat_buf_insert_magic(%struct.ispstat* %46, i32 %49)
  %51 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %52 = call i32 @IS_H3A(%struct.ispstat* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %31
  %55 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %56 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %55, i32 0, i32 4
  %57 = call i32 @atomic_set(i32* %56, i32 0)
  br label %58

58:                                               ; preds = %54, %31
  %59 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %60 = call i32 @isp_stat_pcr_enable(%struct.ispstat* %59, i32 1)
  %61 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %62 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %3, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %68 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %73 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_dbg(i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %84

77:                                               ; preds = %26, %21, %9
  %78 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %79 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %78, i32 0, i32 2
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %3, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  br label %84

84:                                               ; preds = %8, %77, %58
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @isp_stat_buf_next(%struct.ispstat*) #1

declare dso_local i32 @isp_stat_buf_insert_magic(%struct.ispstat*, i32) #1

declare dso_local i32 @IS_H3A(%struct.ispstat*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @isp_stat_pcr_enable(%struct.ispstat*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
