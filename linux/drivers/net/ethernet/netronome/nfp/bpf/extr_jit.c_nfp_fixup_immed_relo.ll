; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_fixup_immed_relo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_fixup_immed_relo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32* }
%struct.nfp_insn_meta = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"BUG: failed to fix up callee register saving\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*, %struct.nfp_insn_meta*, i32)* @nfp_fixup_immed_relo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_fixup_immed_relo(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_prog*, align 8
  %7 = alloca %struct.nfp_insn_meta*, align 8
  %8 = alloca %struct.nfp_insn_meta*, align 8
  %9 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %6, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %7, align 8
  store %struct.nfp_insn_meta* %2, %struct.nfp_insn_meta** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %11 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %9, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @immed_get_value(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %36

24:                                               ; preds = %4
  %25 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %26 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %8, align 8
  %33 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @immed_set_value(i32* %31, i32 %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %24, %20
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i64 @immed_get_value(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @immed_set_value(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
