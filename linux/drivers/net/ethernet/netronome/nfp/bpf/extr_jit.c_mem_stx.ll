; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_mem_stx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_mem_stx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }

@PTR_TO_PACKET = common dso_local global i64 0, align 8
@PTR_TO_STACK = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*, i32)* @mem_stx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_stx(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_prog*, align 8
  %6 = alloca %struct.nfp_insn_meta*, align 8
  %7 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %5, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %9 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PTR_TO_PACKET, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %16 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @mem_stx_data(%struct.nfp_prog* %15, %struct.nfp_insn_meta* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %44

19:                                               ; preds = %3
  %20 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %21 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PTR_TO_STACK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %28 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %31 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %35 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %33, %38
  %40 = call i32 @mem_stx_stack(%struct.nfp_prog* %27, %struct.nfp_insn_meta* %28, i32 %29, i64 %39)
  store i32 %40, i32* %4, align 4
  br label %44

41:                                               ; preds = %19
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %26, %14
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @mem_stx_data(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32) #1

declare dso_local i32 @mem_stx_stack(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
