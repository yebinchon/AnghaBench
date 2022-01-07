; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_configure_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_configure_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32*, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_RFCTL = common dso_local global i32 0, align 4
@IXGBE_RFCTL_RSC_DIS = common dso_local global i32 0, align 4
@IXGBE_FLAG2_RSC_ENABLED = common dso_local global i32 0, align 4
@IXGBE_RFCTL_NFSW_DIS = common dso_local global i32 0, align 4
@IXGBE_RFCTL_NFSR_DIS = common dso_local global i32 0, align 4
@IXGBE_RXCTRL = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_RXCTRL_DMBYPS = common dso_local global i32 0, align 4
@IXGBE_RXCTRL_RXEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_configure_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_configure_rx(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 3
  store %struct.ixgbe_hw* %8, %struct.ixgbe_hw** %3, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %12, align 8
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %15 = bitcast %struct.ixgbe_hw* %14 to %struct.ixgbe_hw.1*
  %16 = call i32 %13(%struct.ixgbe_hw.1* %15)
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %18 = call i32 @ixgbe_setup_psrtype(%struct.ixgbe_adapter* %17)
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %20 = call i32 @ixgbe_setup_rdrxctl(%struct.ixgbe_adapter* %19)
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %22 = load i32, i32* @IXGBE_RFCTL, align 4
  %23 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @IXGBE_RFCTL_RSC_DIS, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IXGBE_FLAG2_RSC_ENABLED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @IXGBE_RFCTL_RSC_DIS, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %1
  %39 = load i32, i32* @IXGBE_RFCTL_NFSW_DIS, align 4
  %40 = load i32, i32* @IXGBE_RFCTL_NFSR_DIS, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %45 = load i32, i32* @IXGBE_RFCTL, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %44, i32 %45, i32 %46)
  %48 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %49 = call i32 @ixgbe_setup_mrqc(%struct.ixgbe_adapter* %48)
  %50 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %51 = call i32 @ixgbe_set_rx_buffer_len(%struct.ixgbe_adapter* %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %68, %38
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %60 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ixgbe_configure_rx_ring(%struct.ixgbe_adapter* %59, i32 %66)
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %52

71:                                               ; preds = %52
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %73 = load i32, i32* @IXGBE_RXCTRL, align 4
  %74 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %72, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %76 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load i32, i32* @IXGBE_RXCTRL_DMBYPS, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %71
  %86 = load i32, i32* @IXGBE_RXCTRL_RXEN, align 4
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %90 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %92, align 8
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %95 = bitcast %struct.ixgbe_hw* %94 to %struct.ixgbe_hw.0*
  %96 = load i32, i32* %5, align 4
  %97 = call i32 %93(%struct.ixgbe_hw.0* %95, i32 %96)
  ret void
}

declare dso_local i32 @ixgbe_setup_psrtype(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_setup_rdrxctl(%struct.ixgbe_adapter*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_setup_mrqc(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_set_rx_buffer_len(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_configure_rx_ring(%struct.ixgbe_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
