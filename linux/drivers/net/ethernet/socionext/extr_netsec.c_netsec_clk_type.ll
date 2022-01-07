; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_clk_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_clk_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NETSEC_GMAC_GAR_REG_CR_25_35_MHZ = common dso_local global i64 0, align 8
@NETSEC_GMAC_GAR_REG_CR_35_60_MHZ = common dso_local global i64 0, align 8
@NETSEC_GMAC_GAR_REG_CR_60_100_MHZ = common dso_local global i64 0, align 8
@NETSEC_GMAC_GAR_REG_CR_100_150_MHZ = common dso_local global i64 0, align 8
@NETSEC_GMAC_GAR_REG_CR_150_250_MHZ = common dso_local global i64 0, align 8
@NETSEC_GMAC_GAR_REG_CR_250_300_MHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @netsec_clk_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @netsec_clk_type(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 @MHZ(i32 35)
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i64, i64* @NETSEC_GMAC_GAR_REG_CR_25_35_MHZ, align 8
  store i64 %8, i64* %2, align 8
  br label %35

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @MHZ(i32 60)
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i64, i64* @NETSEC_GMAC_GAR_REG_CR_35_60_MHZ, align 8
  store i64 %14, i64* %2, align 8
  br label %35

15:                                               ; preds = %9
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @MHZ(i32 100)
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i64, i64* @NETSEC_GMAC_GAR_REG_CR_60_100_MHZ, align 8
  store i64 %20, i64* %2, align 8
  br label %35

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @MHZ(i32 150)
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* @NETSEC_GMAC_GAR_REG_CR_100_150_MHZ, align 8
  store i64 %26, i64* %2, align 8
  br label %35

27:                                               ; preds = %21
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @MHZ(i32 250)
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* @NETSEC_GMAC_GAR_REG_CR_150_250_MHZ, align 8
  store i64 %32, i64* %2, align 8
  br label %35

33:                                               ; preds = %27
  %34 = load i64, i64* @NETSEC_GMAC_GAR_REG_CR_250_300_MHZ, align 8
  store i64 %34, i64* %2, align 8
  br label %35

35:                                               ; preds = %33, %31, %25, %19, %13, %7
  %36 = load i64, i64* %2, align 8
  ret i64 %36
}

declare dso_local i64 @MHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
