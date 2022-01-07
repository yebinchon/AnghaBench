; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_shr_reg64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_shr_reg64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { i32, i32, %struct.bpf_insn }
%struct.bpf_insn = type { i32, i32 }

@BR_UNC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @shr_reg64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shr_reg64(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca %struct.nfp_insn_meta*, align 8
  %6 = alloca %struct.bpf_insn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %5, align 8
  %13 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %14 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %13, i32 0, i32 2
  store %struct.bpf_insn* %14, %struct.bpf_insn** %6, align 8
  %15 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %16 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 2
  store i32 %18, i32* %9, align 4
  %19 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %20 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %23 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @__shr_imm64(%struct.nfp_prog* %29, i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %99

33:                                               ; preds = %2
  %34 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %35 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 2
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 32
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @shr_reg64_lt32(%struct.nfp_prog* %41, i32 %42, i32 %43)
  br label %98

45:                                               ; preds = %33
  %46 = load i32, i32* %7, align 4
  %47 = icmp sge i32 %46, 32
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @shr_reg64_ge32(%struct.nfp_prog* %49, i32 %50, i32 %51)
  br label %97

53:                                               ; preds = %45
  %54 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %55 = call i64 @nfp_prog_current_offset(%struct.nfp_prog* %54)
  %56 = add nsw i64 %55, 6
  store i64 %56, i64* %11, align 8
  %57 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @reg_a(i32 %58)
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @emit_br_bset(%struct.nfp_prog* %57, i32 %59, i32 5, i64 %60, i32 0)
  %62 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @shr_reg64_lt32_low(%struct.nfp_prog* %62, i32 %63, i32 %64)
  %66 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %67 = call i64 @nfp_prog_current_offset(%struct.nfp_prog* %66)
  %68 = add nsw i64 %67, 6
  store i64 %68, i64* %12, align 8
  %69 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %70 = load i32, i32* @BR_UNC, align 4
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @emit_br(%struct.nfp_prog* %69, i32 %70, i64 %71, i32 2)
  %73 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @shr_reg64_lt32_high(%struct.nfp_prog* %73, i32 %74, i32 %75)
  %77 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog* %77, i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %53
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %99

84:                                               ; preds = %53
  %85 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @shr_reg64_ge32(%struct.nfp_prog* %85, i32 %86, i32 %87)
  %89 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %90 = load i64, i64* %12, align 8
  %91 = call i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog* %89, i64 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %84
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %99

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %48
  br label %98

98:                                               ; preds = %97, %40
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %93, %81, %28
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @__shr_imm64(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @shr_reg64_lt32(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @shr_reg64_ge32(%struct.nfp_prog*, i32, i32) #1

declare dso_local i64 @nfp_prog_current_offset(%struct.nfp_prog*) #1

declare dso_local i32 @emit_br_bset(%struct.nfp_prog*, i32, i32, i64, i32) #1

declare dso_local i32 @reg_a(i32) #1

declare dso_local i32 @shr_reg64_lt32_low(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @emit_br(%struct.nfp_prog*, i32, i64, i32) #1

declare dso_local i32 @shr_reg64_lt32_high(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
