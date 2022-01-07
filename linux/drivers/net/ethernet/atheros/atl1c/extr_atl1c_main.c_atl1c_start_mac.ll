; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_start_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_start_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { i64, i64, %struct.atl1c_hw }
%struct.atl1c_hw = type { i32, i32, i32 }

@FULL_DUPLEX = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@atl1c_mac_speed_1000 = common dso_local global i32 0, align 4
@atl1c_mac_speed_10_100 = common dso_local global i32 0, align 4
@REG_TXQ_CTRL = common dso_local global i32 0, align 4
@REG_RXQ_CTRL = common dso_local global i32 0, align 4
@REG_MAC_CTRL = common dso_local global i32 0, align 4
@TXQ_CTRL_EN = common dso_local global i32 0, align 4
@RXQ_CTRL_EN = common dso_local global i32 0, align 4
@MAC_CTRL_TX_EN = common dso_local global i32 0, align 4
@MAC_CTRL_TX_FLOW = common dso_local global i32 0, align 4
@MAC_CTRL_RX_EN = common dso_local global i32 0, align 4
@MAC_CTRL_RX_FLOW = common dso_local global i32 0, align 4
@MAC_CTRL_ADD_CRC = common dso_local global i32 0, align 4
@MAC_CTRL_PAD = common dso_local global i32 0, align 4
@MAC_CTRL_BC_EN = common dso_local global i32 0, align 4
@MAC_CTRL_SINGLE_PAUSE_EN = common dso_local global i32 0, align 4
@MAC_CTRL_HASH_ALG_CRC32 = common dso_local global i32 0, align 4
@MAC_CTRL_DUPLX = common dso_local global i32 0, align 4
@MAC_CTRL_SPEED = common dso_local global i32 0, align 4
@MAC_CTRL_PRMLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_adapter*)* @atl1c_start_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_start_mac(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca %struct.atl1c_adapter*, align 8
  %3 = alloca %struct.atl1c_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %2, align 8
  %7 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %7, i32 0, i32 2
  store %struct.atl1c_hw* %8, %struct.atl1c_hw** %3, align 8
  %9 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FULL_DUPLEX, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  %16 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %17 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SPEED_1000, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @atl1c_mac_speed_1000, align 4
  br label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @atl1c_mac_speed_10_100, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %30 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %32 = load i32, i32* @REG_TXQ_CTRL, align 4
  %33 = call i32 @AT_READ_REG(%struct.atl1c_hw* %31, i32 %32, i32* %5)
  %34 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %35 = load i32, i32* @REG_RXQ_CTRL, align 4
  %36 = call i32 @AT_READ_REG(%struct.atl1c_hw* %34, i32 %35, i32* %6)
  %37 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %38 = load i32, i32* @REG_MAC_CTRL, align 4
  %39 = call i32 @AT_READ_REG(%struct.atl1c_hw* %37, i32 %38, i32* %4)
  %40 = load i32, i32* @TXQ_CTRL_EN, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @RXQ_CTRL_EN, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @MAC_CTRL_TX_EN, align 4
  %47 = load i32, i32* @MAC_CTRL_TX_FLOW, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MAC_CTRL_RX_EN, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MAC_CTRL_RX_FLOW, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MAC_CTRL_ADD_CRC, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @MAC_CTRL_PAD, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @MAC_CTRL_BC_EN, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @MAC_CTRL_SINGLE_PAUSE_EN, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @MAC_CTRL_HASH_ALG_CRC32, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %66 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %27
  %70 = load i32, i32* @MAC_CTRL_DUPLX, align 4
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %4, align 4
  br label %78

73:                                               ; preds = %27
  %74 = load i32, i32* @MAC_CTRL_DUPLX, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %73, %69
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @MAC_CTRL_SPEED, align 4
  %81 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %82 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @FIELD_SETX(i32 %79, i32 %80, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @MAC_CTRL_PRMLEN, align 4
  %87 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %88 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @FIELD_SETX(i32 %85, i32 %86, i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %92 = load i32, i32* @REG_TXQ_CTRL, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %91, i32 %92, i32 %93)
  %95 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %96 = load i32, i32* @REG_RXQ_CTRL, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %95, i32 %96, i32 %97)
  %99 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %100 = load i32, i32* @REG_MAC_CTRL, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %99, i32 %100, i32 %101)
  ret void
}

declare dso_local i32 @AT_READ_REG(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i32 @FIELD_SETX(i32, i32, i32) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1c_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
