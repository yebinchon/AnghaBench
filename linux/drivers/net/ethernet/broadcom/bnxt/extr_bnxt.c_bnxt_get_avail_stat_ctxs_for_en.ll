; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_get_avail_stat_ctxs_for_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_get_avail_stat_ctxs_for_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_get_avail_stat_ctxs_for_en(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %3 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %4 = call i32 @bnxt_get_max_func_stat_ctxs(%struct.bnxt* %3)
  %5 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %6 = call i32 @bnxt_get_func_stat_ctxs(%struct.bnxt* %5)
  %7 = sub i32 %4, %6
  ret i32 %7
}

declare dso_local i32 @bnxt_get_max_func_stat_ctxs(%struct.bnxt*) #1

declare dso_local i32 @bnxt_get_func_stat_ctxs(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
