; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_fw_reset_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_fw_reset_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_fw_reset_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_fw_reset_close(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %3 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %4 = call i32 @__bnxt_close_nic(%struct.bnxt* %3, i32 1, i32 0)
  %5 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %6 = call i32 @bnxt_ulp_irq_stop(%struct.bnxt* %5)
  %7 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %8 = call i32 @bnxt_clear_int_mode(%struct.bnxt* %7)
  %9 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %10 = call i32 @bnxt_hwrm_func_drv_unrgtr(%struct.bnxt* %9)
  %11 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %12 = call i32 @bnxt_free_ctx_mem(%struct.bnxt* %11)
  %13 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @kfree(i32* %15)
  %17 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  ret void
}

declare dso_local i32 @__bnxt_close_nic(%struct.bnxt*, i32, i32) #1

declare dso_local i32 @bnxt_ulp_irq_stop(%struct.bnxt*) #1

declare dso_local i32 @bnxt_clear_int_mode(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_func_drv_unrgtr(%struct.bnxt*) #1

declare dso_local i32 @bnxt_free_ctx_mem(%struct.bnxt*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
