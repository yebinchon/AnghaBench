; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_bpf_to_bpf_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_bpf_to_bpf_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.nfp_insn_meta = type { i8*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@STACK_FRAME_ALIGN = common dso_local global i32 0, align 4
@ALU_OP_ADD = common dso_local global i32 0, align 4
@NFP_CSR_ACT_LM_ADDR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"BUG: BPF-to-BPF call has no destination recorded\0A\00", align 1
@ELOOP = common dso_local global i32 0, align 4
@BR_UNC = common dso_local global i32 0, align 4
@BR_OFF_RELO = common dso_local global i32 0, align 4
@RELO_BR_GO_CALL_PUSH_REGS = common dso_local global i32 0, align 4
@RELO_IMMED_REL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ALU_OP_SUB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @bpf_to_bpf_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_to_bpf_call(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca %struct.nfp_insn_meta*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %5, align 8
  %10 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %11 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @STACK_FRAME_ALIGN, align 4
  %14 = call i8* @round_up(i32 %12, i32 %13)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %2
  %18 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %21 = call i32 @stack_imm(%struct.nfp_prog* %20)
  %22 = call i32 @ur_load_imm_any(%struct.nfp_prog* %18, i8* %19, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %24 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %25 = call i32 @stack_reg(%struct.nfp_prog* %24)
  %26 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %27 = call i32 @stack_reg(%struct.nfp_prog* %26)
  %28 = load i32, i32* @ALU_OP_ADD, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @emit_alu(%struct.nfp_prog* %23, i32 %25, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %32 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %33 = call i32 @stack_reg(%struct.nfp_prog* %32)
  %34 = load i32, i32* @NFP_CSR_ACT_LM_ADDR0, align 4
  %35 = call i32 @emit_csr_wr(%struct.nfp_prog* %31, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %17, %2
  %37 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %38 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = icmp ne %struct.TYPE_5__* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ELOOP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %138

45:                                               ; preds = %36
  %46 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %47 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %50 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %45
  %59 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %60 = call i8* @nfp_prog_current_offset(%struct.nfp_prog* %59)
  %61 = getelementptr i8, i8* %60, i64 3
  store i8* %61, i8** %6, align 8
  %62 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %63 = load i32, i32* @BR_UNC, align 4
  %64 = load i32, i32* @BR_OFF_RELO, align 4
  %65 = load i32, i32* @RELO_BR_GO_CALL_PUSH_REGS, align 4
  %66 = call i32 @emit_br_relo(%struct.nfp_prog* %62, i32 %63, i32 %64, i32 2, i32 %65)
  %67 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %68 = call i8* @nfp_prog_current_offset(%struct.nfp_prog* %67)
  store i8* %68, i8** %8, align 8
  %69 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %70 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %71 = call i32 @imm_b(%struct.nfp_prog* %70)
  %72 = load i32, i32* @RELO_IMMED_REL, align 4
  %73 = call i32 @wrp_immed_relo(%struct.nfp_prog* %69, i32 %71, i8* null, i32 %72)
  br label %87

74:                                               ; preds = %45
  %75 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %76 = call i8* @nfp_prog_current_offset(%struct.nfp_prog* %75)
  %77 = getelementptr i8, i8* %76, i64 2
  store i8* %77, i8** %6, align 8
  %78 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %79 = load i32, i32* @BR_UNC, align 4
  %80 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %81 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @emit_br(%struct.nfp_prog* %78, i32 %79, i32 %83, i32 1)
  %85 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %86 = call i8* @nfp_prog_current_offset(%struct.nfp_prog* %85)
  store i8* %86, i8** %8, align 8
  br label %87

87:                                               ; preds = %74, %58
  %88 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %89 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %90 = call i32 @ret_reg(%struct.nfp_prog* %89)
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* @RELO_IMMED_REL, align 4
  %93 = call i32 @wrp_immed_relo(%struct.nfp_prog* %88, i32 %90, i8* %91, i32 %92)
  %94 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog* %94, i8* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %87
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %138

101:                                              ; preds = %87
  %102 = load i8*, i8** %7, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  %105 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %108 = call i32 @stack_imm(%struct.nfp_prog* %107)
  %109 = call i32 @ur_load_imm_any(%struct.nfp_prog* %105, i8* %106, i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %111 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %112 = call i32 @stack_reg(%struct.nfp_prog* %111)
  %113 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %114 = call i32 @stack_reg(%struct.nfp_prog* %113)
  %115 = load i32, i32* @ALU_OP_SUB, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @emit_alu(%struct.nfp_prog* %110, i32 %112, i32 %114, i32 %115, i32 %116)
  %118 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %119 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %120 = call i32 @stack_reg(%struct.nfp_prog* %119)
  %121 = load i32, i32* @NFP_CSR_ACT_LM_ADDR0, align 4
  %122 = call i32 @emit_csr_wr(%struct.nfp_prog* %118, i32 %120, i32 %121)
  %123 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %124 = call i32 @wrp_nops(%struct.nfp_prog* %123, i32 3)
  br label %125

125:                                              ; preds = %104, %101
  %126 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %127 = call i8* @nfp_prog_current_offset(%struct.nfp_prog* %126)
  %128 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %129 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %132 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = ptrtoint i8* %133 to i64
  %135 = ptrtoint i8* %130 to i64
  %136 = sub i64 %134, %135
  %137 = inttoptr i64 %136 to i8*
  store i8* %137, i8** %132, align 8
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %125, %98, %41
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i8* @round_up(i32, i32) #1

declare dso_local i32 @ur_load_imm_any(%struct.nfp_prog*, i8*, i32) #1

declare dso_local i32 @stack_imm(%struct.nfp_prog*) #1

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @stack_reg(%struct.nfp_prog*) #1

declare dso_local i32 @emit_csr_wr(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i8* @nfp_prog_current_offset(%struct.nfp_prog*) #1

declare dso_local i32 @emit_br_relo(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @wrp_immed_relo(%struct.nfp_prog*, i32, i8*, i32) #1

declare dso_local i32 @imm_b(%struct.nfp_prog*) #1

declare dso_local i32 @emit_br(%struct.nfp_prog*, i32, i32, i32) #1

declare dso_local i32 @ret_reg(%struct.nfp_prog*) #1

declare dso_local i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog*, i8*) #1

declare dso_local i32 @wrp_nops(%struct.nfp_prog*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
