; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_mem_op_stack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_mem_op_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@FLAG_INSN_PTR_CALLER_STACK_FRAME = common dso_local global i32 0, align 4
@ALU_OP_ADD = common dso_local global i32 0, align 4
@NFP_CSR_ACT_LM_ADDR3 = common dso_local global i32 0, align 4
@FLAG_INSN_DO_ZEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*, i32, i32, i32, i32, i32, i32 (%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*)* @mem_op_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_op_stack(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 (%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfp_prog*, align 8
  %11 = alloca %struct.nfp_insn_meta*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32 (%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %10, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 (%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* %7, i32 (%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %17, align 8
  %31 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %32 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %11, align 8
  %35 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %33, %37
  %39 = load i32, i32* %13, align 4
  %40 = add i32 %38, %39
  store i32 %40, i32* %18, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %22, align 4
  store i32 255, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 1, i32* %26, align 4
  %41 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %11, align 8
  %42 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %8
  %46 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %11, align 8
  %47 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @FLAG_INSN_PTR_CALLER_STACK_FRAME, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %45, %8
  %53 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %54 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %11, align 8
  %55 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = zext i32 %57 to i64
  %59 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %60 = call i32 @stack_imm(%struct.nfp_prog* %59)
  %61 = call i32 @ur_load_imm_any(%struct.nfp_prog* %53, i64 %58, i32 %60)
  store i32 %61, i32* %23, align 4
  %62 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %63 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %64 = call i32 @imm_b(%struct.nfp_prog* %63)
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @reg_a(i32 %65)
  %67 = load i32, i32* @ALU_OP_ADD, align 4
  %68 = load i32, i32* %23, align 4
  %69 = call i32 @emit_alu(%struct.nfp_prog* %62, i32 %64, i32 %66, i32 %67, i32 %68)
  store i32 1, i32* %22, align 4
  br label %119

70:                                               ; preds = %45
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %12, align 4
  %73 = add i32 %71, %72
  %74 = icmp ule i32 %73, 64
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, i32* %26, align 4
  br label %118

76:                                               ; preds = %70
  %77 = load i32, i32* %18, align 4
  %78 = call i64 @round_down(i32 %77, i32 32)
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add i32 %79, %80
  %82 = sub i32 %81, 1
  %83 = call i64 @round_down(i32 %82, i32 32)
  %84 = icmp eq i64 %78, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %76
  %86 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %87 = load i32, i32* %18, align 4
  %88 = call i64 @round_down(i32 %87, i32 32)
  %89 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %90 = call i32 @stack_imm(%struct.nfp_prog* %89)
  %91 = call i32 @ur_load_imm_any(%struct.nfp_prog* %86, i64 %88, i32 %90)
  store i32 %91, i32* %23, align 4
  %92 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %93 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %94 = call i32 @imm_b(%struct.nfp_prog* %93)
  %95 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %96 = call i32 @stack_reg(%struct.nfp_prog* %95)
  %97 = load i32, i32* @ALU_OP_ADD, align 4
  %98 = load i32, i32* %23, align 4
  %99 = call i32 @emit_alu(%struct.nfp_prog* %92, i32 %94, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %18, align 4
  %101 = urem i32 %100, 32
  store i32 %101, i32* %18, align 4
  br label %117

102:                                              ; preds = %76
  %103 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %104 = load i32, i32* %18, align 4
  %105 = call i64 @round_down(i32 %104, i32 4)
  %106 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %107 = call i32 @stack_imm(%struct.nfp_prog* %106)
  %108 = call i32 @ur_load_imm_any(%struct.nfp_prog* %103, i64 %105, i32 %107)
  store i32 %108, i32* %23, align 4
  %109 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %110 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %111 = call i32 @imm_b(%struct.nfp_prog* %110)
  %112 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %113 = call i32 @stack_reg(%struct.nfp_prog* %112)
  %114 = load i32, i32* @ALU_OP_ADD, align 4
  %115 = load i32, i32* %23, align 4
  %116 = call i32 @emit_alu(%struct.nfp_prog* %109, i32 %111, i32 %113, i32 %114, i32 %115)
  store i32 1, i32* %22, align 4
  br label %117

117:                                              ; preds = %102, %85
  br label %118

118:                                              ; preds = %117, %75
  br label %119

119:                                              ; preds = %118, %52
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* %12, align 4
  %124 = icmp ult i32 %123, 8
  br label %125

125:                                              ; preds = %122, %119
  %126 = phi i1 [ false, %119 ], [ %124, %122 ]
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %20, align 4
  %128 = load i32, i32* %26, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %125
  %131 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %132 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %133 = call i32 @imm_b(%struct.nfp_prog* %132)
  %134 = load i32, i32* @NFP_CSR_ACT_LM_ADDR3, align 4
  %135 = call i32 @emit_csr_wr(%struct.nfp_prog* %131, i32 %133, i32 %134)
  %136 = load i32, i32* %20, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %130
  %139 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %11, align 8
  %140 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @FLAG_INSN_DO_ZEXT, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br label %145

145:                                              ; preds = %138, %130
  %146 = phi i1 [ false, %130 ], [ %144, %138 ]
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 2, i32 3
  store i32 %148, i32* %28, align 4
  %149 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %150 = load i32, i32* %28, align 4
  %151 = call i32 @wrp_nops(%struct.nfp_prog* %149, i32 %150)
  br label %152

152:                                              ; preds = %145, %125
  %153 = load i32, i32* %20, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %157 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %11, align 8
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @wrp_zext(%struct.nfp_prog* %156, %struct.nfp_insn_meta* %157, i32 %158)
  br label %160

160:                                              ; preds = %155, %152
  br label %161

161:                                              ; preds = %220, %160
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %227

164:                                              ; preds = %161
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %25, align 4
  %167 = sub i32 4, %166
  %168 = call i32 @min(i32 %165, i32 %167)
  store i32 %168, i32* %30, align 4
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* %30, align 4
  %171 = add i32 %169, %170
  %172 = load i32, i32* %18, align 4
  %173 = add i32 %172, 1
  %174 = call i32 @round_up(i32 %173, i32 4)
  %175 = call i32 @min(i32 %171, i32 %174)
  store i32 %175, i32* %29, align 4
  %176 = load i32, i32* %29, align 4
  %177 = load i32, i32* %18, align 4
  %178 = sub i32 %176, %177
  store i32 %178, i32* %30, align 4
  %179 = load i32, i32* %30, align 4
  %180 = load i32, i32* %12, align 4
  %181 = icmp eq i32 %179, %180
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %21, align 4
  %183 = load i32, i32* %22, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %164
  %186 = load i32, i32* %18, align 4
  %187 = urem i32 %186, 4
  store i32 %187, i32* %18, align 4
  br label %188

188:                                              ; preds = %185, %164
  %189 = load i32 (%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %17, align 8
  %190 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %25, align 4
  %193 = load i32, i32* %18, align 4
  %194 = load i32, i32* %30, align 4
  %195 = load i32, i32* %19, align 4
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* %24, align 4
  %198 = icmp ne i32 %196, %197
  %199 = zext i1 %198 to i32
  %200 = load i32, i32* %21, align 4
  %201 = load i32, i32* %26, align 4
  %202 = load i32, i32* %22, align 4
  %203 = call i32 %189(%struct.nfp_prog* %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %199, i32 %200, i32 %201, i32 %202)
  store i32 %203, i32* %27, align 4
  %204 = load i32, i32* %27, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %188
  %207 = load i32, i32* %27, align 4
  store i32 %207, i32* %9, align 4
  br label %228

208:                                              ; preds = %188
  %209 = load i32, i32* %14, align 4
  store i32 %209, i32* %24, align 4
  store i32 0, i32* %19, align 4
  %210 = load i32, i32* %30, align 4
  %211 = load i32, i32* %25, align 4
  %212 = add i32 %211, %210
  store i32 %212, i32* %25, align 4
  %213 = load i32, i32* %25, align 4
  %214 = icmp uge i32 %213, 4
  br i1 %214, label %215, label %220

215:                                              ; preds = %208
  %216 = load i32, i32* %25, align 4
  %217 = sub i32 %216, 4
  store i32 %217, i32* %25, align 4
  %218 = load i32, i32* %14, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %14, align 4
  br label %220

220:                                              ; preds = %215, %208
  %221 = load i32, i32* %30, align 4
  %222 = load i32, i32* %12, align 4
  %223 = sub i32 %222, %221
  store i32 %223, i32* %12, align 4
  %224 = load i32, i32* %30, align 4
  %225 = load i32, i32* %18, align 4
  %226 = add i32 %225, %224
  store i32 %226, i32* %18, align 4
  br label %161

227:                                              ; preds = %161
  store i32 0, i32* %9, align 4
  br label %228

228:                                              ; preds = %227, %206
  %229 = load i32, i32* %9, align 4
  ret i32 %229
}

declare dso_local i32 @ur_load_imm_any(%struct.nfp_prog*, i64, i32) #1

declare dso_local i32 @stack_imm(%struct.nfp_prog*) #1

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @imm_b(%struct.nfp_prog*) #1

declare dso_local i32 @reg_a(i32) #1

declare dso_local i64 @round_down(i32, i32) #1

declare dso_local i32 @stack_reg(%struct.nfp_prog*) #1

declare dso_local i32 @emit_csr_wr(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @wrp_nops(%struct.nfp_prog*, i32) #1

declare dso_local i32 @wrp_zext(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
