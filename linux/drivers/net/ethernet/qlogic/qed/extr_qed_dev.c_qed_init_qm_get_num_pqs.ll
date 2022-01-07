; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_qm_get_num_pqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_qm_get_num_pqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }

@PQ_FLAGS_RLS = common dso_local global i32 0, align 4
@PQ_FLAGS_MCOS = common dso_local global i32 0, align 4
@PQ_FLAGS_LB = common dso_local global i32 0, align 4
@PQ_FLAGS_OOO = common dso_local global i32 0, align 4
@PQ_FLAGS_ACK = common dso_local global i32 0, align 4
@PQ_FLAGS_OFLD = common dso_local global i32 0, align 4
@PQ_FLAGS_LLT = common dso_local global i32 0, align 4
@PQ_FLAGS_VFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*)* @qed_init_qm_get_num_pqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_init_qm_get_num_pqs(%struct.qed_hwfn* %0) #0 {
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
  %16 = load i32, i32* @PQ_FLAGS_MCOS, align 4
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %24 = call i32 @qed_init_qm_get_num_tcs(%struct.qed_hwfn* %23)
  %25 = mul nsw i32 %22, %24
  %26 = add nsw i32 %15, %25
  %27 = load i32, i32* @PQ_FLAGS_LB, align 4
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = add nsw i32 %26, %33
  %35 = load i32, i32* @PQ_FLAGS_OOO, align 4
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = add nsw i32 %34, %41
  %43 = load i32, i32* @PQ_FLAGS_ACK, align 4
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = add nsw i32 %42, %49
  %51 = load i32, i32* @PQ_FLAGS_OFLD, align 4
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %59 = call i32 @qed_init_qm_get_num_mtc_tcs(%struct.qed_hwfn* %58)
  %60 = mul nsw i32 %57, %59
  %61 = add nsw i32 %50, %60
  %62 = load i32, i32* @PQ_FLAGS_LLT, align 4
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %70 = call i32 @qed_init_qm_get_num_mtc_tcs(%struct.qed_hwfn* %69)
  %71 = mul nsw i32 %68, %70
  %72 = add nsw i32 %61, %71
  %73 = load i32, i32* @PQ_FLAGS_VFS, align 4
  %74 = load i32, i32* %3, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %81 = call i32 @qed_init_qm_get_num_vfs(%struct.qed_hwfn* %80)
  %82 = mul nsw i32 %79, %81
  %83 = add nsw i32 %72, %82
  ret i32 %83
}

declare dso_local i32 @qed_get_pq_flags(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_init_qm_get_num_pf_rls(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_init_qm_get_num_tcs(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_init_qm_get_num_mtc_tcs(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_init_qm_get_num_vfs(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
