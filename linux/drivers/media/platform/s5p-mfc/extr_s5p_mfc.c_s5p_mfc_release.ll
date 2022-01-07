; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc.c_s5p_mfc_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc.c_s5p_mfc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.s5p_mfc_ctx = type { i64, i64, i32, i32, i32, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_dev = type { i64, i64, i32, i32**, i32, i32 }

@MFCINST_FREE = common dso_local global i64 0, align 8
@MFCINST_INIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Has to free instance\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Last instance\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Power off failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Shutting down clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @s5p_mfc_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  %4 = alloca %struct.s5p_mfc_dev*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.s5p_mfc_ctx* @fh_to_ctx(i32 %7)
  store %struct.s5p_mfc_ctx* %8, %struct.s5p_mfc_ctx** %3, align 8
  %9 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %9, i32 0, i32 5
  %11 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %10, align 8
  store %struct.s5p_mfc_dev* %11, %struct.s5p_mfc_dev** %4, align 8
  %12 = call i32 (...) @mfc_debug_enter()
  %13 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %14 = icmp ne %struct.s5p_mfc_dev* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %17 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %20, i32 0, i32 4
  %22 = call i32 @vb2_queue_release(i32* %21)
  %23 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %23, i32 0, i32 3
  %25 = call i32 @vb2_queue_release(i32* %24)
  %26 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %27 = icmp ne %struct.s5p_mfc_dev* %26, null
  br i1 %27, label %28, label %86

28:                                               ; preds = %19
  %29 = call i32 (...) @s5p_mfc_clock_on()
  %30 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %31 = call i32 @clear_work_bit_irqsave(%struct.s5p_mfc_ctx* %30)
  %32 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MFCINST_FREE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %28
  %38 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MFCINST_INIT, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %46 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %47 = call i32 @s5p_mfc_close_mfc_inst(%struct.s5p_mfc_dev* %45, %struct.s5p_mfc_ctx* %46)
  br label %48

48:                                               ; preds = %43, %37, %28
  %49 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %50 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %58 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %57, i32 0, i32 5
  %59 = call i32 @clear_bit(i32 0, i32* %58)
  br label %60

60:                                               ; preds = %56, %48
  %61 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %62 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %66 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %60
  %70 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %72 = call i32 @s5p_mfc_deinit_hw(%struct.s5p_mfc_dev* %71)
  %73 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %74 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %73, i32 0, i32 4
  %75 = call i32 @del_timer_sync(i32* %74)
  %76 = call i32 (...) @s5p_mfc_clock_off()
  %77 = call i64 (...) @s5p_mfc_power_off()
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = call i32 @mfc_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %69
  br label %85

82:                                               ; preds = %60
  %83 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %84 = call i32 (...) @s5p_mfc_clock_off()
  br label %85

85:                                               ; preds = %82, %81
  br label %86

86:                                               ; preds = %85, %19
  %87 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %88 = icmp ne %struct.s5p_mfc_dev* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %91 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %90, i32 0, i32 3
  %92 = load i32**, i32*** %91, align 8
  %93 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %94 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32*, i32** %92, i64 %95
  store i32* null, i32** %96, align 8
  br label %97

97:                                               ; preds = %89, %86
  %98 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %99 = call i32 @s5p_mfc_dec_ctrls_delete(%struct.s5p_mfc_ctx* %98)
  %100 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %101 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %100, i32 0, i32 2
  %102 = call i32 @v4l2_fh_del(i32* %101)
  %103 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %104 = icmp ne %struct.s5p_mfc_dev* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %107 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %106, i32 0, i32 2
  %108 = call i32 @v4l2_fh_exit(i32* %107)
  br label %109

109:                                              ; preds = %105, %97
  %110 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %111 = call i32 @kfree(%struct.s5p_mfc_ctx* %110)
  %112 = call i32 (...) @mfc_debug_leave()
  %113 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %114 = icmp ne %struct.s5p_mfc_dev* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %117 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %116, i32 0, i32 2
  %118 = call i32 @mutex_unlock(i32* %117)
  br label %119

119:                                              ; preds = %115, %109
  ret i32 0
}

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i32) #1

declare dso_local i32 @mfc_debug_enter(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vb2_queue_release(i32*) #1

declare dso_local i32 @s5p_mfc_clock_on(...) #1

declare dso_local i32 @clear_work_bit_irqsave(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @mfc_debug(i32, i8*) #1

declare dso_local i32 @s5p_mfc_close_mfc_inst(%struct.s5p_mfc_dev*, %struct.s5p_mfc_ctx*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @s5p_mfc_deinit_hw(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @s5p_mfc_clock_off(...) #1

declare dso_local i64 @s5p_mfc_power_off(...) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @s5p_mfc_dec_ctrls_delete(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @v4l2_fh_del(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @kfree(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @mfc_debug_leave(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
