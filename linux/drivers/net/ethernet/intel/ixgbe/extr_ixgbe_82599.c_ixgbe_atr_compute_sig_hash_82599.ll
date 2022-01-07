; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_atr_compute_sig_hash_82599.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_atr_compute_sig_hash_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ixgbe_atr_hash_dword = type { i32 }

@IXGBE_ATR_HASH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ixgbe_atr_compute_sig_hash_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_atr_compute_sig_hash_82599(i32 %0, i32 %1) #0 {
  %3 = alloca %union.ixgbe_atr_hash_dword, align 4
  %4 = alloca %union.ixgbe_atr_hash_dword, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %union.ixgbe_atr_hash_dword, %union.ixgbe_atr_hash_dword* %3, i32 0, i32 0
  store i32 %0, i32* %11, align 4
  %12 = getelementptr inbounds %union.ixgbe_atr_hash_dword, %union.ixgbe_atr_hash_dword* %4, i32 0, i32 0
  store i32 %1, i32* %12, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = bitcast %union.ixgbe_atr_hash_dword* %3 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ntohl(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = bitcast %union.ixgbe_atr_hash_dword* %4 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ntohl(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 16
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 %21, 16
  %23 = or i32 %20, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 16
  %27 = xor i32 %24, %26
  %28 = load i32, i32* %5, align 4
  %29 = xor i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = call i32 @IXGBE_COMPUTE_SIG_HASH_ITERATION(i32 0)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 %32, 16
  %34 = xor i32 %31, %33
  %35 = load i32, i32* %6, align 4
  %36 = xor i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = call i32 @IXGBE_COMPUTE_SIG_HASH_ITERATION(i32 1)
  %38 = call i32 @IXGBE_COMPUTE_SIG_HASH_ITERATION(i32 2)
  %39 = call i32 @IXGBE_COMPUTE_SIG_HASH_ITERATION(i32 3)
  %40 = call i32 @IXGBE_COMPUTE_SIG_HASH_ITERATION(i32 4)
  %41 = call i32 @IXGBE_COMPUTE_SIG_HASH_ITERATION(i32 5)
  %42 = call i32 @IXGBE_COMPUTE_SIG_HASH_ITERATION(i32 6)
  %43 = call i32 @IXGBE_COMPUTE_SIG_HASH_ITERATION(i32 7)
  %44 = call i32 @IXGBE_COMPUTE_SIG_HASH_ITERATION(i32 8)
  %45 = call i32 @IXGBE_COMPUTE_SIG_HASH_ITERATION(i32 9)
  %46 = call i32 @IXGBE_COMPUTE_SIG_HASH_ITERATION(i32 10)
  %47 = call i32 @IXGBE_COMPUTE_SIG_HASH_ITERATION(i32 11)
  %48 = call i32 @IXGBE_COMPUTE_SIG_HASH_ITERATION(i32 12)
  %49 = call i32 @IXGBE_COMPUTE_SIG_HASH_ITERATION(i32 13)
  %50 = call i32 @IXGBE_COMPUTE_SIG_HASH_ITERATION(i32 14)
  %51 = call i32 @IXGBE_COMPUTE_SIG_HASH_ITERATION(i32 15)
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = xor i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @IXGBE_ATR_HASH_MASK, align 4
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = shl i32 %58, 16
  %60 = load i32, i32* %8, align 4
  %61 = xor i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @IXGBE_ATR_HASH_MASK, align 4
  %63 = shl i32 %62, 16
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = xor i32 %66, %67
  ret i32 %68
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @IXGBE_COMPUTE_SIG_HASH_ITERATION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
