; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_vpu.c_mtk_mdp_vpu_handle_init_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_vpu.c_mtk_mdp_vpu_handle_init_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp_ipi_comm_ack = type { i32, i64 }
%struct.mtk_mdp_vpu = type { i32, i32, %struct.mdp_process_vsi* }
%struct.mdp_process_vsi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdp_ipi_comm_ack*)* @mtk_mdp_vpu_handle_init_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_mdp_vpu_handle_init_ack(%struct.mdp_ipi_comm_ack* %0) #0 {
  %2 = alloca %struct.mdp_ipi_comm_ack*, align 8
  %3 = alloca %struct.mtk_mdp_vpu*, align 8
  store %struct.mdp_ipi_comm_ack* %0, %struct.mdp_ipi_comm_ack** %2, align 8
  %4 = load %struct.mdp_ipi_comm_ack*, %struct.mdp_ipi_comm_ack** %2, align 8
  %5 = getelementptr inbounds %struct.mdp_ipi_comm_ack, %struct.mdp_ipi_comm_ack* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.mtk_mdp_vpu*
  store %struct.mtk_mdp_vpu* %7, %struct.mtk_mdp_vpu** %3, align 8
  %8 = load %struct.mtk_mdp_vpu*, %struct.mtk_mdp_vpu** %3, align 8
  %9 = getelementptr inbounds %struct.mtk_mdp_vpu, %struct.mtk_mdp_vpu* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mdp_ipi_comm_ack*, %struct.mdp_ipi_comm_ack** %2, align 8
  %12 = getelementptr inbounds %struct.mdp_ipi_comm_ack, %struct.mdp_ipi_comm_ack* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @vpu_mapping_dm_addr(i32 %10, i32 %13)
  %15 = inttoptr i64 %14 to %struct.mdp_process_vsi*
  %16 = load %struct.mtk_mdp_vpu*, %struct.mtk_mdp_vpu** %3, align 8
  %17 = getelementptr inbounds %struct.mtk_mdp_vpu, %struct.mtk_mdp_vpu* %16, i32 0, i32 2
  store %struct.mdp_process_vsi* %15, %struct.mdp_process_vsi** %17, align 8
  %18 = load %struct.mdp_ipi_comm_ack*, %struct.mdp_ipi_comm_ack** %2, align 8
  %19 = getelementptr inbounds %struct.mdp_ipi_comm_ack, %struct.mdp_ipi_comm_ack* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.mtk_mdp_vpu*, %struct.mtk_mdp_vpu** %3, align 8
  %22 = getelementptr inbounds %struct.mtk_mdp_vpu, %struct.mtk_mdp_vpu* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  ret void
}

declare dso_local i64 @vpu_mapping_dm_addr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
