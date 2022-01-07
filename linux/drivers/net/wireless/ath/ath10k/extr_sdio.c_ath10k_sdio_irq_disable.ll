; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sdio = type { i32, i32, i32, %struct.ath10k_sdio_irq_data }
%struct.ath10k_sdio_irq_data = type { i32, %struct.ath10k_sdio_irq_enable_regs* }
%struct.ath10k_sdio_irq_enable_regs = type { i32 }
%struct.sk_buff = type { i32 }
%struct.completion = type { i32 }

@MBOX_INT_STATUS_ENABLE_ADDRESS = common dso_local global i32 0, align 4
@SDIO_IRQ_DISABLE_TIMEOUT_HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"sdio irq disable request timed out\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to release sdio interrupt: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*)* @ath10k_sdio_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_sdio_irq_disable(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca %struct.ath10k_sdio*, align 8
  %4 = alloca %struct.ath10k_sdio_irq_data*, align 8
  %5 = alloca %struct.ath10k_sdio_irq_enable_regs*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.completion, align 4
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %10 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %9)
  store %struct.ath10k_sdio* %10, %struct.ath10k_sdio** %3, align 8
  %11 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %11, i32 0, i32 3
  store %struct.ath10k_sdio_irq_data* %12, %struct.ath10k_sdio_irq_data** %4, align 8
  %13 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %4, align 8
  %14 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %13, i32 0, i32 1
  %15 = load %struct.ath10k_sdio_irq_enable_regs*, %struct.ath10k_sdio_irq_enable_regs** %14, align 8
  store %struct.ath10k_sdio_irq_enable_regs* %15, %struct.ath10k_sdio_irq_enable_regs** %5, align 8
  %16 = call %struct.sk_buff* @dev_alloc_skb(i32 4)
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %81

20:                                               ; preds = %1
  %21 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %4, align 8
  %22 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.ath10k_sdio_irq_enable_regs*, %struct.ath10k_sdio_irq_enable_regs** %5, align 8
  %25 = call i32 @memset(%struct.ath10k_sdio_irq_enable_regs* %24, i32 0, i32 4)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ath10k_sdio_irq_enable_regs*, %struct.ath10k_sdio_irq_enable_regs** %5, align 8
  %30 = call i32 @memcpy(i32 %28, %struct.ath10k_sdio_irq_enable_regs* %29, i32 4)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @skb_put(%struct.sk_buff* %31, i32 4)
  %33 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %4, align 8
  %34 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = call i32 @init_completion(%struct.completion* %7)
  %37 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %38 = load i32, i32* @MBOX_INT_STATUS_ENABLE_ADDRESS, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call i32 @ath10k_sdio_prep_async_req(%struct.ath10k* %37, i32 %38, %struct.sk_buff* %39, %struct.completion* %7, i32 0, i32 0)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %20
  br label %78

44:                                               ; preds = %20
  %45 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %46 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %49 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %48, i32 0, i32 1
  %50 = call i32 @queue_work(i32 %47, i32* %49)
  %51 = load i32, i32* @SDIO_IRQ_DISABLE_TIMEOUT_HZ, align 4
  %52 = call i32 @wait_for_completion_timeout(%struct.completion* %7, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %44
  %56 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %57 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %44
  %59 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %60 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @sdio_claim_host(i32 %61)
  %63 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %64 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @sdio_release_irq(i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %58
  %70 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %58
  %74 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %75 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @sdio_release_host(i32 %76)
  br label %78

78:                                               ; preds = %73, %43
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = call i32 @kfree_skb(%struct.sk_buff* %79)
  br label %81

81:                                               ; preds = %78, %19
  ret void
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.ath10k_sdio_irq_enable_regs*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.ath10k_sdio_irq_enable_regs*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @ath10k_sdio_prep_async_req(%struct.ath10k*, i32, %struct.sk_buff*, %struct.completion*, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wait_for_completion_timeout(%struct.completion*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @sdio_release_irq(i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
