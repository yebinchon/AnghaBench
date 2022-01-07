; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_resource_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_resource_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, i32, i32)* @bnxt_hwrm_resource_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_hwrm_resource_free(%struct.bnxt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %8 = call i32 @bnxt_clear_vnic(%struct.bnxt* %7)
  %9 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @bnxt_hwrm_ring_free(%struct.bnxt* %9, i32 %10)
  %12 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %13 = call i32 @bnxt_hwrm_ring_grp_free(%struct.bnxt* %12)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %18 = call i32 @bnxt_hwrm_stat_ctx_free(%struct.bnxt* %17)
  %19 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %20 = call i32 @bnxt_hwrm_free_tunnel_ports(%struct.bnxt* %19)
  br label %21

21:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32 @bnxt_clear_vnic(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_ring_free(%struct.bnxt*, i32) #1

declare dso_local i32 @bnxt_hwrm_ring_grp_free(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_stat_ctx_free(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_free_tunnel_ports(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
