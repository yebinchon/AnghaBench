; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_wait_dma_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_wait_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }

@BNX2_CHIP_5706 = common dso_local global i64 0, align 8
@BNX2_CHIP_5708 = common dso_local global i64 0, align 8
@BNX2_MISC_ENABLE_CLR_BITS = common dso_local global i32 0, align 4
@BNX2_MISC_ENABLE_CLR_BITS_TX_DMA_ENABLE = common dso_local global i32 0, align 4
@BNX2_MISC_ENABLE_CLR_BITS_DMA_ENGINE_ENABLE = common dso_local global i32 0, align 4
@BNX2_MISC_ENABLE_CLR_BITS_RX_DMA_ENABLE = common dso_local global i32 0, align 4
@BNX2_MISC_ENABLE_CLR_BITS_HOST_COALESCE_ENABLE = common dso_local global i32 0, align 4
@BNX2_MISC_NEW_CORE_CTL = common dso_local global i32 0, align 4
@BNX2_MISC_NEW_CORE_CTL_DMA_ENABLE = common dso_local global i32 0, align 4
@BNX2_PCICFG_DEVICE_CONTROL = common dso_local global i32 0, align 4
@BNX2_PCICFG_DEVICE_STATUS_NO_PEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_wait_dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_wait_dma_complete(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %5 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %6 = call i64 @BNX2_CHIP(%struct.bnx2* %5)
  %7 = load i64, i64* @BNX2_CHIP_5706, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %11 = call i64 @BNX2_CHIP(%struct.bnx2* %10)
  %12 = load i64, i64* @BNX2_CHIP_5708, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %9, %1
  %15 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %16 = load i32, i32* @BNX2_MISC_ENABLE_CLR_BITS, align 4
  %17 = load i32, i32* @BNX2_MISC_ENABLE_CLR_BITS_TX_DMA_ENABLE, align 4
  %18 = load i32, i32* @BNX2_MISC_ENABLE_CLR_BITS_DMA_ENGINE_ENABLE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @BNX2_MISC_ENABLE_CLR_BITS_RX_DMA_ENABLE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @BNX2_MISC_ENABLE_CLR_BITS_HOST_COALESCE_ENABLE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @BNX2_WR(%struct.bnx2* %15, i32 %16, i32 %23)
  %25 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %26 = load i32, i32* @BNX2_MISC_ENABLE_CLR_BITS, align 4
  %27 = call i32 @BNX2_RD(%struct.bnx2* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = call i32 @udelay(i32 5)
  br label %62

29:                                               ; preds = %9
  %30 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %31 = load i32, i32* @BNX2_MISC_NEW_CORE_CTL, align 4
  %32 = call i32 @BNX2_RD(%struct.bnx2* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @BNX2_MISC_NEW_CORE_CTL_DMA_ENABLE, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %38 = load i32, i32* @BNX2_MISC_NEW_CORE_CTL, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @BNX2_WR(%struct.bnx2* %37, i32 %38, i32 %39)
  %41 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %42 = load i32, i32* @BNX2_MISC_NEW_CORE_CTL, align 4
  %43 = call i32 @BNX2_RD(%struct.bnx2* %41, i32 %42)
  store i32 %43, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %58, %29
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 100
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = call i32 @msleep(i32 1)
  %49 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %50 = load i32, i32* @BNX2_PCICFG_DEVICE_CONTROL, align 4
  %51 = call i32 @BNX2_RD(%struct.bnx2* %49, i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @BNX2_PCICFG_DEVICE_STATUS_NO_PEND, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  br label %61

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %44

61:                                               ; preds = %56, %44
  br label %62

62:                                               ; preds = %61, %14
  ret void
}

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
