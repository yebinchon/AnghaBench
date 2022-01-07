; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_clear_mib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_clear_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { i32 }

@BGMAC_FEAT_NO_CLR_MIB = common dso_local global i32 0, align 4
@BGMAC_DEV_CTL = common dso_local global i32 0, align 4
@BGMAC_DC_MROR = common dso_local global i32 0, align 4
@BGMAC_NUM_MIB_TX_REGS = common dso_local global i32 0, align 4
@BGMAC_TX_GOOD_OCTETS = common dso_local global i64 0, align 8
@BGMAC_NUM_MIB_RX_REGS = common dso_local global i32 0, align 4
@BGMAC_RX_GOOD_OCTETS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgmac*)* @bgmac_clear_mib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmac_clear_mib(%struct.bgmac* %0) #0 {
  %2 = alloca %struct.bgmac*, align 8
  %3 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %2, align 8
  %4 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %5 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @BGMAC_FEAT_NO_CLR_MIB, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %13 = load i32, i32* @BGMAC_DEV_CTL, align 4
  %14 = load i32, i32* @BGMAC_DC_MROR, align 4
  %15 = call i32 @bgmac_set(%struct.bgmac* %12, i32 %13, i32 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %28, %11
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @BGMAC_NUM_MIB_TX_REGS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %22 = load i64, i64* @BGMAC_TX_GOOD_OCTETS, align 8
  %23 = load i32, i32* %3, align 4
  %24 = mul nsw i32 %23, 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = call i32 @bgmac_read(%struct.bgmac* %21, i64 %26)
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %16

31:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %44, %31
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @BGMAC_NUM_MIB_RX_REGS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %38 = load i64, i64* @BGMAC_RX_GOOD_OCTETS, align 8
  %39 = load i32, i32* %3, align 4
  %40 = mul nsw i32 %39, 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = call i32 @bgmac_read(%struct.bgmac* %37, i64 %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %32

47:                                               ; preds = %10, %32
  ret void
}

declare dso_local i32 @bgmac_set(%struct.bgmac*, i32, i32) #1

declare dso_local i32 @bgmac_read(%struct.bgmac*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
