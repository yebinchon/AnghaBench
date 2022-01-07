; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_proc_cpu_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_proc_cpu_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32 }
%struct.ath10k_sdio = type { %struct.ath10k_sdio_irq_data }
%struct.ath10k_sdio_irq_data = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"CPU interrupt status is zero\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MBOX_CPU_INT_STATUS_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"unable to write to cpu interrupt status address: %d\0A\00", align 1
@MBOX_CPU_STATUS_ENABLE_ASSERT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"firmware crashed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_sdio_mbox_proc_cpu_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_mbox_proc_cpu_intr(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca %struct.ath10k_sdio*, align 8
  %4 = alloca %struct.ath10k_sdio_irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %8 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %7)
  store %struct.ath10k_sdio* %8, %struct.ath10k_sdio** %3, align 8
  %9 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %10 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %9, i32 0, i32 0
  store %struct.ath10k_sdio_irq_data* %10, %struct.ath10k_sdio_irq_data** %4, align 8
  %11 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %4, align 8
  %12 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %4, align 8
  %15 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %4, align 8
  %20 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %18, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %29 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %52

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %4, align 8
  %36 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %34
  store i32 %40, i32* %38, align 4
  %41 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %42 = load i32, i32* @MBOX_CPU_INT_STATUS_ADDRESS, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ath10k_sdio_writesb32(%struct.ath10k* %41, i32 %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %32
  %48 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %48, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %52

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51, %47, %27
  %53 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %4, align 8
  %54 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @MBOX_CPU_STATUS_ENABLE_ASSERT_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %62 = call i32 @ath10k_err(%struct.ath10k* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %64 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %67 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %66, i32 0, i32 0
  %68 = call i32 @queue_work(i32 %65, i32* %67)
  br label %69

69:                                               ; preds = %60, %52
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @ath10k_sdio_writesb32(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
