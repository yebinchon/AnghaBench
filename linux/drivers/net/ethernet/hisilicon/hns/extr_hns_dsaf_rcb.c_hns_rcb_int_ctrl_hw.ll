; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_int_ctrl_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_int_ctrl_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_queue = type { i32 }

@RCB_INT_FLAG_TX = common dso_local global i32 0, align 4
@RCB_RING_INTMSK_TXWL_REG = common dso_local global i32 0, align 4
@RCB_RING_INTMSK_TX_OVERTIME_REG = common dso_local global i32 0, align 4
@RCB_INT_FLAG_RX = common dso_local global i32 0, align 4
@RCB_RING_INTMSK_RXWL_REG = common dso_local global i32 0, align 4
@RCB_RING_INTMSK_RX_OVERTIME_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_rcb_int_ctrl_hw(%struct.hnae_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hnae_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hnae_queue* %0, %struct.hnae_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @RCB_INT_FLAG_TX, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.hnae_queue*, %struct.hnae_queue** %4, align 8
  %19 = load i32, i32* @RCB_RING_INTMSK_TXWL_REG, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @dsaf_write_dev(%struct.hnae_queue* %18, i32 %19, i32 %20)
  %22 = load %struct.hnae_queue*, %struct.hnae_queue** %4, align 8
  %23 = load i32, i32* @RCB_RING_INTMSK_TX_OVERTIME_REG, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dsaf_write_dev(%struct.hnae_queue* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %17, %3
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @RCB_INT_FLAG_RX, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.hnae_queue*, %struct.hnae_queue** %4, align 8
  %33 = load i32, i32* @RCB_RING_INTMSK_RXWL_REG, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @dsaf_write_dev(%struct.hnae_queue* %32, i32 %33, i32 %34)
  %36 = load %struct.hnae_queue*, %struct.hnae_queue** %4, align 8
  %37 = load i32, i32* @RCB_RING_INTMSK_RX_OVERTIME_REG, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @dsaf_write_dev(%struct.hnae_queue* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %26
  ret void
}

declare dso_local i32 @dsaf_write_dev(%struct.hnae_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
