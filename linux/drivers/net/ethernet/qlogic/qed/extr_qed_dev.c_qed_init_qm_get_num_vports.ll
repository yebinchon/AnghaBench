; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_qm_get_num_vports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_qm_get_num_vports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }

@PQ_FLAGS_RLS = common dso_local global i32 0, align 4
@PQ_FLAGS_VFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*)* @qed_init_qm_get_num_vports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_init_qm_get_num_vports(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %4 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %5 = call i32 @qed_get_pq_flags(%struct.qed_hwfn* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @PQ_FLAGS_RLS, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %14 = call i32 @qed_init_qm_get_num_pf_rls(%struct.qed_hwfn* %13)
  %15 = mul nsw i32 %12, %14
  %16 = load i32, i32* @PQ_FLAGS_VFS, align 4
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %24 = call i32 @qed_init_qm_get_num_vfs(%struct.qed_hwfn* %23)
  %25 = mul nsw i32 %22, %24
  %26 = add nsw i32 %15, %25
  %27 = add nsw i32 %26, 1
  ret i32 %27
}

declare dso_local i32 @qed_get_pq_flags(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_init_qm_get_num_pf_rls(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_init_qm_get_num_vfs(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
