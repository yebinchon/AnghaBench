; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_rx_fifo_get_next_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_rx_fifo_get_next_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xcan_priv = type { i32 (%struct.xcan_priv*, i32)*, %struct.TYPE_2__, i32 (%struct.xcan_priv*, i32, i32)* }
%struct.TYPE_2__ = type { i32 }

@XCAN_FLAG_RX_FIFO_MULTI = common dso_local global i32 0, align 4
@XCAN_ICR_OFFSET = common dso_local global i32 0, align 4
@XCAN_IXR_RXOK_MASK = common dso_local global i32 0, align 4
@XCAN_FSR_OFFSET = common dso_local global i32 0, align 4
@XCAN_FLAG_CANFD_2 = common dso_local global i32 0, align 4
@XCAN_2_FSR_FL_MASK = common dso_local global i32 0, align 4
@XCAN_FSR_FL_MASK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@XCAN_2_FSR_RI_MASK = common dso_local global i32 0, align 4
@XCAN_FSR_RI_MASK = common dso_local global i32 0, align 4
@XCAN_ISR_OFFSET = common dso_local global i32 0, align 4
@XCAN_IXR_RXNEMP_MASK = common dso_local global i32 0, align 4
@XCAN_RXFIFO_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xcan_priv*)* @xcan_rx_fifo_get_next_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcan_rx_fifo_get_next_frame(%struct.xcan_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xcan_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xcan_priv* %0, %struct.xcan_priv** %3, align 8
  %7 = load %struct.xcan_priv*, %struct.xcan_priv** %3, align 8
  %8 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @XCAN_FLAG_RX_FIFO_MULTI, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %66

14:                                               ; preds = %1
  %15 = load %struct.xcan_priv*, %struct.xcan_priv** %3, align 8
  %16 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %15, i32 0, i32 2
  %17 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %16, align 8
  %18 = load %struct.xcan_priv*, %struct.xcan_priv** %3, align 8
  %19 = load i32, i32* @XCAN_ICR_OFFSET, align 4
  %20 = load i32, i32* @XCAN_IXR_RXOK_MASK, align 4
  %21 = call i32 %17(%struct.xcan_priv* %18, i32 %19, i32 %20)
  %22 = load %struct.xcan_priv*, %struct.xcan_priv** %3, align 8
  %23 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %22, i32 0, i32 0
  %24 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %23, align 8
  %25 = load %struct.xcan_priv*, %struct.xcan_priv** %3, align 8
  %26 = load i32, i32* @XCAN_FSR_OFFSET, align 4
  %27 = call i32 %24(%struct.xcan_priv* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.xcan_priv*, %struct.xcan_priv** %3, align 8
  %29 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @XCAN_FLAG_CANFD_2, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %14
  %36 = load i32, i32* @XCAN_2_FSR_FL_MASK, align 4
  store i32 %36, i32* %6, align 4
  br label %39

37:                                               ; preds = %14
  %38 = load i32, i32* @XCAN_FSR_FL_MASK, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %83

47:                                               ; preds = %39
  %48 = load %struct.xcan_priv*, %struct.xcan_priv** %3, align 8
  %49 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @XCAN_FLAG_CANFD_2, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @XCAN_2_FSR_RI_MASK, align 4
  %58 = and i32 %56, %57
  %59 = call i32 @XCAN_RXMSG_2_FRAME_OFFSET(i32 %58)
  store i32 %59, i32* %4, align 4
  br label %65

60:                                               ; preds = %47
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @XCAN_FSR_RI_MASK, align 4
  %63 = and i32 %61, %62
  %64 = call i32 @XCAN_RXMSG_FRAME_OFFSET(i32 %63)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %60, %55
  br label %81

66:                                               ; preds = %1
  %67 = load %struct.xcan_priv*, %struct.xcan_priv** %3, align 8
  %68 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %67, i32 0, i32 0
  %69 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %68, align 8
  %70 = load %struct.xcan_priv*, %struct.xcan_priv** %3, align 8
  %71 = load i32, i32* @XCAN_ISR_OFFSET, align 4
  %72 = call i32 %69(%struct.xcan_priv* %70, i32 %71)
  %73 = load i32, i32* @XCAN_IXR_RXNEMP_MASK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %66
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %83

79:                                               ; preds = %66
  %80 = load i32, i32* @XCAN_RXFIFO_OFFSET, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %65
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %76, %44
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @XCAN_RXMSG_2_FRAME_OFFSET(i32) #1

declare dso_local i32 @XCAN_RXMSG_FRAME_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
