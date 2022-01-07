; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_txq_desc_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_txq_desc_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MVPP2_TXD_L3_OFF_SHIFT = common dso_local global i32 0, align 4
@MVPP2_TXD_IP_HLEN_SHIFT = common dso_local global i32 0, align 4
@MVPP2_TXD_IP_CSUM_DISABLE = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@MVPP2_TXD_L3_IP6 = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@MVPP2_TXD_L4_UDP = common dso_local global i32 0, align 4
@MVPP2_TXD_L4_CSUM_FRAG = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@MVPP2_TXD_L4_CSUM_NOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i32)* @mvpp2_txq_desc_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_txq_desc_csum(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MVPP2_TXD_L3_OFF_SHIFT, align 4
  %12 = shl i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MVPP2_TXD_IP_HLEN_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* %9, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @MVPP2_TXD_IP_CSUM_DISABLE, align 4
  %19 = load i32, i32* %9, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %9, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* @ETH_P_IP, align 4
  %23 = call i64 @htons(i32 %22)
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %4
  %26 = load i32, i32* @MVPP2_TXD_IP_CSUM_DISABLE, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @MVPP2_TXD_L3_IP6, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %9, align 4
  br label %38

34:                                               ; preds = %4
  %35 = load i32, i32* @MVPP2_TXD_L3_IP6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %25
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @IPPROTO_TCP, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i32, i32* @MVPP2_TXD_L4_UDP, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @MVPP2_TXD_L4_CSUM_FRAG, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %68

51:                                               ; preds = %38
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @IPPROTO_UDP, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32, i32* @MVPP2_TXD_L4_UDP, align 4
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @MVPP2_TXD_L4_CSUM_FRAG, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %67

63:                                               ; preds = %51
  %64 = load i32, i32* @MVPP2_TXD_L4_CSUM_NOT, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %63, %55
  br label %68

68:                                               ; preds = %67, %42
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
