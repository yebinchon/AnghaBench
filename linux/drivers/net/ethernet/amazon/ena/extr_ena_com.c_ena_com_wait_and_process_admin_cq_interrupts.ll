; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_wait_and_process_admin_cq_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_wait_and_process_admin_cq_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_comp_ctx = type { i8*, i32, i32, i32 }
%struct.ena_com_admin_queue = type { i32, i32, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ENA_CMD_SUBMITTED = common dso_local global i8* null, align 8
@ENA_CMD_COMPLETED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [115 x i8] c"The ena device sent a completion but the driver didn't receive a MSI-X interrupt (cmd %d), autopolling mode is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"The ena device doesn't send a completion for the admin cmd %d status %d\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_comp_ctx*, %struct.ena_com_admin_queue*)* @ena_com_wait_and_process_admin_cq_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_wait_and_process_admin_cq_interrupts(%struct.ena_comp_ctx* %0, %struct.ena_com_admin_queue* %1) #0 {
  %3 = alloca %struct.ena_comp_ctx*, align 8
  %4 = alloca %struct.ena_com_admin_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ena_comp_ctx* %0, %struct.ena_comp_ctx** %3, align 8
  store %struct.ena_com_admin_queue* %1, %struct.ena_com_admin_queue** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %7, i32 0, i32 3
  %9 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %10 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @usecs_to_jiffies(i32 %11)
  %13 = call i32 @wait_for_completion_timeout(i32* %8, i32 %12)
  %14 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** @ENA_CMD_SUBMITTED, align 8
  %18 = icmp eq i8* %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %81

22:                                               ; preds = %2
  %23 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %24 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %23, i32 0, i32 3
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %28 = call i32 @ena_com_handle_admin_completion(%struct.ena_com_admin_queue* %27)
  %29 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %30 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %35 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %34, i32 0, i32 3
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** @ENA_CMD_COMPLETED, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %22
  %44 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %48 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0), i32 %46, i8* %52)
  %54 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %55 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %43
  %59 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %60 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  br label %61

61:                                               ; preds = %58, %43
  br label %70

62:                                               ; preds = %22
  %63 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %65, i8* %68)
  br label %70

70:                                               ; preds = %62, %61
  %71 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %72 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %77 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  %78 = load i32, i32* @ETIME, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %86

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %2
  %82 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %83 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @ena_com_comp_status_to_errno(i32 %84)
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %81, %75
  %87 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %88 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %3, align 8
  %89 = call i32 @comp_ctxt_release(%struct.ena_com_admin_queue* %87, %struct.ena_comp_ctx* %88)
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ena_com_handle_admin_completion(%struct.ena_com_admin_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_err(i8*, i32, i8*) #1

declare dso_local i32 @ena_com_comp_status_to_errno(i32) #1

declare dso_local i32 @comp_ctxt_release(%struct.ena_com_admin_queue*, %struct.ena_comp_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
