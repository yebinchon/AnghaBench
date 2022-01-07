; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_cp_ring_from_grp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_cp_ring_from_grp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.bnxt_ring_grp_info* }
%struct.bnxt_ring_grp_info = type { i32 }
%struct.bnxt_ring_struct = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_ring_struct*)* @bnxt_cp_ring_from_grp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_cp_ring_from_grp(%struct.bnxt* %0, %struct.bnxt_ring_struct* %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.bnxt_ring_struct*, align 8
  %5 = alloca %struct.bnxt_ring_grp_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store %struct.bnxt_ring_struct* %1, %struct.bnxt_ring_struct** %4, align 8
  %6 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %7 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %6, i32 0, i32 0
  %8 = load %struct.bnxt_ring_grp_info*, %struct.bnxt_ring_grp_info** %7, align 8
  %9 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %4, align 8
  %10 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.bnxt_ring_grp_info, %struct.bnxt_ring_grp_info* %8, i64 %11
  store %struct.bnxt_ring_grp_info* %12, %struct.bnxt_ring_grp_info** %5, align 8
  %13 = load %struct.bnxt_ring_grp_info*, %struct.bnxt_ring_grp_info** %5, align 8
  %14 = getelementptr inbounds %struct.bnxt_ring_grp_info, %struct.bnxt_ring_grp_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
