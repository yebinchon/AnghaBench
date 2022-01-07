; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_poll_mboxmsg_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_poll_mboxmsg_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_device = type { %struct.ath6kl_irq_proc_registers, i32 }
%struct.ath6kl_irq_proc_registers = type { i32, i32, i32, i32* }

@HTC_MAILBOX = common dso_local global i32 0, align 4
@ATH6KL_TIME_QUANTUM = common dso_local global i32 0, align 4
@HOST_INT_STATUS_ADDRESS = common dso_local global i32 0, align 4
@HIF_RD_SYNC_BYTE_INC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to read reg table\0A\00", align 1
@ATH6KL_DBG_HIF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"hif retry mbox poll try %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"timeout waiting for recv message\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@ATH6KL_TARGET_DEBUG_INTR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_hif_poll_mboxmsg_rx(%struct.ath6kl_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath6kl_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath6kl_irq_proc_registers*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath6kl_device* %0, %struct.ath6kl_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @HTC_MAILBOX, align 4
  %13 = shl i32 1, %12
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @ATH6KL_TIME_QUANTUM, align 4
  %16 = sdiv i32 %14, %15
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %70, %3
  %18 = load i32, i32* %10, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %73

20:                                               ; preds = %17
  %21 = load %struct.ath6kl_device*, %struct.ath6kl_device** %5, align 8
  %22 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @HOST_INT_STATUS_ADDRESS, align 4
  %25 = load %struct.ath6kl_device*, %struct.ath6kl_device** %5, align 8
  %26 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %25, i32 0, i32 0
  %27 = bitcast %struct.ath6kl_irq_proc_registers* %26 to i32*
  %28 = load i32, i32* @HIF_RD_SYNC_BYTE_INC, align 4
  %29 = call i32 @hif_read_write_sync(i32 %23, i32 %24, i32* %27, i32 24, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = call i32 @ath6kl_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %93

35:                                               ; preds = %20
  %36 = load %struct.ath6kl_device*, %struct.ath6kl_device** %5, align 8
  %37 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.ath6kl_irq_proc_registers, %struct.ath6kl_irq_proc_registers* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %35
  %44 = load %struct.ath6kl_device*, %struct.ath6kl_device** %5, align 8
  %45 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.ath6kl_irq_proc_registers, %struct.ath6kl_irq_proc_registers* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %43
  %52 = load %struct.ath6kl_device*, %struct.ath6kl_device** %5, align 8
  %53 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %52, i32 0, i32 0
  store %struct.ath6kl_irq_proc_registers* %53, %struct.ath6kl_irq_proc_registers** %8, align 8
  %54 = load %struct.ath6kl_irq_proc_registers*, %struct.ath6kl_irq_proc_registers** %8, align 8
  %55 = getelementptr inbounds %struct.ath6kl_irq_proc_registers, %struct.ath6kl_irq_proc_registers* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @HTC_MAILBOX, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32_to_cpu(i32 %60)
  %62 = load i32*, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  br label %73

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63, %35
  %65 = load i32, i32* @ATH6KL_TIME_QUANTUM, align 4
  %66 = call i32 @mdelay(i32 %65)
  %67 = load i32, i32* @ATH6KL_DBG_HIF, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @ath6kl_dbg(i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %10, align 4
  br label %17

73:                                               ; preds = %51, %17
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = call i32 @ath6kl_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @ETIME, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  %80 = load %struct.ath6kl_device*, %struct.ath6kl_device** %5, align 8
  %81 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.ath6kl_irq_proc_registers, %struct.ath6kl_irq_proc_registers* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ATH6KL_TARGET_DEBUG_INTR_MASK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %76
  %88 = load %struct.ath6kl_device*, %struct.ath6kl_device** %5, align 8
  %89 = call i32 @ath6kl_hif_proc_dbg_intr(%struct.ath6kl_device* %88)
  br label %90

90:                                               ; preds = %87, %76
  br label %91

91:                                               ; preds = %90, %73
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %32
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @hif_read_write_sync(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ath6kl_err(i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32) #1

declare dso_local i32 @ath6kl_hif_proc_dbg_intr(%struct.ath6kl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
