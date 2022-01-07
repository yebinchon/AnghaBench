; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_restore_pf_fw_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_restore_pf_fw_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_restore_pf_fw_resources(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %4 = call i32 (...) @ASSERT_RTNL()
  %5 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %6 = call i32 @bnxt_hwrm_func_qcaps(%struct.bnxt* %5)
  %7 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %8 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @netif_running(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %14 = call i32 @__bnxt_close_nic(%struct.bnxt* %13, i32 1, i32 0)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %17 = call i32 @bnxt_ulp_irq_stop(%struct.bnxt* %16)
  %18 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %19 = call i32 @bnxt_clear_int_mode(%struct.bnxt* %18)
  %20 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %21 = call i32 @bnxt_init_int_mode(%struct.bnxt* %20)
  store i32 %21, i32* %3, align 4
  %22 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @bnxt_ulp_irq_restart(%struct.bnxt* %22, i32 %23)
  %25 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %26 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @netif_running(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %15
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %35 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_close(i32 %36)
  br label %41

38:                                               ; preds = %30
  %39 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %40 = call i32 @bnxt_open_nic(%struct.bnxt* %39, i32 1, i32 0)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %33
  br label %42

42:                                               ; preds = %41, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @bnxt_hwrm_func_qcaps(%struct.bnxt*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @__bnxt_close_nic(%struct.bnxt*, i32, i32) #1

declare dso_local i32 @bnxt_ulp_irq_stop(%struct.bnxt*) #1

declare dso_local i32 @bnxt_clear_int_mode(%struct.bnxt*) #1

declare dso_local i32 @bnxt_init_int_mode(%struct.bnxt*) #1

declare dso_local i32 @bnxt_ulp_irq_restart(%struct.bnxt*, i32) #1

declare dso_local i32 @dev_close(i32) #1

declare dso_local i32 @bnxt_open_nic(%struct.bnxt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
