; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_intro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_intro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }

@ALU_OP_AND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*)* @nfp_intro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_intro(%struct.nfp_prog* %0) #0 {
  %2 = alloca %struct.nfp_prog*, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %2, align 8
  %3 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %4 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %5 = call i32 @plen_reg(%struct.nfp_prog* %4)
  %6 = call i32 @GENMASK(i32 13, i32 0)
  %7 = call i32 @wrp_immed(%struct.nfp_prog* %3, i32 %5, i32 %6)
  %8 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %9 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %10 = call i32 @plen_reg(%struct.nfp_prog* %9)
  %11 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %12 = call i32 @plen_reg(%struct.nfp_prog* %11)
  %13 = load i32, i32* @ALU_OP_AND, align 4
  %14 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %15 = call i32 @pv_len(%struct.nfp_prog* %14)
  %16 = call i32 @emit_alu(%struct.nfp_prog* %8, i32 %10, i32 %12, i32 %13, i32 %15)
  ret void
}

declare dso_local i32 @wrp_immed(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @plen_reg(%struct.nfp_prog*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @pv_len(%struct.nfp_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
