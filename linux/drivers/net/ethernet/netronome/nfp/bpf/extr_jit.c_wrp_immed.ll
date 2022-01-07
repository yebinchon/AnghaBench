; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_immed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_immed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }

@IMMED_WIDTH_ALL = common dso_local global i32 0, align 4
@IMMED_SHIFT_0B = common dso_local global i32 0, align 4
@IMMED_WIDTH_WORD = common dso_local global i32 0, align 4
@IMMED_SHIFT_2B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*, i32, i32)* @wrp_immed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wrp_immed(%struct.nfp_prog* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @pack_immed(i32 %9, i32* %8, i32* %7)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @IMMED_WIDTH_ALL, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @emit_immed(%struct.nfp_prog* %13, i32 %14, i32 %15, i32 %16, i32 0, i32 %17)
  br label %47

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = xor i32 %20, -1
  %22 = call i64 @pack_immed(i32 %21, i32* %8, i32* %7)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @IMMED_WIDTH_ALL, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @emit_immed(%struct.nfp_prog* %25, i32 %26, i32 %27, i32 %28, i32 1, i32 %29)
  br label %46

31:                                               ; preds = %19
  %32 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 65535
  %36 = load i32, i32* @IMMED_WIDTH_ALL, align 4
  %37 = load i32, i32* @IMMED_SHIFT_0B, align 4
  %38 = call i32 @emit_immed(%struct.nfp_prog* %32, i32 %33, i32 %35, i32 %36, i32 0, i32 %37)
  %39 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 16
  %43 = load i32, i32* @IMMED_WIDTH_WORD, align 4
  %44 = load i32, i32* @IMMED_SHIFT_2B, align 4
  %45 = call i32 @emit_immed(%struct.nfp_prog* %39, i32 %40, i32 %42, i32 %43, i32 0, i32 %44)
  br label %46

46:                                               ; preds = %31, %24
  br label %47

47:                                               ; preds = %46, %12
  ret void
}

declare dso_local i64 @pack_immed(i32, i32*, i32*) #1

declare dso_local i32 @emit_immed(%struct.nfp_prog*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
