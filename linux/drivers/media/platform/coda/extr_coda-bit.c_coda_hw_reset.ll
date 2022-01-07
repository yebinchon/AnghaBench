; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { %struct.coda_dev* }
%struct.coda_dev = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@CODA_REG_BIT_RUN_INDEX = common dso_local global i32 0, align 4
@CODA_960 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@CODA9_GDI_BUS_CTRL = common dso_local global i32 0, align 4
@CODA9_GDI_BUS_STATUS = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@CODA_REG_BIT_BUSY_FLAG = common dso_local global i32 0, align 4
@CODA_REG_BIT_BUSY = common dso_local global i32 0, align 4
@CODA_REG_RUN_ENABLE = common dso_local global i32 0, align 4
@CODA_REG_BIT_CODE_RUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_hw_reset(%struct.coda_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coda_ctx*, align 8
  %4 = alloca %struct.coda_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %3, align 8
  %8 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %8, i32 0, i32 0
  %10 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  store %struct.coda_dev* %10, %struct.coda_dev** %4, align 8
  %11 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %12 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %11, i32 0, i32 2
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %15 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %92

21:                                               ; preds = %1
  %22 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %23 = load i32, i32* @CODA_REG_BIT_RUN_INDEX, align 4
  %24 = call i32 @coda_read(%struct.coda_dev* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %26 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CODA_960, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %21
  %33 = load i64, i64* @jiffies, align 8
  %34 = call i64 @msecs_to_jiffies(i32 100)
  %35 = add i64 %33, %34
  store i64 %35, i64* %5, align 8
  %36 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %37 = load i32, i32* @CODA9_GDI_BUS_CTRL, align 4
  %38 = call i32 @coda_write(%struct.coda_dev* %36, i32 17, i32 %37)
  br label %39

39:                                               ; preds = %52, %32
  %40 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %41 = load i32, i32* @CODA9_GDI_BUS_STATUS, align 4
  %42 = call i32 @coda_read(%struct.coda_dev* %40, i32 %41)
  %43 = icmp ne i32 %42, 119
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i64, i64* @jiffies, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @time_after(i64 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @ETIME, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %92

52:                                               ; preds = %44
  %53 = call i32 (...) @cpu_relax()
  br label %39

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %21
  %56 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %57 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @reset_control_reset(i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %92

64:                                               ; preds = %55
  %65 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %66 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CODA_960, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %74 = load i32, i32* @CODA9_GDI_BUS_CTRL, align 4
  %75 = call i32 @coda_write(%struct.coda_dev* %73, i32 0, i32 %74)
  br label %76

76:                                               ; preds = %72, %64
  %77 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %78 = load i32, i32* @CODA_REG_BIT_BUSY_FLAG, align 4
  %79 = load i32, i32* @CODA_REG_BIT_BUSY, align 4
  %80 = call i32 @coda_write(%struct.coda_dev* %77, i32 %78, i32 %79)
  %81 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %82 = load i32, i32* @CODA_REG_RUN_ENABLE, align 4
  %83 = load i32, i32* @CODA_REG_BIT_CODE_RUN, align 4
  %84 = call i32 @coda_write(%struct.coda_dev* %81, i32 %82, i32 %83)
  %85 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %86 = call i32 @coda_wait_timeout(%struct.coda_dev* %85)
  store i32 %86, i32* %7, align 4
  %87 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @CODA_REG_BIT_RUN_INDEX, align 4
  %90 = call i32 @coda_write(%struct.coda_dev* %87, i32 %88, i32 %89)
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %76, %62, %49, %18
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @coda_read(%struct.coda_dev*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @coda_write(%struct.coda_dev*, i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @reset_control_reset(i32) #1

declare dso_local i32 @coda_wait_timeout(%struct.coda_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
