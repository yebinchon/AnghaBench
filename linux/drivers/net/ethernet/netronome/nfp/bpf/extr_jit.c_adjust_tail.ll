; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_adjust_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_adjust_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { i32 }

@STATIC_REG_PKT_LEN = common dso_local global i32 0, align 4
@ALU_OP_ADD = common dso_local global i32 0, align 4
@BR_BCC = common dso_local global i32 0, align 4
@ALU_OP_SUB = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@BR_BMI = common dso_local global i32 0, align 4
@BR_UNC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @adjust_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_tail(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca %struct.nfp_insn_meta*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %5, align 8
  %10 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %11 = call i64 @plen_reg(%struct.nfp_prog* %10)
  %12 = load i32, i32* @STATIC_REG_PKT_LEN, align 4
  %13 = call i64 @reg_b(i32 %12)
  %14 = icmp ne i64 %11, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUILD_BUG_ON(i32 %15)
  %17 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %18 = call i64 @imm_a(%struct.nfp_prog* %17)
  store i64 %18, i64* %8, align 8
  %19 = call i64 @reg_a(i32 4)
  store i64 %19, i64* %9, align 8
  %20 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %21 = call i64 @nfp_prog_current_offset(%struct.nfp_prog* %20)
  %22 = add nsw i64 %21, 9
  store i64 %22, i64* %6, align 8
  %23 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %24 = call i64 @nfp_prog_current_offset(%struct.nfp_prog* %23)
  %25 = add nsw i64 %24, 11
  store i64 %25, i64* %7, align 8
  %26 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %29 = call i64 @plen_reg(%struct.nfp_prog* %28)
  %30 = load i32, i32* @ALU_OP_ADD, align 4
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @emit_alu(%struct.nfp_prog* %26, i64 %27, i64 %29, i32 %30, i64 %31)
  %33 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %34 = load i32, i32* @BR_BCC, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @emit_br(%struct.nfp_prog* %33, i32 %34, i64 %35, i32 0)
  %37 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %38 = call i64 (...) @reg_none()
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* @ALU_OP_SUB, align 4
  %41 = load i32, i32* @ETH_HLEN, align 4
  %42 = call i64 @reg_imm(i32 %41)
  %43 = call i32 @emit_alu(%struct.nfp_prog* %37, i64 %38, i64 %39, i32 %40, i64 %42)
  %44 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %45 = load i32, i32* @BR_BMI, align 4
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @emit_br(%struct.nfp_prog* %44, i32 %45, i64 %46, i32 0)
  %48 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %49 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %50 = call i64 @plen_reg(%struct.nfp_prog* %49)
  %51 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %52 = call i64 @plen_reg(%struct.nfp_prog* %51)
  %53 = load i32, i32* @ALU_OP_ADD, align 4
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @emit_alu(%struct.nfp_prog* %48, i64 %50, i64 %52, i32 %53, i64 %54)
  %56 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %57 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %58 = call i64 @pv_len(%struct.nfp_prog* %57)
  %59 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %60 = call i64 @pv_len(%struct.nfp_prog* %59)
  %61 = load i32, i32* @ALU_OP_ADD, align 4
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @emit_alu(%struct.nfp_prog* %56, i64 %58, i64 %60, i32 %61, i64 %62)
  %64 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %65 = load i32, i32* @BR_UNC, align 4
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @emit_br(%struct.nfp_prog* %64, i32 %65, i64 %66, i32 2)
  %68 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %69 = call i32 @reg_both(i32 0)
  %70 = call i32 @wrp_immed(%struct.nfp_prog* %68, i32 %69, i32 0)
  %71 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %72 = call i32 @reg_both(i32 1)
  %73 = call i32 @wrp_immed(%struct.nfp_prog* %71, i32 %72, i32 0)
  %74 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog* %74, i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %2
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %96

81:                                               ; preds = %2
  %82 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %83 = call i32 @reg_both(i32 0)
  %84 = call i32 @wrp_immed(%struct.nfp_prog* %82, i32 %83, i32 -22)
  %85 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %86 = call i32 @reg_both(i32 1)
  %87 = call i32 @wrp_immed(%struct.nfp_prog* %85, i32 %86, i32 -1)
  %88 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog* %88, i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %81
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %96

95:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %92, %78
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @plen_reg(%struct.nfp_prog*) #1

declare dso_local i64 @reg_b(i32) #1

declare dso_local i64 @imm_a(%struct.nfp_prog*) #1

declare dso_local i64 @reg_a(i32) #1

declare dso_local i64 @nfp_prog_current_offset(%struct.nfp_prog*) #1

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i64, i64, i32, i64) #1

declare dso_local i32 @emit_br(%struct.nfp_prog*, i32, i64, i32) #1

declare dso_local i64 @reg_none(...) #1

declare dso_local i64 @reg_imm(i32) #1

declare dso_local i64 @pv_len(%struct.nfp_prog*) #1

declare dso_local i32 @wrp_immed(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @reg_both(i32) #1

declare dso_local i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
