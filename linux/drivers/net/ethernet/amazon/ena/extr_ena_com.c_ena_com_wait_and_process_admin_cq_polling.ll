; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_wait_and_process_admin_cq_polling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_wait_and_process_admin_cq_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_comp_ctx = type { i64, i32 }
%struct.ena_com_admin_queue = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@ENA_CMD_SUBMITTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Wait for completion (polling) timeout\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@ENA_POLL_MS = common dso_local global i32 0, align 4
@ENA_CMD_ABORTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Command was aborted\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENA_CMD_COMPLETED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid comp status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_comp_ctx*, %struct.ena_com_admin_queue*)* @ena_com_wait_and_process_admin_cq_polling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_wait_and_process_admin_cq_polling(%struct.ena_comp_ctx* %0, %struct.ena_com_admin_queue* %1) #0 {
  %3 = alloca %struct.ena_comp_ctx*, align 8
  %4 = alloca %struct.ena_com_admin_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ena_comp_ctx* %0, %struct.ena_comp_ctx** %3, align 8
  store %struct.ena_com_admin_queue* %1, %struct.ena_com_admin_queue** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %10 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @usecs_to_jiffies(i32 %11)
  %13 = add i64 %8, %12
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %2, %54
  %15 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %16 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %15, i32 0, i32 1
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %20 = call i32 @ena_com_handle_admin_completion(%struct.ena_com_admin_queue* %19)
  %21 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %22 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %21, i32 0, i32 1
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ENA_CMD_SUBMITTED, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %14
  br label %57

31:                                               ; preds = %14
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @time_is_before_jiffies(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %38 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %37, i32 0, i32 1
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %42 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %47 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  %48 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %49 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %48, i32 0, i32 1
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load i32, i32* @ETIME, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %98

54:                                               ; preds = %31
  %55 = load i32, i32* @ENA_POLL_MS, align 4
  %56 = call i32 @msleep(i32 %55)
  br label %14

57:                                               ; preds = %30
  %58 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ENA_CMD_ABORTED, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %57
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %69 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %68, i32 0, i32 1
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %69, i64 %70)
  %72 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %73 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %78 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %77, i32 0, i32 1
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %98

83:                                               ; preds = %57
  %84 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %85 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ENA_CMD_COMPLETED, align 8
  %88 = icmp ne i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %91 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @WARN(i32 %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %92)
  %94 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %95 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ena_com_comp_status_to_errno(i32 %96)
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %83, %66, %35
  %99 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %100 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %101 = call i32 @comp_ctxt_release(%struct.ena_com_admin_queue* %99, %struct.ena_comp_ctx* %100)
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ena_com_handle_admin_completion(%struct.ena_com_admin_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN(i32, i8*, i64) #1

declare dso_local i32 @ena_com_comp_status_to_errno(i32) #1

declare dso_local i32 @comp_ctxt_release(%struct.ena_com_admin_queue*, %struct.ena_comp_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
