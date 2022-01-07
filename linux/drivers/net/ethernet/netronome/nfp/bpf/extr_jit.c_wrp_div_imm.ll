; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_div_imm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_div_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.reciprocal_value_adv = type { i32, i32, i32, i64 }

@U32_MAX = common dso_local global i32 0, align 4
@ALU_OP_SUB = common dso_local global i32 0, align 4
@ALU_OP_ADD_C = common dso_local global i32 0, align 4
@SHF_OP_NONE = common dso_local global i32 0, align 4
@SHF_SC_R_SHF = common dso_local global i32 0, align 4
@ALU_OP_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, i32, i32)* @wrp_div_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wrp_div_imm(%struct.nfp_prog* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_prog*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.reciprocal_value_adv, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.reciprocal_value_adv, align 8
  %17 = alloca %struct.reciprocal_value_adv, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @reg_both(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @reg_a(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @reg_a(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @U32_MAX, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @wrp_immed(%struct.nfp_prog* %28, i32 %29, i32 0)
  store i32 0, i32* %4, align 4
  br label %178

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = icmp ugt i32 %32, -2147483648
  br i1 %33, label %34, label %57

34:                                               ; preds = %31
  %35 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %38 = call i32 @imm_b(%struct.nfp_prog* %37)
  %39 = call i32 @ur_load_imm_any(%struct.nfp_prog* %35, i32 %36, i32 %38)
  store i32 %39, i32* %15, align 4
  %40 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %41 = call i32 (...) @reg_none()
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @ALU_OP_SUB, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @emit_alu(%struct.nfp_prog* %40, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %47 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %48 = call i32 @imm_a(%struct.nfp_prog* %47)
  %49 = call i32 @wrp_immed(%struct.nfp_prog* %46, i32 %48, i32 0)
  %50 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %53 = call i32 @imm_a(%struct.nfp_prog* %52)
  %54 = load i32, i32* @ALU_OP_ADD_C, align 4
  %55 = call i32 @reg_imm(i32 0)
  %56 = call i32 @emit_alu(%struct.nfp_prog* %50, i32 %51, i32 %53, i32 %54, i32 %55)
  store i32 0, i32* %4, align 4
  br label %178

57:                                               ; preds = %31
  %58 = load i32, i32* %7, align 4
  call void @reciprocal_value_adv(%struct.reciprocal_value_adv* sret %16, i32 %58, i32 32)
  %59 = bitcast %struct.reciprocal_value_adv* %11 to i8*
  %60 = bitcast %struct.reciprocal_value_adv* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 24, i1 false)
  %61 = getelementptr inbounds %struct.reciprocal_value_adv, %struct.reciprocal_value_adv* %11, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %13, align 4
  %63 = getelementptr inbounds %struct.reciprocal_value_adv, %struct.reciprocal_value_adv* %11, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %57
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = sub i32 0, %72
  %74 = and i32 %71, %73
  %75 = call i32 @fls(i32 %74)
  %76 = sub i32 %75, 1
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %12, align 4
  %79 = lshr i32 %77, %78
  %80 = load i32, i32* %12, align 4
  %81 = sub i32 32, %80
  call void @reciprocal_value_adv(%struct.reciprocal_value_adv* sret %17, i32 %79, i32 %81)
  %82 = bitcast %struct.reciprocal_value_adv* %11 to i8*
  %83 = bitcast %struct.reciprocal_value_adv* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 24, i1 false)
  br label %85

84:                                               ; preds = %66, %57
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %84, %70
  %86 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %87 = getelementptr inbounds %struct.reciprocal_value_adv, %struct.reciprocal_value_adv* %11, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %90 = call i32 @imm_b(%struct.nfp_prog* %89)
  %91 = call i32 @ur_load_imm_any(%struct.nfp_prog* %86, i32 %88, i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %13, align 4
  %94 = shl i32 1, %93
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %85
  %97 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 (...) @reg_none()
  %100 = load i32, i32* @SHF_OP_NONE, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @SHF_SC_R_SHF, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @emit_shf(%struct.nfp_prog* %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103)
  br label %177

105:                                              ; preds = %85
  %106 = getelementptr inbounds %struct.reciprocal_value_adv, %struct.reciprocal_value_adv* %11, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %148

109:                                              ; preds = %105
  %110 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %111 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %112 = call i32 @imm_both(%struct.nfp_prog* %111)
  %113 = call i32 (...) @reg_none()
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @wrp_mul_u32(%struct.nfp_prog* %110, i32 %112, i32 %113, i32 %114, i32 %115, i32 1)
  %117 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @ALU_OP_SUB, align 4
  %121 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %122 = call i32 @imm_b(%struct.nfp_prog* %121)
  %123 = call i32 @emit_alu(%struct.nfp_prog* %117, i32 %118, i32 %119, i32 %120, i32 %122)
  %124 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call i32 (...) @reg_none()
  %127 = load i32, i32* @SHF_OP_NONE, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @SHF_SC_R_SHF, align 4
  %130 = call i32 @emit_shf(%struct.nfp_prog* %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 1)
  %131 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @ALU_OP_ADD, align 4
  %135 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %136 = call i32 @imm_b(%struct.nfp_prog* %135)
  %137 = call i32 @emit_alu(%struct.nfp_prog* %131, i32 %132, i32 %133, i32 %134, i32 %136)
  %138 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %139 = load i32, i32* %8, align 4
  %140 = call i32 (...) @reg_none()
  %141 = load i32, i32* @SHF_OP_NONE, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @SHF_SC_R_SHF, align 4
  %144 = getelementptr inbounds %struct.reciprocal_value_adv, %struct.reciprocal_value_adv* %11, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %145, 1
  %147 = call i32 @emit_shf(%struct.nfp_prog* %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %146)
  br label %176

148:                                              ; preds = %105
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %148
  %152 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i32 (...) @reg_none()
  %155 = load i32, i32* @SHF_OP_NONE, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @SHF_SC_R_SHF, align 4
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @emit_shf(%struct.nfp_prog* %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %151, %148
  %161 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %162 = load i32, i32* %8, align 4
  %163 = call i32 (...) @reg_none()
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @wrp_mul_u32(%struct.nfp_prog* %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 1)
  %167 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i32 (...) @reg_none()
  %170 = load i32, i32* @SHF_OP_NONE, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @SHF_SC_R_SHF, align 4
  %173 = getelementptr inbounds %struct.reciprocal_value_adv, %struct.reciprocal_value_adv* %11, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @emit_shf(%struct.nfp_prog* %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %174)
  br label %176

176:                                              ; preds = %160, %109
  br label %177

177:                                              ; preds = %176, %96
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %177, %34, %27
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @reg_both(i32) #1

declare dso_local i32 @reg_a(i32) #1

declare dso_local i32 @wrp_immed(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @ur_load_imm_any(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @imm_b(%struct.nfp_prog*) #1

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @imm_a(%struct.nfp_prog*) #1

declare dso_local i32 @reg_imm(i32) #1

declare dso_local void @reciprocal_value_adv(%struct.reciprocal_value_adv* sret, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @emit_shf(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wrp_mul_u32(%struct.nfp_prog*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @imm_both(%struct.nfp_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
