; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_outro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_outro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*)* @nfp_outro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_outro(%struct.nfp_prog* %0) #0 {
  %2 = alloca %struct.nfp_prog*, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %2, align 8
  %3 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %4 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %12 [
    i32 129, label %6
    i32 128, label %9
  ]

6:                                                ; preds = %1
  %7 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %8 = call i32 @nfp_outro_tc_da(%struct.nfp_prog* %7)
  br label %14

9:                                                ; preds = %1
  %10 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %11 = call i32 @nfp_outro_xdp(%struct.nfp_prog* %10)
  br label %14

12:                                               ; preds = %1
  %13 = call i32 @WARN_ON(i32 1)
  br label %14

14:                                               ; preds = %12, %9, %6
  %15 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %16 = call i32 @nfp_prog_needs_callee_reg_save(%struct.nfp_prog* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %24

19:                                               ; preds = %14
  %20 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %21 = call i32 @nfp_push_callee_registers(%struct.nfp_prog* %20)
  %22 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %23 = call i32 @nfp_pop_callee_registers(%struct.nfp_prog* %22)
  br label %24

24:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @nfp_outro_tc_da(%struct.nfp_prog*) #1

declare dso_local i32 @nfp_outro_xdp(%struct.nfp_prog*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nfp_prog_needs_callee_reg_save(%struct.nfp_prog*) #1

declare dso_local i32 @nfp_push_callee_registers(%struct.nfp_prog*) #1

declare dso_local i32 @nfp_pop_callee_registers(%struct.nfp_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
