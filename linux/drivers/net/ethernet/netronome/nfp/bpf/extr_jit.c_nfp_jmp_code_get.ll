; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_jmp_code_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_jmp_code_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jmp_code_map = type { i32 }
%struct.nfp_insn_meta = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@jmp_code_map = common dso_local global %struct.jmp_code_map* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"no code found for jump instruction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.jmp_code_map* (%struct.nfp_insn_meta*)* @nfp_jmp_code_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.jmp_code_map* @nfp_jmp_code_get(%struct.nfp_insn_meta* %0) #0 {
  %2 = alloca %struct.jmp_code_map*, align 8
  %3 = alloca %struct.nfp_insn_meta*, align 8
  %4 = alloca i32, align 4
  store %struct.nfp_insn_meta* %0, %struct.nfp_insn_meta** %3, align 8
  %5 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %3, align 8
  %6 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @BPF_OP(i32 %8)
  %10 = ashr i32 %9, 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.jmp_code_map*, %struct.jmp_code_map** @jmp_code_map, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.jmp_code_map* %12)
  %14 = icmp uge i32 %11, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load %struct.jmp_code_map*, %struct.jmp_code_map** @jmp_code_map, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.jmp_code_map, %struct.jmp_code_map* %16, i64 %18
  %20 = getelementptr inbounds %struct.jmp_code_map, %struct.jmp_code_map* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %15, %1
  %25 = phi i1 [ true, %1 ], [ %23, %15 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ONCE(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store %struct.jmp_code_map* null, %struct.jmp_code_map** %2, align 8
  br label %35

30:                                               ; preds = %24
  %31 = load %struct.jmp_code_map*, %struct.jmp_code_map** @jmp_code_map, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.jmp_code_map, %struct.jmp_code_map* %31, i64 %33
  store %struct.jmp_code_map* %34, %struct.jmp_code_map** %2, align 8
  br label %35

35:                                               ; preds = %30, %29
  %36 = load %struct.jmp_code_map*, %struct.jmp_code_map** %2, align 8
  ret %struct.jmp_code_map* %36
}

declare dso_local i32 @BPF_OP(i32) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.jmp_code_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
