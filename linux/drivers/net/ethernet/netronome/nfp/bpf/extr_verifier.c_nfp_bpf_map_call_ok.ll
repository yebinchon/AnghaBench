; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_map_call_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_map_call_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.nfp_insn_meta = type { i32 }
%struct.bpf_reg_state = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"%s: not supported by FW\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.bpf_verifier_env*, %struct.nfp_insn_meta*, i32, %struct.bpf_reg_state*)* @nfp_bpf_map_call_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_map_call_ok(i8* %0, %struct.bpf_verifier_env* %1, %struct.nfp_insn_meta* %2, i32 %3, %struct.bpf_reg_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bpf_verifier_env*, align 8
  %9 = alloca %struct.nfp_insn_meta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bpf_reg_state*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.bpf_verifier_env* %1, %struct.bpf_verifier_env** %8, align 8
  store %struct.nfp_insn_meta* %2, %struct.nfp_insn_meta** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.bpf_reg_state* %4, %struct.bpf_reg_state** %11, align 8
  %12 = load i32, i32* %10, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @pr_vlog(%struct.bpf_verifier_env* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 0, i32* %6, align 4
  br label %19

18:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i32, i32* %6, align 4
  ret i32 %20
}

declare dso_local i32 @pr_vlog(%struct.bpf_verifier_env*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
