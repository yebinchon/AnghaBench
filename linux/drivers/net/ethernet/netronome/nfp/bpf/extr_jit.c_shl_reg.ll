; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_shl_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_shl_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { i64, i64, %struct.bpf_insn }
%struct.bpf_insn = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @shl_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shl_reg(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca %struct.nfp_insn_meta*, align 8
  %6 = alloca %struct.bpf_insn*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %5, align 8
  %11 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %12 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %11, i32 0, i32 2
  store %struct.bpf_insn* %12, %struct.bpf_insn** %6, align 8
  %13 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %14 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 2
  store i32 %16, i32* %9, align 4
  %17 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %18 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %21 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %28 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @__shl_imm(%struct.nfp_prog* %27, %struct.nfp_insn_meta* %28, i32 %29, i64 %30)
  store i32 %31, i32* %3, align 4
  br label %45

32:                                               ; preds = %2
  %33 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %34 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 2
  store i32 %36, i32* %10, align 4
  %37 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @shl_reg64_lt32_low(%struct.nfp_prog* %37, i32 %38, i32 %39)
  %41 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %42 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @wrp_zext(%struct.nfp_prog* %41, %struct.nfp_insn_meta* %42, i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %32, %26
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @__shl_imm(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32, i64) #1

declare dso_local i32 @shl_reg64_lt32_low(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @wrp_zext(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
