; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_shr_reg64_lt32_high.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_shr_reg64_lt32_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }

@ALU_OP_OR = common dso_local global i32 0, align 4
@SHF_OP_NONE = common dso_local global i32 0, align 4
@SHF_SC_R_SHF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*, i64, i64)* @shr_reg64_lt32_high to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shr_reg64_lt32_high(%struct.nfp_prog* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %8 = call i32 (...) @reg_none()
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @reg_a(i64 %9)
  %11 = load i32, i32* @ALU_OP_OR, align 4
  %12 = call i32 @reg_imm(i32 0)
  %13 = call i32 @emit_alu(%struct.nfp_prog* %7, i32 %8, i32 %10, i32 %11, i32 %12)
  %14 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add nsw i64 %15, 1
  %17 = call i32 @reg_both(i64 %16)
  %18 = call i32 (...) @reg_none()
  %19 = load i32, i32* @SHF_OP_NONE, align 4
  %20 = load i64, i64* %5, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i32 @reg_b(i64 %21)
  %23 = load i32, i32* @SHF_SC_R_SHF, align 4
  %24 = call i32 @emit_shf_indir(%struct.nfp_prog* %14, i32 %17, i32 %18, i32 %19, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @reg_a(i64) #1

declare dso_local i32 @reg_imm(i32) #1

declare dso_local i32 @emit_shf_indir(%struct.nfp_prog*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @reg_both(i64) #1

declare dso_local i32 @reg_b(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
