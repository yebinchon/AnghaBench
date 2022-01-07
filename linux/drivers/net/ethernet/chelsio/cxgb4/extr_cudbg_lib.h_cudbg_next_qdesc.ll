; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.h_cudbg_next_qdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.h_cudbg_next_qdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_qdesc_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cudbg_qdesc_entry* (%struct.cudbg_qdesc_entry*)* @cudbg_next_qdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cudbg_qdesc_entry* @cudbg_next_qdesc(%struct.cudbg_qdesc_entry* %0) #0 {
  %2 = alloca %struct.cudbg_qdesc_entry*, align 8
  store %struct.cudbg_qdesc_entry* %0, %struct.cudbg_qdesc_entry** %2, align 8
  %3 = load %struct.cudbg_qdesc_entry*, %struct.cudbg_qdesc_entry** %2, align 8
  %4 = bitcast %struct.cudbg_qdesc_entry* %3 to i32*
  %5 = getelementptr inbounds i32, i32* %4, i64 4
  %6 = load %struct.cudbg_qdesc_entry*, %struct.cudbg_qdesc_entry** %2, align 8
  %7 = getelementptr inbounds %struct.cudbg_qdesc_entry, %struct.cudbg_qdesc_entry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %5, i64 %9
  %11 = bitcast i32* %10 to %struct.cudbg_qdesc_entry*
  ret %struct.cudbg_qdesc_entry* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
