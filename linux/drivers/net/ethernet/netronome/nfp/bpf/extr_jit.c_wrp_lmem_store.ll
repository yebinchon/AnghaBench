; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_lmem_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_lmem_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@RE_REG_LM_IDX_MAX = common dso_local global i32 0, align 4
@SHF_SC_NONE = common dso_local global i32 0, align 4
@SHF_SC_L_SHF = common dso_local global i32 0, align 4
@SHF_SC_R_SHF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @wrp_lmem_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wrp_lmem_store(%struct.nfp_prog* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfp_prog*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
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
  store %struct.nfp_prog* %0, %struct.nfp_prog** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %29 = load i32, i32* %21, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %10
  %32 = load i32, i32* %18, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %19, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %34, %31, %10
  %39 = phi i1 [ false, %31 ], [ false, %10 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %22, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %16, align 4
  %43 = add i32 %41, %42
  %44 = icmp ugt i32 %43, 4
  br i1 %44, label %51, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %15, align 4
  %47 = srem i32 %46, 4
  %48 = load i32, i32* %16, align 4
  %49 = add i32 %47, %48
  %50 = icmp ugt i32 %49, 4
  br label %51

51:                                               ; preds = %45, %38
  %52 = phi i1 [ true, %38 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  %54 = call i64 @WARN_ON_ONCE(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EOPNOTSUPP, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %11, align 4
  br label %196

59:                                               ; preds = %51
  %60 = load i32, i32* %15, align 4
  %61 = sdiv i32 %60, 4
  store i32 %61, i32* %23, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp eq i32 %62, 4
  br i1 %63, label %64, label %82

64:                                               ; preds = %59
  %65 = load %struct.nfp_prog*, %struct.nfp_prog** %12, align 8
  %66 = load i32, i32* %22, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 @reg_lm_inc(i32 3)
  br label %77

70:                                               ; preds = %64
  %71 = load i32, i32* %20, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 3, i32 0
  %75 = load i32, i32* %23, align 4
  %76 = call i32 @reg_lm(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %68
  %78 = phi i32 [ %69, %68 ], [ %76, %70 ]
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @reg_b(i32 %79)
  %81 = call i32 @wrp_mov(%struct.nfp_prog* %65, i32 %78, i32 %80)
  store i32 0, i32* %11, align 4
  br label %196

82:                                               ; preds = %59
  %83 = load i32, i32* %20, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* %23, align 4
  %87 = load i32, i32* @RE_REG_LM_IDX_MAX, align 4
  %88 = icmp ugt i32 %86, %87
  br label %89

89:                                               ; preds = %85, %82
  %90 = phi i1 [ false, %82 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  %92 = call i64 @WARN_ON_ONCE(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @EOPNOTSUPP, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %11, align 4
  br label %196

97:                                               ; preds = %89
  %98 = load i32, i32* %15, align 4
  %99 = srem i32 %98, 4
  store i32 %99, i32* %24, align 4
  %100 = load i32, i32* %16, align 4
  %101 = shl i32 1, %100
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* %28, align 4
  %103 = load i32, i32* %24, align 4
  %104 = load i32, i32* %28, align 4
  %105 = shl i32 %104, %103
  store i32 %105, i32* %28, align 4
  %106 = load i32, i32* %28, align 4
  %107 = icmp ugt i32 %106, 15
  %108 = zext i1 %107 to i32
  %109 = call i64 @WARN_ON_ONCE(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %97
  %112 = load i32, i32* @EOPNOTSUPP, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %11, align 4
  br label %196

114:                                              ; preds = %97
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %24, align 4
  %117 = sub i32 %115, %116
  %118 = call i32 @abs(i32 %117)
  %119 = mul nsw i32 %118, 8
  store i32 %119, i32* %27, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %24, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = load i32, i32* @SHF_SC_NONE, align 4
  store i32 %124, i32* %25, align 4
  br label %136

125:                                              ; preds = %114
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %24, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32, i32* %27, align 4
  %131 = sub nsw i32 32, %130
  store i32 %131, i32* %27, align 4
  %132 = load i32, i32* @SHF_SC_L_SHF, align 4
  store i32 %132, i32* %25, align 4
  br label %135

133:                                              ; preds = %125
  %134 = load i32, i32* @SHF_SC_R_SHF, align 4
  store i32 %134, i32* %25, align 4
  br label %135

135:                                              ; preds = %133, %129
  br label %136

136:                                              ; preds = %135, %123
  %137 = load i32, i32* %23, align 4
  %138 = load i32, i32* @RE_REG_LM_IDX_MAX, align 4
  %139 = icmp ule i32 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %136
  %141 = load i32, i32* %20, align 4
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 3, i32 0
  %145 = load i32, i32* %23, align 4
  %146 = call i32 @reg_lm(i32 %144, i32 %145)
  store i32 %146, i32* %26, align 4
  br label %162

147:                                              ; preds = %136
  %148 = load %struct.nfp_prog*, %struct.nfp_prog** %12, align 8
  %149 = call i32 @imm_a(%struct.nfp_prog* %148)
  store i32 %149, i32* %26, align 4
  %150 = load i32, i32* %17, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %147
  %153 = load i32, i32* %19, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %152, %147
  %156 = load %struct.nfp_prog*, %struct.nfp_prog** %12, align 8
  %157 = load i32, i32* %26, align 4
  %158 = load i32, i32* %23, align 4
  %159 = call i32 @reg_lm(i32 0, i32 %158)
  %160 = call i32 @wrp_mov(%struct.nfp_prog* %156, i32 %157, i32 %159)
  br label %161

161:                                              ; preds = %155, %152
  br label %162

162:                                              ; preds = %161, %140
  %163 = load %struct.nfp_prog*, %struct.nfp_prog** %12, align 8
  %164 = load i32, i32* %26, align 4
  %165 = load i32, i32* %28, align 4
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @reg_b(i32 %166)
  %168 = load i32, i32* %25, align 4
  %169 = load i32, i32* %27, align 4
  %170 = call i32 @emit_ld_field(%struct.nfp_prog* %163, i32 %164, i32 %165, i32 %167, i32 %168, i32 %169)
  %171 = load i32, i32* %18, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %162
  %174 = load i32, i32* %19, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %173, %162
  %177 = load i32, i32* %23, align 4
  %178 = load i32, i32* @RE_REG_LM_IDX_MAX, align 4
  %179 = icmp ugt i32 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %176
  %181 = load %struct.nfp_prog*, %struct.nfp_prog** %12, align 8
  %182 = load i32, i32* %23, align 4
  %183 = call i32 @reg_lm(i32 0, i32 %182)
  %184 = load i32, i32* %26, align 4
  %185 = call i32 @wrp_mov(%struct.nfp_prog* %181, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %180, %176
  %187 = load i32, i32* %22, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load %struct.nfp_prog*, %struct.nfp_prog** %12, align 8
  %191 = call i32 (...) @reg_none()
  %192 = call i32 @reg_lm_inc(i32 3)
  %193 = call i32 @wrp_mov(%struct.nfp_prog* %190, i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %189, %186
  br label %195

195:                                              ; preds = %194, %173
  store i32 0, i32* %11, align 4
  br label %196

196:                                              ; preds = %195, %111, %94, %77, %56
  %197 = load i32, i32* %11, align 4
  ret i32 %197
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @wrp_mov(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @reg_lm_inc(i32) #1

declare dso_local i32 @reg_lm(i32, i32) #1

declare dso_local i32 @reg_b(i32) #1

declare dso_local i32 @abs(i32) #1

declare dso_local i32 @imm_a(%struct.nfp_prog*) #1

declare dso_local i32 @emit_ld_field(%struct.nfp_prog*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @reg_none(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
