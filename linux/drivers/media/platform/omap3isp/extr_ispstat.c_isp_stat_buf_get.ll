; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_buf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_buf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat_buffer = type { i32, i64, i32 }
%struct.ispstat = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.ispstat_buffer* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.omap3isp_stat_data = type { i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"%s: cannot find a buffer.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: current buffer has corrupted data\0A.\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: userspace's buffer size is not enough.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"%s: failed copying %d bytes of stat data\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ispstat_buffer* (%struct.ispstat*, %struct.omap3isp_stat_data*)* @isp_stat_buf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ispstat_buffer* @isp_stat_buf_get(%struct.ispstat* %0, %struct.omap3isp_stat_data* %1) #0 {
  %3 = alloca %struct.ispstat_buffer*, align 8
  %4 = alloca %struct.ispstat*, align 8
  %5 = alloca %struct.omap3isp_stat_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ispstat_buffer*, align 8
  store %struct.ispstat* %0, %struct.ispstat** %4, align 8
  store %struct.omap3isp_stat_data* %1, %struct.omap3isp_stat_data** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %10 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  br label %15

15:                                               ; preds = %2, %59
  %16 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %17 = call %struct.ispstat_buffer* @isp_stat_buf_find_oldest(%struct.ispstat* %16)
  store %struct.ispstat_buffer* %17, %struct.ispstat_buffer** %8, align 8
  %18 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %8, align 8
  %19 = icmp ne %struct.ispstat_buffer* %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %15
  %21 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %22 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %28 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %33 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.ispstat_buffer* @ERR_PTR(i32 %38)
  store %struct.ispstat_buffer* %39, %struct.ispstat_buffer** %3, align 8
  br label %128

40:                                               ; preds = %15
  %41 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %42 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %8, align 8
  %43 = call i64 @isp_stat_buf_check_magic(%struct.ispstat* %41, %struct.ispstat_buffer* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %47 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %52 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %8, align 8
  %57 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %59

58:                                               ; preds = %40
  br label %60

59:                                               ; preds = %45
  br label %15

60:                                               ; preds = %58
  %61 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %8, align 8
  %62 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %63 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %62, i32 0, i32 2
  store %struct.ispstat_buffer* %61, %struct.ispstat_buffer** %63, align 8
  %64 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %65 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %8, align 8
  %71 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.omap3isp_stat_data*, %struct.omap3isp_stat_data** %5, align 8
  %74 = getelementptr inbounds %struct.omap3isp_stat_data, %struct.omap3isp_stat_data* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %60
  %78 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %79 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %84 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dev_warn(i32 %82, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %89 = call i32 @isp_stat_buf_release(%struct.ispstat* %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  %92 = call %struct.ispstat_buffer* @ERR_PTR(i32 %91)
  store %struct.ispstat_buffer* %92, %struct.ispstat_buffer** %3, align 8
  br label %128

93:                                               ; preds = %60
  %94 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %95 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %8, align 8
  %96 = call i32 @isp_stat_buf_sync_for_cpu(%struct.ispstat* %94, %struct.ispstat_buffer* %95)
  %97 = load %struct.omap3isp_stat_data*, %struct.omap3isp_stat_data** %5, align 8
  %98 = getelementptr inbounds %struct.omap3isp_stat_data, %struct.omap3isp_stat_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %8, align 8
  %101 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %8, align 8
  %104 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @copy_to_user(i32 %99, i32 %102, i64 %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %93
  %110 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %111 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %116 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @dev_info(i32 %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32 %119)
  %121 = load i32, i32* @EFAULT, align 4
  %122 = sub nsw i32 0, %121
  %123 = call %struct.ispstat_buffer* @ERR_PTR(i32 %122)
  store %struct.ispstat_buffer* %123, %struct.ispstat_buffer** %8, align 8
  %124 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %125 = call i32 @isp_stat_buf_release(%struct.ispstat* %124)
  br label %126

126:                                              ; preds = %109, %93
  %127 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %8, align 8
  store %struct.ispstat_buffer* %127, %struct.ispstat_buffer** %3, align 8
  br label %128

128:                                              ; preds = %126, %77, %20
  %129 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %3, align 8
  ret %struct.ispstat_buffer* %129
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ispstat_buffer* @isp_stat_buf_find_oldest(%struct.ispstat*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local %struct.ispstat_buffer* @ERR_PTR(i32) #1

declare dso_local i64 @isp_stat_buf_check_magic(%struct.ispstat*, %struct.ispstat_buffer*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @isp_stat_buf_release(%struct.ispstat*) #1

declare dso_local i32 @isp_stat_buf_sync_for_cpu(%struct.ispstat*, %struct.ispstat_buffer*) #1

declare dso_local i32 @copy_to_user(i32, i32, i64) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
