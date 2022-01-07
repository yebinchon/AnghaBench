; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_get_prandom_u32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_get_prandom_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { i32 }

@NFP_CSR_PSEUDO_RND_NUM = common dso_local global i32 0, align 4
@IMMED_WIDTH_ALL = common dso_local global i32 0, align 4
@IMMED_SHIFT_0B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @nfp_get_prandom_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_get_prandom_u32(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca %struct.nfp_prog*, align 8
  %4 = alloca %struct.nfp_insn_meta*, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %3, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %4, align 8
  %5 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %6 = load i32, i32* @NFP_CSR_PSEUDO_RND_NUM, align 4
  %7 = call i32 @__emit_csr_rd(%struct.nfp_prog* %5, i32 %6)
  %8 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %9 = call i32 @reg_both(i32 0)
  %10 = load i32, i32* @IMMED_WIDTH_ALL, align 4
  %11 = load i32, i32* @IMMED_SHIFT_0B, align 4
  %12 = call i32 @emit_immed(%struct.nfp_prog* %8, i32 %9, i32 0, i32 %10, i32 0, i32 %11)
  %13 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %14 = call i32 @reg_both(i32 1)
  %15 = load i32, i32* @IMMED_WIDTH_ALL, align 4
  %16 = load i32, i32* @IMMED_SHIFT_0B, align 4
  %17 = call i32 @emit_immed(%struct.nfp_prog* %13, i32 %14, i32 0, i32 %15, i32 0, i32 %16)
  ret i32 0
}

declare dso_local i32 @__emit_csr_rd(%struct.nfp_prog*, i32) #1

declare dso_local i32 @emit_immed(%struct.nfp_prog*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @reg_both(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
