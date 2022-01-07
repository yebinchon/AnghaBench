; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_addr40_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_addr40_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }

@ALU_OP_ADD = common dso_local global i32 0, align 4
@ALU_OP_ADD_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*, i64, i64, i64*, i64*)* @addr40_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addr40_offset(%struct.nfp_prog* %0, i64 %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.nfp_prog*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %11 = load i64, i64* %8, align 8
  %12 = call i64 @reg_imm(i32 0)
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %5
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @reg_a(i64 %15)
  %17 = load i64*, i64** %9, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i64, i64* %7, align 8
  %19 = add nsw i64 %18, 1
  %20 = call i64 @reg_b(i64 %19)
  %21 = load i64*, i64** %10, align 8
  store i64 %20, i64* %21, align 8
  br label %46

22:                                               ; preds = %5
  %23 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %24 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %25 = call i64 @imm_a(%struct.nfp_prog* %24)
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @reg_a(i64 %26)
  %28 = load i32, i32* @ALU_OP_ADD, align 4
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @emit_alu(%struct.nfp_prog* %23, i64 %25, i64 %27, i32 %28, i64 %29)
  %31 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %32 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %33 = call i64 @imm_b(%struct.nfp_prog* %32)
  %34 = load i64, i64* %7, align 8
  %35 = add nsw i64 %34, 1
  %36 = call i64 @reg_b(i64 %35)
  %37 = load i32, i32* @ALU_OP_ADD_C, align 4
  %38 = call i64 @reg_imm(i32 0)
  %39 = call i32 @emit_alu(%struct.nfp_prog* %31, i64 %33, i64 %36, i32 %37, i64 %38)
  %40 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %41 = call i64 @imm_a(%struct.nfp_prog* %40)
  %42 = load i64*, i64** %9, align 8
  store i64 %41, i64* %42, align 8
  %43 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %44 = call i64 @imm_b(%struct.nfp_prog* %43)
  %45 = load i64*, i64** %10, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %22, %14
  ret void
}

declare dso_local i64 @reg_imm(i32) #1

declare dso_local i64 @reg_a(i64) #1

declare dso_local i64 @reg_b(i64) #1

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i64, i64, i32, i64) #1

declare dso_local i64 @imm_a(%struct.nfp_prog*) #1

declare dso_local i64 @imm_b(%struct.nfp_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
