; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_mem_stx4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_mem_stx4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i64 }
%struct.nfp_insn_meta = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PTR_TO_CTX = common dso_local global i64 0, align 8
@BPF_PROG_TYPE_XDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @mem_stx4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_stx4(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca %struct.nfp_insn_meta*, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %5, align 8
  %6 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %7 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PTR_TO_CTX, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %14 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BPF_PROG_TYPE_XDP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %20 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %21 = call i32 @mem_stx_xdp(%struct.nfp_prog* %19, %struct.nfp_insn_meta* %20)
  store i32 %21, i32* %3, align 4
  br label %27

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %25 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %26 = call i32 @mem_stx(%struct.nfp_prog* %24, %struct.nfp_insn_meta* %25, i32 4)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @mem_stx_xdp(%struct.nfp_prog*, %struct.nfp_insn_meta*) #1

declare dso_local i32 @mem_stx(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
