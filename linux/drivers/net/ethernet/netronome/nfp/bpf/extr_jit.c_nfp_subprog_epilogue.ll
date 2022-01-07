; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_subprog_epilogue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_subprog_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.nfp_insn_meta = type { i64 }

@BR_UNC = common dso_local global i32 0, align 4
@BR_OFF_RELO = common dso_local global i32 0, align 4
@RELO_BR_GO_CALL_POP_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @nfp_subprog_epilogue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_subprog_epilogue(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca %struct.nfp_prog*, align 8
  %4 = alloca %struct.nfp_insn_meta*, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %3, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %4, align 8
  %5 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %6 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %9 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %17 = load i32, i32* @BR_UNC, align 4
  %18 = load i32, i32* @BR_OFF_RELO, align 4
  %19 = load i32, i32* @RELO_BR_GO_CALL_POP_REGS, align 4
  %20 = call i32 @emit_br_relo(%struct.nfp_prog* %16, i32 %17, i32 %18, i32 1, i32 %19)
  %21 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %22 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %23 = call i32 @ret_reg(%struct.nfp_prog* %22)
  %24 = call i32 @reg_lm(i32 0, i32 0)
  %25 = call i32 @wrp_mov(%struct.nfp_prog* %21, i32 %23, i32 %24)
  br label %36

26:                                               ; preds = %2
  %27 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %28 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %29 = call i32 @ret_reg(%struct.nfp_prog* %28)
  %30 = call i32 @reg_lm(i32 0, i32 0)
  %31 = call i32 @wrp_mov(%struct.nfp_prog* %27, i32 %29, i32 %30)
  %32 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %33 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %34 = call i32 @ret_reg(%struct.nfp_prog* %33)
  %35 = call i32 @emit_rtn(%struct.nfp_prog* %32, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %26, %15
  ret i32 0
}

declare dso_local i32 @emit_br_relo(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @wrp_mov(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @ret_reg(%struct.nfp_prog*) #1

declare dso_local i32 @reg_lm(i32, i32) #1

declare dso_local i32 @emit_rtn(%struct.nfp_prog*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
