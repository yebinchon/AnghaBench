; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_read_int_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_read_int_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sdio = type { %struct.ath10k_sdio_irq_data }
%struct.ath10k_sdio_irq_data = type { i32, %struct.ath10k_sdio_irq_enable_regs*, %struct.ath10k_sdio_irq_proc_regs* }
%struct.ath10k_sdio_irq_enable_regs = type { i32 }
%struct.ath10k_sdio_irq_proc_regs = type { i32, i32, i32* }

@ATH10K_HTC_MAILBOX_MASK = common dso_local global i32 0, align 4
@MBOX_HOST_INT_STATUS_ADDRESS = common dso_local global i32 0, align 4
@ATH10K_HTC_MAILBOX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"sdio mbox lookahead is zero\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32*, i64*)* @ath10k_sdio_mbox_read_int_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_mbox_read_int_status(%struct.ath10k* %0, i32* %1, i64* %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ath10k_sdio*, align 8
  %8 = alloca %struct.ath10k_sdio_irq_data*, align 8
  %9 = alloca %struct.ath10k_sdio_irq_proc_regs*, align 8
  %10 = alloca %struct.ath10k_sdio_irq_enable_regs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %14 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %13)
  store %struct.ath10k_sdio* %14, %struct.ath10k_sdio** %7, align 8
  %15 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %7, align 8
  %16 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %15, i32 0, i32 0
  store %struct.ath10k_sdio_irq_data* %16, %struct.ath10k_sdio_irq_data** %8, align 8
  %17 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %8, align 8
  %18 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %17, i32 0, i32 2
  %19 = load %struct.ath10k_sdio_irq_proc_regs*, %struct.ath10k_sdio_irq_proc_regs** %18, align 8
  store %struct.ath10k_sdio_irq_proc_regs* %19, %struct.ath10k_sdio_irq_proc_regs** %9, align 8
  %20 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %8, align 8
  %21 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %20, i32 0, i32 1
  %22 = load %struct.ath10k_sdio_irq_enable_regs*, %struct.ath10k_sdio_irq_enable_regs** %21, align 8
  store %struct.ath10k_sdio_irq_enable_regs* %22, %struct.ath10k_sdio_irq_enable_regs** %10, align 8
  %23 = load i32, i32* @ATH10K_HTC_MAILBOX_MASK, align 4
  %24 = call i32 @FIELD_PREP(i32 %23, i32 1)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %8, align 8
  %26 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i64*, i64** %6, align 8
  store i64 0, i64* %28, align 8
  %29 = load i32*, i32** %5, align 8
  store i32 0, i32* %29, align 4
  %30 = load %struct.ath10k_sdio_irq_enable_regs*, %struct.ath10k_sdio_irq_enable_regs** %10, align 8
  %31 = getelementptr inbounds %struct.ath10k_sdio_irq_enable_regs, %struct.ath10k_sdio_irq_enable_regs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %88

35:                                               ; preds = %3
  %36 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %37 = load i32, i32* @MBOX_HOST_INT_STATUS_ADDRESS, align 4
  %38 = load %struct.ath10k_sdio_irq_proc_regs*, %struct.ath10k_sdio_irq_proc_regs** %9, align 8
  %39 = call i32 @ath10k_sdio_read(%struct.ath10k* %36, i32 %37, %struct.ath10k_sdio_irq_proc_regs* %38, i32 16)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %88

43:                                               ; preds = %35
  %44 = load %struct.ath10k_sdio_irq_proc_regs*, %struct.ath10k_sdio_irq_proc_regs** %9, align 8
  %45 = getelementptr inbounds %struct.ath10k_sdio_irq_proc_regs, %struct.ath10k_sdio_irq_proc_regs* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ath10k_sdio_irq_enable_regs*, %struct.ath10k_sdio_irq_enable_regs** %10, align 8
  %48 = getelementptr inbounds %struct.ath10k_sdio_irq_enable_regs, %struct.ath10k_sdio_irq_enable_regs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %46, %49
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %43
  %58 = load i64*, i64** %6, align 8
  store i64 0, i64* %58, align 8
  store i32 0, i32* %12, align 4
  br label %88

59:                                               ; preds = %43
  %60 = load i32, i32* %11, align 4
  %61 = xor i32 %60, -1
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %61
  store i32 %64, i32* %62, align 4
  %65 = load %struct.ath10k_sdio_irq_proc_regs*, %struct.ath10k_sdio_irq_proc_regs** %9, align 8
  %66 = getelementptr inbounds %struct.ath10k_sdio_irq_proc_regs, %struct.ath10k_sdio_irq_proc_regs* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %59
  %72 = load %struct.ath10k_sdio_irq_proc_regs*, %struct.ath10k_sdio_irq_proc_regs** %9, align 8
  %73 = getelementptr inbounds %struct.ath10k_sdio_irq_proc_regs, %struct.ath10k_sdio_irq_proc_regs* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @ATH10K_HTC_MAILBOX, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @le32_to_cpu(i32 %77)
  %79 = load i64*, i64** %6, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i64*, i64** %6, align 8
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %71
  %84 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %85 = call i32 @ath10k_warn(%struct.ath10k* %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %71
  br label %87

87:                                               ; preds = %86, %59
  br label %88

88:                                               ; preds = %87, %57, %42, %34
  %89 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %8, align 8
  %90 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* %12, align 4
  ret i32 %92
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath10k_sdio_read(%struct.ath10k*, i32, %struct.ath10k_sdio_irq_proc_regs*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
