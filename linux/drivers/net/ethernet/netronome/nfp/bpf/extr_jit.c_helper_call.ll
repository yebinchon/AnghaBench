; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_helper_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_helper_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"verifier allowed unsupported function\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @helper_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @helper_call(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca %struct.nfp_insn_meta*, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %5, align 8
  %6 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %7 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %30 [
    i32 129, label %10
    i32 128, label %14
    i32 132, label %18
    i32 131, label %18
    i32 133, label %18
    i32 134, label %22
    i32 130, label %26
  ]

10:                                               ; preds = %2
  %11 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %12 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %13 = call i32 @adjust_head(%struct.nfp_prog* %11, %struct.nfp_insn_meta* %12)
  store i32 %13, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %16 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %17 = call i32 @adjust_tail(%struct.nfp_prog* %15, %struct.nfp_insn_meta* %16)
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %2, %2, %2
  %19 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %20 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %21 = call i32 @map_call_stack_common(%struct.nfp_prog* %19, %struct.nfp_insn_meta* %20)
  store i32 %21, i32* %3, align 4
  br label %34

22:                                               ; preds = %2
  %23 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %24 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %25 = call i32 @nfp_get_prandom_u32(%struct.nfp_prog* %23, %struct.nfp_insn_meta* %24)
  store i32 %25, i32* %3, align 4
  br label %34

26:                                               ; preds = %2
  %27 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %28 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %29 = call i32 @nfp_perf_event_output(%struct.nfp_prog* %27, %struct.nfp_insn_meta* %28)
  store i32 %29, i32* %3, align 4
  br label %34

30:                                               ; preds = %2
  %31 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %26, %22, %18, %14, %10
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @adjust_head(%struct.nfp_prog*, %struct.nfp_insn_meta*) #1

declare dso_local i32 @adjust_tail(%struct.nfp_prog*, %struct.nfp_insn_meta*) #1

declare dso_local i32 @map_call_stack_common(%struct.nfp_prog*, %struct.nfp_insn_meta*) #1

declare dso_local i32 @nfp_get_prandom_u32(%struct.nfp_prog*, %struct.nfp_insn_meta*) #1

declare dso_local i32 @nfp_perf_event_output(%struct.nfp_prog*, %struct.nfp_insn_meta*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
