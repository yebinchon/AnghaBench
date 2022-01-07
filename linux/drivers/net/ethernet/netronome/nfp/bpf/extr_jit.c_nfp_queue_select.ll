; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_queue_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_queue_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ALU_OP_AND_NOT_B = common dso_local global i32 0, align 4
@BR_BEQ = common dso_local global i32 0, align 4
@SHF_OP_OR = common dso_local global i32 0, align 4
@SHF_SC_L_SHF = common dso_local global i32 0, align 4
@PKT_VEL_QSEL_SET_BIT = common dso_local global i32 0, align 4
@SHF_SC_NONE = common dso_local global i32 0, align 4
@NFP_NET_RXR_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @nfp_queue_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_queue_select(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca %struct.nfp_insn_meta*, align 8
  %6 = alloca i64, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %5, align 8
  %7 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %8 = call i64 @nfp_prog_current_offset(%struct.nfp_prog* %7)
  %9 = add nsw i64 %8, 5
  store i64 %9, i64* %6, align 8
  %10 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %11 = call i32 (...) @reg_none()
  %12 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %13 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 2
  %17 = call i32 @reg_a(i32 %16)
  %18 = load i32, i32* @ALU_OP_AND_NOT_B, align 4
  %19 = call i32 @reg_imm(i32 255)
  %20 = call i32 @emit_alu(%struct.nfp_prog* %10, i32 %11, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %22 = load i32, i32* @BR_BEQ, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @emit_br(%struct.nfp_prog* %21, i32 %22, i64 %23, i32 2)
  %25 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %26 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %27 = call i32 @pv_qsel_set(%struct.nfp_prog* %26)
  %28 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %29 = call i32 @pv_qsel_set(%struct.nfp_prog* %28)
  %30 = load i32, i32* @SHF_OP_OR, align 4
  %31 = call i32 @reg_imm(i32 1)
  %32 = load i32, i32* @SHF_SC_L_SHF, align 4
  %33 = load i32, i32* @PKT_VEL_QSEL_SET_BIT, align 4
  %34 = call i32 @emit_shf(%struct.nfp_prog* %25, i32 %27, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %36 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %37 = call i32 @pv_qsel_val(%struct.nfp_prog* %36)
  %38 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %39 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 2
  %43 = call i32 @reg_b(i32 %42)
  %44 = load i32, i32* @SHF_SC_NONE, align 4
  %45 = call i32 @emit_ld_field(%struct.nfp_prog* %35, i32 %37, i32 1, i32 %43, i32 %44, i32 0)
  %46 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %47 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %48 = call i32 @pv_qsel_val(%struct.nfp_prog* %47)
  %49 = load i32, i32* @NFP_NET_RXR_MAX, align 4
  %50 = call i32 @reg_imm(i32 %49)
  %51 = load i32, i32* @SHF_SC_NONE, align 4
  %52 = call i32 @emit_ld_field(%struct.nfp_prog* %46, i32 %48, i32 1, i32 %50, i32 %51, i32 0)
  %53 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog* %53, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %2
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @nfp_prog_current_offset(%struct.nfp_prog*) #1

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @reg_a(i32) #1

declare dso_local i32 @reg_imm(i32) #1

declare dso_local i32 @emit_br(%struct.nfp_prog*, i32, i64, i32) #1

declare dso_local i32 @emit_shf(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pv_qsel_set(%struct.nfp_prog*) #1

declare dso_local i32 @emit_ld_field(%struct.nfp_prog*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pv_qsel_val(%struct.nfp_prog*) #1

declare dso_local i32 @reg_b(i32) #1

declare dso_local i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
