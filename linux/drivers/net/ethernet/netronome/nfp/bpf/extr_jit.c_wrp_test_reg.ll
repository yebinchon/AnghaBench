; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_test_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_test_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.bpf_insn }
%struct.bpf_insn = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*, i32, i32)* @wrp_test_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wrp_test_reg(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfp_prog*, align 8
  %6 = alloca %struct.nfp_insn_meta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_insn*, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %5, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %11 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %10, i32 0, i32 0
  store %struct.bpf_insn* %11, %struct.bpf_insn** %9, align 8
  %12 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %13 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %14 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 2
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %19 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 2
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %24 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @wrp_test_reg_one(%struct.nfp_prog* %12, i32 %16, i32 %17, i32 %21, i32 %22, i32 %25)
  %27 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %28 = call i64 @is_mbpf_jmp64(%struct.nfp_insn_meta* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %4
  %31 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %32 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %33 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 2
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %39 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 2
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %45 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @wrp_test_reg_one(%struct.nfp_prog* %31, i32 %36, i32 %37, i32 %42, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %30, %4
  ret i32 0
}

declare dso_local i32 @wrp_test_reg_one(%struct.nfp_prog*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @is_mbpf_jmp64(%struct.nfp_insn_meta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
