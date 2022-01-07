; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_dev = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gsc_ctx = type { i32, i32 }

@GSC_IRQ_OVERRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Local path input over-run interrupt has occurred!\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ST_M2M_PEND = common dso_local global i32 0, align 4
@ST_M2M_SUSPENDING = common dso_local global i32 0, align 4
@ST_M2M_SUSPENDED = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@GSC_CTX_STOP_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gsc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gsc_dev*, align 8
  %7 = alloca %struct.gsc_ctx*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.gsc_dev*
  store %struct.gsc_dev* %10, %struct.gsc_dev** %6, align 8
  %11 = load %struct.gsc_dev*, %struct.gsc_dev** %6, align 8
  %12 = call i32 @gsc_hw_get_irq_status(%struct.gsc_dev* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.gsc_dev*, %struct.gsc_dev** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @gsc_hw_clear_irq(%struct.gsc_dev* %13, i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @GSC_IRQ_OVERRUN, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %21, i32* %3, align 4
  br label %92

22:                                               ; preds = %2
  %23 = load %struct.gsc_dev*, %struct.gsc_dev** %6, align 8
  %24 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load i32, i32* @ST_M2M_PEND, align 4
  %27 = load %struct.gsc_dev*, %struct.gsc_dev** %6, align 8
  %28 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %27, i32 0, i32 3
  %29 = call i64 @test_and_clear_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %86

31:                                               ; preds = %22
  %32 = load %struct.gsc_dev*, %struct.gsc_dev** %6, align 8
  %33 = call i32 @gsc_hw_enable_control(%struct.gsc_dev* %32, i32 0)
  %34 = load i32, i32* @ST_M2M_SUSPENDING, align 4
  %35 = load %struct.gsc_dev*, %struct.gsc_dev** %6, align 8
  %36 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %35, i32 0, i32 3
  %37 = call i64 @test_and_clear_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load i32, i32* @ST_M2M_SUSPENDED, align 4
  %41 = load %struct.gsc_dev*, %struct.gsc_dev** %6, align 8
  %42 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %41, i32 0, i32 3
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  %44 = load %struct.gsc_dev*, %struct.gsc_dev** %6, align 8
  %45 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %44, i32 0, i32 1
  %46 = call i32 @wake_up(i32* %45)
  br label %87

47:                                               ; preds = %31
  %48 = load %struct.gsc_dev*, %struct.gsc_dev** %6, align 8
  %49 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.gsc_ctx* @v4l2_m2m_get_curr_priv(i32 %51)
  store %struct.gsc_ctx* %52, %struct.gsc_ctx** %7, align 8
  %53 = load %struct.gsc_ctx*, %struct.gsc_ctx** %7, align 8
  %54 = icmp ne %struct.gsc_ctx* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load %struct.gsc_ctx*, %struct.gsc_ctx** %7, align 8
  %57 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55, %47
  br label %87

61:                                               ; preds = %55
  %62 = load %struct.gsc_dev*, %struct.gsc_dev** %6, align 8
  %63 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load %struct.gsc_ctx*, %struct.gsc_ctx** %7, align 8
  %66 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %67 = call i32 @gsc_m2m_job_finish(%struct.gsc_ctx* %65, i32 %66)
  %68 = load %struct.gsc_ctx*, %struct.gsc_ctx** %7, align 8
  %69 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @GSC_CTX_STOP_REQ, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %61
  %75 = load i32, i32* @GSC_CTX_STOP_REQ, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.gsc_ctx*, %struct.gsc_ctx** %7, align 8
  %78 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.gsc_dev*, %struct.gsc_dev** %6, align 8
  %82 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %81, i32 0, i32 1
  %83 = call i32 @wake_up(i32* %82)
  br label %84

84:                                               ; preds = %74, %61
  %85 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %85, i32* %3, align 4
  br label %92

86:                                               ; preds = %22
  br label %87

87:                                               ; preds = %86, %60, %39
  %88 = load %struct.gsc_dev*, %struct.gsc_dev** %6, align 8
  %89 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %87, %84, %19
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @gsc_hw_get_irq_status(%struct.gsc_dev*) #1

declare dso_local i32 @gsc_hw_clear_irq(%struct.gsc_dev*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @gsc_hw_enable_control(%struct.gsc_dev*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local %struct.gsc_ctx* @v4l2_m2m_get_curr_priv(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gsc_m2m_job_finish(%struct.gsc_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
