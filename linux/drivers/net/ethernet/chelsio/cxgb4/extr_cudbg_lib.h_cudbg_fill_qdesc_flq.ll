; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.h_cudbg_fill_qdesc_flq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.h_cudbg_fill_qdesc_flq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_fl = type { i32, i32, i32 }
%struct.cudbg_qdesc_entry = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_fl*, i32, %struct.cudbg_qdesc_entry*)* @cudbg_fill_qdesc_flq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cudbg_fill_qdesc_flq(%struct.sge_fl* %0, i32 %1, %struct.cudbg_qdesc_entry* %2) #0 {
  %4 = alloca %struct.sge_fl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cudbg_qdesc_entry*, align 8
  store %struct.sge_fl* %0, %struct.sge_fl** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cudbg_qdesc_entry* %2, %struct.cudbg_qdesc_entry** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.cudbg_qdesc_entry*, %struct.cudbg_qdesc_entry** %6, align 8
  %9 = getelementptr inbounds %struct.cudbg_qdesc_entry, %struct.cudbg_qdesc_entry* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %11 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cudbg_qdesc_entry*, %struct.cudbg_qdesc_entry** %6, align 8
  %14 = getelementptr inbounds %struct.cudbg_qdesc_entry, %struct.cudbg_qdesc_entry* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load %struct.cudbg_qdesc_entry*, %struct.cudbg_qdesc_entry** %6, align 8
  %16 = getelementptr inbounds %struct.cudbg_qdesc_entry, %struct.cudbg_qdesc_entry* %15, i32 0, i32 1
  store i32 4, i32* %16, align 4
  %17 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %18 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cudbg_qdesc_entry*, %struct.cudbg_qdesc_entry** %6, align 8
  %21 = getelementptr inbounds %struct.cudbg_qdesc_entry, %struct.cudbg_qdesc_entry* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %23 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = load %struct.cudbg_qdesc_entry*, %struct.cudbg_qdesc_entry** %6, align 8
  %29 = getelementptr inbounds %struct.cudbg_qdesc_entry, %struct.cudbg_qdesc_entry* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.cudbg_qdesc_entry*, %struct.cudbg_qdesc_entry** %6, align 8
  %31 = getelementptr inbounds %struct.cudbg_qdesc_entry, %struct.cudbg_qdesc_entry* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %34 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cudbg_qdesc_entry*, %struct.cudbg_qdesc_entry** %6, align 8
  %37 = getelementptr inbounds %struct.cudbg_qdesc_entry, %struct.cudbg_qdesc_entry* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcpy(i32 %32, i32 %35, i32 %38)
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
