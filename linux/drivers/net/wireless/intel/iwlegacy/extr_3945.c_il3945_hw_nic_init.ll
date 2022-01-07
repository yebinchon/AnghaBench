; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_nic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_nic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, %struct.il_rx_queue }
%struct.il_rx_queue = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Unable to initialize Rx queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@S_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il3945_hw_nic_init(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.il_rx_queue*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %7 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %8 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %7, i32 0, i32 2
  store %struct.il_rx_queue* %8, %struct.il_rx_queue** %6, align 8
  %9 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %10 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %9, i32 0, i32 1
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %14 = call i32 @il3945_apm_init(%struct.il_priv* %13)
  %15 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %16 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %15, i32 0, i32 1
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  %19 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %20 = call i32 @il3945_set_pwr_vmain(%struct.il_priv* %19)
  %21 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %22 = call i32 @il3945_nic_config(%struct.il_priv* %21)
  %23 = load %struct.il_rx_queue*, %struct.il_rx_queue** %6, align 8
  %24 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %1
  %28 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %29 = call i32 @il_rx_queue_alloc(%struct.il_priv* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = call i32 @IL_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %65

36:                                               ; preds = %27
  br label %41

37:                                               ; preds = %1
  %38 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %39 = load %struct.il_rx_queue*, %struct.il_rx_queue** %6, align 8
  %40 = call i32 @il3945_rx_queue_reset(%struct.il_priv* %38, %struct.il_rx_queue* %39)
  br label %41

41:                                               ; preds = %37, %36
  %42 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %43 = call i32 @il3945_rx_replenish(%struct.il_priv* %42)
  %44 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %45 = load %struct.il_rx_queue*, %struct.il_rx_queue** %6, align 8
  %46 = call i32 @il3945_rx_init(%struct.il_priv* %44, %struct.il_rx_queue* %45)
  %47 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %48 = call i32 @FH39_RCSR_WPTR(i32 0)
  %49 = load %struct.il_rx_queue*, %struct.il_rx_queue** %6, align 8
  %50 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, -8
  %53 = call i32 @il_wr(%struct.il_priv* %47, i32 %48, i32 %52)
  %54 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %55 = call i32 @il3945_txq_ctx_reset(%struct.il_priv* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %41
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %65

60:                                               ; preds = %41
  %61 = load i32, i32* @S_INIT, align 4
  %62 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %63 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %62, i32 0, i32 0
  %64 = call i32 @set_bit(i32 %61, i32* %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %58, %32
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @il3945_apm_init(%struct.il_priv*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @il3945_set_pwr_vmain(%struct.il_priv*) #1

declare dso_local i32 @il3945_nic_config(%struct.il_priv*) #1

declare dso_local i32 @il_rx_queue_alloc(%struct.il_priv*) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @il3945_rx_queue_reset(%struct.il_priv*, %struct.il_rx_queue*) #1

declare dso_local i32 @il3945_rx_replenish(%struct.il_priv*) #1

declare dso_local i32 @il3945_rx_init(%struct.il_priv*, %struct.il_rx_queue*) #1

declare dso_local i32 @il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @FH39_RCSR_WPTR(i32) #1

declare dso_local i32 @il3945_txq_ctx_reset(%struct.il_priv*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
