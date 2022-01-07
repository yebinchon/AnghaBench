; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_prog_confirm_current_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_prog_confirm_current_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, i32)* @nfp_prog_confirm_current_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %7 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %21

11:                                               ; preds = %2
  %12 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %13 = call i32 @nfp_prog_current_offset(%struct.nfp_prog* %12)
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON_ONCE(i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %11, %10
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @nfp_prog_current_offset(%struct.nfp_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
