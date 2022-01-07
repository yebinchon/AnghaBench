; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_configure_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_configure_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { i32, i32, i64, %struct.ixgb_hw, %struct.TYPE_2__ }
%struct.ixgb_hw = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@TDBAL = common dso_local global i32 0, align 4
@TDBAH = common dso_local global i32 0, align 4
@TDLEN = common dso_local global i32 0, align 4
@TDH = common dso_local global i32 0, align 4
@TDT = common dso_local global i32 0, align 4
@TIDV = common dso_local global i32 0, align 4
@IXGB_TCTL_TCE = common dso_local global i32 0, align 4
@IXGB_TCTL_TXEN = common dso_local global i32 0, align 4
@IXGB_TCTL_TPDE = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@IXGB_TX_DESC_TYPE = common dso_local global i32 0, align 4
@IXGB_TX_DESC_CMD_IDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgb_adapter*)* @ixgb_configure_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_configure_tx(%struct.ixgb_adapter* %0) #0 {
  %2 = alloca %struct.ixgb_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgb_hw*, align 8
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %2, align 8
  %7 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %18, i32 0, i32 3
  store %struct.ixgb_hw* %19, %struct.ixgb_hw** %6, align 8
  %20 = load %struct.ixgb_hw*, %struct.ixgb_hw** %6, align 8
  %21 = load i32, i32* @TDBAL, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = and i64 %23, 4294967295
  %25 = trunc i64 %24 to i32
  %26 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %20, i32 %21, i32 %25)
  %27 = load %struct.ixgb_hw*, %struct.ixgb_hw** %6, align 8
  %28 = load i32, i32* @TDBAH, align 4
  %29 = load i32, i32* %3, align 4
  %30 = ashr i32 %29, 32
  %31 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %27, i32 %28, i32 %30)
  %32 = load %struct.ixgb_hw*, %struct.ixgb_hw** %6, align 8
  %33 = load i32, i32* @TDLEN, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %32, i32 %33, i32 %34)
  %36 = load %struct.ixgb_hw*, %struct.ixgb_hw** %6, align 8
  %37 = load i32, i32* @TDH, align 4
  %38 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %36, i32 %37, i32 0)
  %39 = load %struct.ixgb_hw*, %struct.ixgb_hw** %6, align 8
  %40 = load i32, i32* @TDT, align 4
  %41 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %39, i32 %40, i32 0)
  %42 = load %struct.ixgb_hw*, %struct.ixgb_hw** %6, align 8
  %43 = load i32, i32* @TIDV, align 4
  %44 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %42, i32 %43, i32 %46)
  %48 = load i32, i32* @IXGB_TCTL_TCE, align 4
  %49 = load i32, i32* @IXGB_TCTL_TXEN, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @IXGB_TCTL_TPDE, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %5, align 4
  %53 = load %struct.ixgb_hw*, %struct.ixgb_hw** %6, align 8
  %54 = load i32, i32* @TCTL, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %53, i32 %54, i32 %55)
  %57 = load i32, i32* @IXGB_TX_DESC_TYPE, align 4
  %58 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %1
  %63 = load i32, i32* @IXGB_TX_DESC_CMD_IDE, align 4
  br label %65

64:                                               ; preds = %1
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  %67 = or i32 %57, %66
  %68 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  ret void
}

declare dso_local i32 @IXGB_WRITE_REG(%struct.ixgb_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
