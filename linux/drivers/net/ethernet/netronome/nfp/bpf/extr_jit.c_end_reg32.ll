; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_end_reg32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_end_reg32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.bpf_insn }
%struct.bpf_insn = type { i32, i32 }

@SHF_SC_R_ROT = common dso_local global i32 0, align 4
@SHF_SC_R_SHF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @end_reg32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @end_reg32(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca %struct.nfp_prog*, align 8
  %4 = alloca %struct.nfp_insn_meta*, align 8
  %5 = alloca %struct.bpf_insn*, align 8
  %6 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %3, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %4, align 8
  %7 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %8 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %7, i32 0, i32 0
  store %struct.bpf_insn* %8, %struct.bpf_insn** %5, align 8
  %9 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %10 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 2
  store i32 %12, i32* %6, align 4
  %13 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %14 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %66 [
    i32 16, label %16
    i32 32, label %36
    i32 64, label %47
  ]

16:                                               ; preds = %2
  %17 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @reg_both(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @reg_b(i32 %20)
  %22 = load i32, i32* @SHF_SC_R_ROT, align 4
  %23 = call i32 @emit_ld_field(%struct.nfp_prog* %17, i32 %19, i32 9, i32 %21, i32 %22, i32 8)
  %24 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @reg_both(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @reg_a(i32 %27)
  %29 = load i32, i32* @SHF_SC_R_SHF, align 4
  %30 = call i32 @emit_ld_field(%struct.nfp_prog* %24, i32 %26, i32 14, i32 %28, i32 %29, i32 16)
  %31 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @reg_both(i32 %33)
  %35 = call i32 @wrp_immed(%struct.nfp_prog* %31, i32 %34, i32 0)
  br label %66

36:                                               ; preds = %2
  %37 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @reg_a(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @wrp_end32(%struct.nfp_prog* %37, i32 %39, i32 %40)
  %42 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i32 @reg_both(i32 %44)
  %46 = call i32 @wrp_immed(%struct.nfp_prog* %42, i32 %45, i32 0)
  br label %66

47:                                               ; preds = %2
  %48 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %49 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %50 = call i32 @imm_a(%struct.nfp_prog* %49)
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @reg_b(i32 %52)
  %54 = call i32 @wrp_mov(%struct.nfp_prog* %48, i32 %50, i32 %53)
  %55 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @reg_a(i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i32 @wrp_end32(%struct.nfp_prog* %55, i32 %57, i32 %59)
  %61 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %62 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %63 = call i32 @imm_a(%struct.nfp_prog* %62)
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @wrp_end32(%struct.nfp_prog* %61, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %2, %47, %36, %16
  ret i32 0
}

declare dso_local i32 @emit_ld_field(%struct.nfp_prog*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @reg_both(i32) #1

declare dso_local i32 @reg_b(i32) #1

declare dso_local i32 @reg_a(i32) #1

declare dso_local i32 @wrp_immed(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @wrp_end32(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @wrp_mov(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @imm_a(%struct.nfp_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
