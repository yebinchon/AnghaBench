; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_hw_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_hw_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.can_frame = type { i32, i32, i32 }
%struct.mcp251x_priv = type { i32, i32* }

@SPI_TRANSFER_BUF_LEN = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@TXBCTRL_OFF = common dso_local global i64 0, align 8
@SIDH_SHIFT = common dso_local global i32 0, align 4
@TXBSIDH_OFF = common dso_local global i64 0, align 8
@SIDL_SID_MASK = common dso_local global i32 0, align 4
@SIDL_SID_SHIFT = common dso_local global i32 0, align 4
@SIDL_EXIDE_SHIFT = common dso_local global i32 0, align 4
@SIDL_EID_SHIFT = common dso_local global i32 0, align 4
@SIDL_EID_MASK = common dso_local global i32 0, align 4
@TXBSIDL_OFF = common dso_local global i64 0, align 8
@TXBEID8_OFF = common dso_local global i64 0, align 8
@TXBEID0_OFF = common dso_local global i64 0, align 8
@DLC_RTR_SHIFT = common dso_local global i32 0, align 4
@TXBDLC_OFF = common dso_local global i64 0, align 8
@TXBDAT_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, %struct.can_frame*, i32)* @mcp251x_hw_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcp251x_hw_tx(%struct.spi_device* %0, %struct.can_frame* %1, i32 %2) #0 {
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mcp251x_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.can_frame* %1, %struct.can_frame** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %15 = call %struct.mcp251x_priv* @spi_get_drvdata(%struct.spi_device* %14)
  store %struct.mcp251x_priv* %15, %struct.mcp251x_priv** %7, align 8
  %16 = load i32, i32* @SPI_TRANSFER_BUF_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %21 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CAN_EFF_FLAG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %32 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CAN_EFF_MASK, align 4
  %35 = and i32 %33, %34
  %36 = ashr i32 %35, 18
  store i32 %36, i32* %8, align 4
  br label %43

37:                                               ; preds = %3
  %38 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %39 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CAN_SFF_MASK, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %37, %30
  %44 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %45 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CAN_EFF_MASK, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %9, align 4
  %49 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %50 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CAN_RTR_FLAG, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @INSTRUCTION_LOAD_TXB(i32 %57)
  %59 = load i64, i64* @TXBCTRL_OFF, align 8
  %60 = getelementptr inbounds i32, i32* %19, i64 %59
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @SIDH_SHIFT, align 4
  %63 = ashr i32 %61, %62
  %64 = load i64, i64* @TXBSIDH_OFF, align 8
  %65 = getelementptr inbounds i32, i32* %19, i64 %64
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @SIDL_SID_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @SIDL_SID_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @SIDL_EXIDE_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = or i32 %70, %73
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @SIDL_EID_SHIFT, align 4
  %77 = ashr i32 %75, %76
  %78 = load i32, i32* @SIDL_EID_MASK, align 4
  %79 = and i32 %77, %78
  %80 = or i32 %74, %79
  %81 = load i64, i64* @TXBSIDL_OFF, align 8
  %82 = getelementptr inbounds i32, i32* %19, i64 %81
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @GET_BYTE(i32 %83, i32 1)
  %85 = load i64, i64* @TXBEID8_OFF, align 8
  %86 = getelementptr inbounds i32, i32* %19, i64 %85
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @GET_BYTE(i32 %87, i32 0)
  %89 = load i64, i64* @TXBEID0_OFF, align 8
  %90 = getelementptr inbounds i32, i32* %19, i64 %89
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @DLC_RTR_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %95 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %93, %96
  %98 = load i64, i64* @TXBDLC_OFF, align 8
  %99 = getelementptr inbounds i32, i32* %19, i64 %98
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @TXBDAT_OFF, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %19, i64 %101
  %103 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %104 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %107 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @memcpy(i32* %102, i32 %105, i32 %108)
  %110 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %111 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %112 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @mcp251x_hw_tx_frame(%struct.spi_device* %110, i32* %19, i32 %113, i32 %114)
  %116 = load i32, i32* %6, align 4
  %117 = shl i32 1, %116
  %118 = call i32 @INSTRUCTION_RTS(i32 %117)
  %119 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %120 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  store i32 %118, i32* %122, align 4
  %123 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %124 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @mcp251x_spi_trans(i32 %125, i32 1)
  %127 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %127)
  ret void
}

declare dso_local %struct.mcp251x_priv* @spi_get_drvdata(%struct.spi_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @INSTRUCTION_LOAD_TXB(i32) #1

declare dso_local i32 @GET_BYTE(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mcp251x_hw_tx_frame(%struct.spi_device*, i32*, i32, i32) #1

declare dso_local i32 @INSTRUCTION_RTS(i32) #1

declare dso_local i32 @mcp251x_spi_trans(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
