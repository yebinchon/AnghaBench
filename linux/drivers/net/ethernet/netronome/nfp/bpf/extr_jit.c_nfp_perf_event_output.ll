; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_perf_event_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_perf_event_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BR_UNC = common dso_local global i32 0, align 4
@BR_OFF_RELO = common dso_local global i64 0, align 8
@RELO_BR_HELPER = common dso_local global i32 0, align 4
@RELO_IMMED_REL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @nfp_perf_event_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_perf_event_output(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca %struct.nfp_insn_meta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %5, align 8
  %8 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %9 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %10 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %14 = call i32 @imm_a(%struct.nfp_prog* %13)
  %15 = call i32 @ur_load_imm_any(%struct.nfp_prog* %8, i32 %12, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %17 = call i64 @nfp_prog_current_offset(%struct.nfp_prog* %16)
  %18 = add nsw i64 %17, 3
  store i64 %18, i64* %7, align 8
  %19 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %20 = load i32, i32* @BR_UNC, align 4
  %21 = load i64, i64* @BR_OFF_RELO, align 8
  %22 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %23 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load i32, i32* @RELO_BR_HELPER, align 4
  %27 = call i32 @emit_br_relo(%struct.nfp_prog* %19, i32 %20, i64 %25, i32 2, i32 %26)
  %28 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %29 = call i32 @reg_a(i32 1)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @wrp_mov(%struct.nfp_prog* %28, i32 %29, i32 %30)
  %32 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %33 = call i32 @reg_b(i32 0)
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* @RELO_IMMED_REL, align 4
  %36 = call i32 @wrp_immed_relo(%struct.nfp_prog* %32, i32 %33, i64 %34, i32 %35)
  %37 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog* %37, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @ur_load_imm_any(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @imm_a(%struct.nfp_prog*) #1

declare dso_local i64 @nfp_prog_current_offset(%struct.nfp_prog*) #1

declare dso_local i32 @emit_br_relo(%struct.nfp_prog*, i32, i64, i32, i32) #1

declare dso_local i32 @wrp_mov(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @reg_a(i32) #1

declare dso_local i32 @wrp_immed_relo(%struct.nfp_prog*, i32, i64, i32) #1

declare dso_local i32 @reg_b(i32) #1

declare dso_local i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
