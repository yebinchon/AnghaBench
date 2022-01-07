; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_adjust_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_adjust_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nfp_bpf_cap_adjust_head }
%struct.nfp_bpf_cap_adjust_head = type { i32, i32 }
%struct.nfp_insn_meta = type { i64 }

@UINT_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ALU_OP_ADD = common dso_local global i32 0, align 4
@ALU_OP_SUB = common dso_local global i32 0, align 4
@ALU_OP_ADD_2B = common dso_local global i32 0, align 4
@BR_BLO = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@BR_BMI = common dso_local global i32 0, align 4
@SHF_SC_NONE = common dso_local global i32 0, align 4
@BR_UNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @adjust_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_head(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca %struct.nfp_insn_meta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_bpf_cap_adjust_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %5, align 8
  %11 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %12 = call i32 @imm_a(%struct.nfp_prog* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %14 = call i32 @imm_b(%struct.nfp_prog* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %16 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.nfp_bpf_cap_adjust_head* %18, %struct.nfp_bpf_cap_adjust_head** %8, align 8
  %19 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %20 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @UINT_MAX, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %69

24:                                               ; preds = %2
  %25 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %26 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %29 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON_ONCE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %180

38:                                               ; preds = %24
  %39 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %40 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %41 = call i32 @pptr_reg(%struct.nfp_prog* %40)
  %42 = call i32 @reg_a(i32 4)
  %43 = load i32, i32* @ALU_OP_ADD, align 4
  %44 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %45 = call i32 @pptr_reg(%struct.nfp_prog* %44)
  %46 = call i32 @emit_alu(%struct.nfp_prog* %39, i32 %41, i32 %42, i32 %43, i32 %45)
  %47 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %48 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %49 = call i32 @plen_reg(%struct.nfp_prog* %48)
  %50 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %51 = call i32 @plen_reg(%struct.nfp_prog* %50)
  %52 = load i32, i32* @ALU_OP_SUB, align 4
  %53 = call i32 @reg_a(i32 4)
  %54 = call i32 @emit_alu(%struct.nfp_prog* %47, i32 %49, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %56 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %57 = call i32 @pv_len(%struct.nfp_prog* %56)
  %58 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %59 = call i32 @pv_len(%struct.nfp_prog* %58)
  %60 = load i32, i32* @ALU_OP_SUB, align 4
  %61 = call i32 @reg_a(i32 4)
  %62 = call i32 @emit_alu(%struct.nfp_prog* %55, i32 %57, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %64 = call i32 @reg_both(i32 0)
  %65 = call i32 @wrp_immed(%struct.nfp_prog* %63, i32 %64, i32 0)
  %66 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %67 = call i32 @reg_both(i32 1)
  %68 = call i32 @wrp_immed(%struct.nfp_prog* %66, i32 %67, i32 0)
  store i32 0, i32* %3, align 4
  br label %180

69:                                               ; preds = %2
  %70 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %71 = call i64 @nfp_prog_current_offset(%struct.nfp_prog* %70)
  %72 = add nsw i64 %71, 14
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = add nsw i64 %73, 2
  store i64 %74, i64* %10, align 8
  %75 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @reg_a(i32 4)
  %78 = load i32, i32* @ALU_OP_ADD_2B, align 4
  %79 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %80 = call i32 @pptr_reg(%struct.nfp_prog* %79)
  %81 = call i32 @emit_alu(%struct.nfp_prog* %75, i32 %76, i32 %77, i32 %78, i32 %80)
  %82 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %83 = call i32 (...) @reg_none()
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @ALU_OP_SUB, align 4
  %86 = load %struct.nfp_bpf_cap_adjust_head*, %struct.nfp_bpf_cap_adjust_head** %8, align 8
  %87 = getelementptr inbounds %struct.nfp_bpf_cap_adjust_head, %struct.nfp_bpf_cap_adjust_head* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @reg_imm(i32 %88)
  %90 = call i32 @emit_alu(%struct.nfp_prog* %82, i32 %83, i32 %84, i32 %85, i32 %89)
  %91 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %92 = load i32, i32* @BR_BLO, align 4
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @emit_br(%struct.nfp_prog* %91, i32 %92, i64 %93, i32 0)
  %95 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %96 = call i32 (...) @reg_none()
  %97 = load %struct.nfp_bpf_cap_adjust_head*, %struct.nfp_bpf_cap_adjust_head** %8, align 8
  %98 = getelementptr inbounds %struct.nfp_bpf_cap_adjust_head, %struct.nfp_bpf_cap_adjust_head* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @reg_imm(i32 %99)
  %101 = load i32, i32* @ALU_OP_SUB, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @emit_alu(%struct.nfp_prog* %95, i32 %96, i32 %100, i32 %101, i32 %102)
  %104 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %105 = load i32, i32* @BR_BLO, align 4
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @emit_br(%struct.nfp_prog* %104, i32 %105, i64 %106, i32 0)
  %108 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %111 = call i32 @plen_reg(%struct.nfp_prog* %110)
  %112 = load i32, i32* @ALU_OP_SUB, align 4
  %113 = call i32 @reg_a(i32 4)
  %114 = call i32 @emit_alu(%struct.nfp_prog* %108, i32 %109, i32 %111, i32 %112, i32 %113)
  %115 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %116 = call i32 (...) @reg_none()
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @ALU_OP_SUB, align 4
  %119 = load i32, i32* @ETH_HLEN, align 4
  %120 = call i32 @reg_imm(i32 %119)
  %121 = call i32 @emit_alu(%struct.nfp_prog* %115, i32 %116, i32 %117, i32 %118, i32 %120)
  %122 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %123 = load i32, i32* @BR_BMI, align 4
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @emit_br(%struct.nfp_prog* %122, i32 %123, i64 %124, i32 0)
  %126 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %127 = call i32 @reg_both(i32 0)
  %128 = call i32 @wrp_immed(%struct.nfp_prog* %126, i32 %127, i32 0)
  %129 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %130 = call i32 @reg_both(i32 1)
  %131 = call i32 @wrp_immed(%struct.nfp_prog* %129, i32 %130, i32 0)
  %132 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %133 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %134 = call i32 @pptr_reg(%struct.nfp_prog* %133)
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @SHF_SC_NONE, align 4
  %137 = call i32 @emit_ld_field(%struct.nfp_prog* %132, i32 %134, i32 3, i32 %135, i32 %136, i32 0)
  %138 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %139 = load i32, i32* @BR_UNC, align 4
  %140 = load i64, i64* %10, align 8
  %141 = call i32 @emit_br(%struct.nfp_prog* %138, i32 %139, i64 %140, i32 2)
  %142 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %143 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %144 = call i32 @plen_reg(%struct.nfp_prog* %143)
  %145 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %146 = call i32 @plen_reg(%struct.nfp_prog* %145)
  %147 = load i32, i32* @ALU_OP_SUB, align 4
  %148 = call i32 @reg_a(i32 4)
  %149 = call i32 @emit_alu(%struct.nfp_prog* %142, i32 %144, i32 %146, i32 %147, i32 %148)
  %150 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %151 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %152 = call i32 @pv_len(%struct.nfp_prog* %151)
  %153 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %154 = call i32 @pv_len(%struct.nfp_prog* %153)
  %155 = load i32, i32* @ALU_OP_SUB, align 4
  %156 = call i32 @reg_a(i32 4)
  %157 = call i32 @emit_alu(%struct.nfp_prog* %150, i32 %152, i32 %154, i32 %155, i32 %156)
  %158 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %159 = load i64, i64* %9, align 8
  %160 = call i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog* %158, i64 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %69
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %3, align 4
  br label %180

165:                                              ; preds = %69
  %166 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %167 = call i32 @reg_both(i32 0)
  %168 = call i32 @wrp_immed(%struct.nfp_prog* %166, i32 %167, i32 -22)
  %169 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %170 = call i32 @reg_both(i32 1)
  %171 = call i32 @wrp_immed(%struct.nfp_prog* %169, i32 %170, i32 -1)
  %172 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %173 = load i64, i64* %10, align 8
  %174 = call i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog* %172, i64 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %165
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %3, align 4
  br label %180

179:                                              ; preds = %165
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %179, %176, %162, %38, %35
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @imm_a(%struct.nfp_prog*) #1

declare dso_local i32 @imm_b(%struct.nfp_prog*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @pptr_reg(%struct.nfp_prog*) #1

declare dso_local i32 @reg_a(i32) #1

declare dso_local i32 @plen_reg(%struct.nfp_prog*) #1

declare dso_local i32 @pv_len(%struct.nfp_prog*) #1

declare dso_local i32 @wrp_immed(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @reg_both(i32) #1

declare dso_local i64 @nfp_prog_current_offset(%struct.nfp_prog*) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @reg_imm(i32) #1

declare dso_local i32 @emit_br(%struct.nfp_prog*, i32, i64, i32) #1

declare dso_local i32 @emit_ld_field(%struct.nfp_prog*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
