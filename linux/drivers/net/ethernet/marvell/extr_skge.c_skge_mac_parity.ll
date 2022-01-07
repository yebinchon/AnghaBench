; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_mac_parity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_mac_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i64, i64, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TX_MFF_CTRL1 = common dso_local global i32 0, align 4
@MFF_CLR_PERR = common dso_local global i32 0, align 4
@TX_GMF_CTRL_T = common dso_local global i32 0, align 4
@CHIP_ID_YUKON = common dso_local global i64 0, align 8
@GMF_CLI_TX_FC = common dso_local global i32 0, align 4
@GMF_CLI_TX_PE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_hw*, i32)* @skge_mac_parity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_mac_parity(%struct.skge_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.skge_hw* %0, %struct.skge_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %7 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %6, i32 0, i32 2
  %8 = load %struct.net_device**, %struct.net_device*** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.net_device*, %struct.net_device** %8, i64 %10
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %19 = call i64 @is_genesis(%struct.skge_hw* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @TX_MFF_CTRL1, align 4
  %25 = call i32 @SK_REG(i32 %23, i32 %24)
  %26 = load i32, i32* @MFF_CLR_PERR, align 4
  %27 = call i32 @skge_write16(%struct.skge_hw* %22, i32 %25, i32 %26)
  br label %50

28:                                               ; preds = %2
  %29 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %32 = call i32 @SK_REG(i32 %30, i32 %31)
  %33 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %34 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CHIP_ID_YUKON, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %40 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @GMF_CLI_TX_FC, align 4
  br label %47

45:                                               ; preds = %38, %28
  %46 = load i32, i32* @GMF_CLI_TX_PE, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = call i32 @skge_write8(%struct.skge_hw* %29, i32 %32, i32 %48)
  br label %50

50:                                               ; preds = %47, %21
  ret void
}

declare dso_local i64 @is_genesis(%struct.skge_hw*) #1

declare dso_local i32 @skge_write16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @skge_write8(%struct.skge_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
