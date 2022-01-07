; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fimc_ctx = type { i32 }

@ST_M2M_PEND = common dso_local global i32 0, align 4
@ST_M2M_SUSPENDING = common dso_local global i32 0, align 4
@ST_M2M_SUSPENDED = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@FIMC_CTX_SHUT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ST_CAPT_PEND = common dso_local global i32 0, align 4
@ST_CAPT_JPEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fimc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fimc_dev*, align 8
  %7 = alloca %struct.fimc_ctx*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.fimc_dev*
  store %struct.fimc_dev* %10, %struct.fimc_dev** %6, align 8
  %11 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %12 = call i32 @fimc_hw_clear_irq(%struct.fimc_dev* %11)
  %13 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %14 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load i32, i32* @ST_M2M_PEND, align 4
  %17 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %18 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %17, i32 0, i32 2
  %19 = call i64 @test_and_clear_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %69

21:                                               ; preds = %2
  %22 = load i32, i32* @ST_M2M_SUSPENDING, align 4
  %23 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %24 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %23, i32 0, i32 2
  %25 = call i64 @test_and_clear_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i32, i32* @ST_M2M_SUSPENDED, align 4
  %29 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %30 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %29, i32 0, i32 2
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  %32 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %33 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %32, i32 0, i32 3
  %34 = call i32 @wake_up(i32* %33)
  br label %98

35:                                               ; preds = %21
  %36 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %37 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.fimc_ctx* @v4l2_m2m_get_curr_priv(i32 %39)
  store %struct.fimc_ctx* %40, %struct.fimc_ctx** %7, align 8
  %41 = load %struct.fimc_ctx*, %struct.fimc_ctx** %7, align 8
  %42 = icmp ne %struct.fimc_ctx* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %35
  %44 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %45 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load %struct.fimc_ctx*, %struct.fimc_ctx** %7, align 8
  %48 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %49 = call i32 @fimc_m2m_job_finish(%struct.fimc_ctx* %47, i32 %48)
  %50 = load %struct.fimc_ctx*, %struct.fimc_ctx** %7, align 8
  %51 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FIMC_CTX_SHUT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %43
  %57 = load i32, i32* @FIMC_CTX_SHUT, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.fimc_ctx*, %struct.fimc_ctx** %7, align 8
  %60 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %64 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %63, i32 0, i32 3
  %65 = call i32 @wake_up(i32* %64)
  br label %66

66:                                               ; preds = %56, %43
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %67, i32* %3, align 4
  br label %103

68:                                               ; preds = %35
  br label %97

69:                                               ; preds = %2
  %70 = load i32, i32* @ST_CAPT_PEND, align 4
  %71 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %72 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %71, i32 0, i32 2
  %73 = call i64 @test_bit(i32 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %69
  %76 = load i32, i32* @ST_CAPT_JPEG, align 4
  %77 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %78 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %77, i32 0, i32 2
  %79 = call i64 @test_bit(i32 %76, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %83 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 1
  br label %87

87:                                               ; preds = %81, %75
  %88 = phi i1 [ false, %75 ], [ %86, %81 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %8, align 4
  %90 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @fimc_capture_irq_handler(%struct.fimc_dev* %90, i32 %94)
  br label %96

96:                                               ; preds = %87, %69
  br label %97

97:                                               ; preds = %96, %68
  br label %98

98:                                               ; preds = %97, %27
  %99 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %100 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %99, i32 0, i32 0
  %101 = call i32 @spin_unlock(i32* %100)
  %102 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %98, %66
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @fimc_hw_clear_irq(%struct.fimc_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local %struct.fimc_ctx* @v4l2_m2m_get_curr_priv(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fimc_m2m_job_finish(%struct.fimc_ctx*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @fimc_capture_irq_handler(%struct.fimc_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
