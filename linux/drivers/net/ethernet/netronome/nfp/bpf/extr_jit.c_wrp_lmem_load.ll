; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_lmem_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_lmem_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@RE_REG_LM_IDX_MAX = common dso_local global i32 0, align 4
@SHF_SC_NONE = common dso_local global i32 0, align 4
@SHF_SC_L_SHF = common dso_local global i32 0, align 4
@SHF_SC_R_SHF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @wrp_lmem_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wrp_lmem_load(%struct.nfp_prog* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
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
  br label %180

59:                                               ; preds = %51
  %60 = load i32, i32* %15, align 4
  %61 = sdiv i32 %60, 4
  store i32 %61, i32* %23, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp eq i32 %62, 4
  br i1 %63, label %64, label %82

64:                                               ; preds = %59
  %65 = load %struct.nfp_prog*, %struct.nfp_prog** %12, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @reg_both(i32 %66)
  %68 = load i32, i32* %22, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 @reg_lm_inc(i32 3)
  br label %79

72:                                               ; preds = %64
  %73 = load i32, i32* %20, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 3, i32 0
  %77 = load i32, i32* %23, align 4
  %78 = call i32 @reg_lm(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %72, %70
  %80 = phi i32 [ %71, %70 ], [ %78, %72 ]
  %81 = call i32 @wrp_mov(%struct.nfp_prog* %65, i32 %67, i32 %80)
  store i32 0, i32* %11, align 4
  br label %180

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
  br label %180

97:                                               ; preds = %89
  %98 = load i32, i32* %15, align 4
  %99 = srem i32 %98, 4
  store i32 %99, i32* %24, align 4
  %100 = load i32, i32* %16, align 4
  %101 = shl i32 1, %100
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* %28, align 4
  %103 = load i32, i32* %14, align 4
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
  br label %180

114:                                              ; preds = %97
  %115 = load i32, i32* %24, align 4
  %116 = load i32, i32* %14, align 4
  %117 = sub i32 %115, %116
  %118 = call i32 @abs(i32 %117)
  %119 = mul nsw i32 %118, 8
  store i32 %119, i32* %27, align 4
  %120 = load i32, i32* %24, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = load i32, i32* @SHF_SC_NONE, align 4
  store i32 %124, i32* %25, align 4
  br label %136

125:                                              ; preds = %114
  %126 = load i32, i32* %24, align 4
  %127 = load i32, i32* %14, align 4
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
  %153 = load i32, i32* %18, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %161, label %155

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
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @reg_both(i32 %164)
  %166 = load i32, i32* %28, align 4
  %167 = load i32, i32* %26, align 4
  %168 = load i32, i32* %25, align 4
  %169 = load i32, i32* %27, align 4
  %170 = load i32, i32* %18, align 4
  %171 = call i32 @emit_ld_field_any(%struct.nfp_prog* %163, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* %22, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %162
  %175 = load %struct.nfp_prog*, %struct.nfp_prog** %12, align 8
  %176 = call i32 (...) @reg_none()
  %177 = call i32 @reg_lm_inc(i32 3)
  %178 = call i32 @wrp_mov(%struct.nfp_prog* %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %174, %162
  store i32 0, i32* %11, align 4
  br label %180

180:                                              ; preds = %179, %111, %94, %79, %56
  %181 = load i32, i32* %11, align 4
  ret i32 %181
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @wrp_mov(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @reg_both(i32) #1

declare dso_local i32 @reg_lm_inc(i32) #1

declare dso_local i32 @reg_lm(i32, i32) #1

declare dso_local i32 @abs(i32) #1

declare dso_local i32 @imm_a(%struct.nfp_prog*) #1

declare dso_local i32 @emit_ld_field_any(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @reg_none(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
