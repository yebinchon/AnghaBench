; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_configure_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_configure_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, i32, %struct.TYPE_3__*, %struct.net_device*, %struct.iavf_hw }
%struct.TYPE_3__ = type { i32, i64 }
%struct.net_device = type { i64 }
%struct.iavf_hw = type { i64 }

@IAVF_RXBUFFER_2048 = common dso_local global i32 0, align 4
@IAVF_FLAG_LEGACY_RX = common dso_local global i32 0, align 4
@IAVF_RXBUFFER_3072 = common dso_local global i32 0, align 4
@IAVF_2K_TOO_SMALL_WITH_PADDING = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@IAVF_RXBUFFER_1536 = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_adapter*)* @iavf_configure_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_configure_rx(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iavf_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %7 = load i32, i32* @IAVF_RXBUFFER_2048, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %8, i32 0, i32 4
  store %struct.iavf_hw* %9, %struct.iavf_hw** %4, align 8
  %10 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IAVF_FLAG_LEGACY_RX, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %1
  %17 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %17, i32 0, i32 3
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %6, align 8
  %20 = load i32, i32* @IAVF_RXBUFFER_3072, align 4
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @IAVF_2K_TOO_SMALL_WITH_PADDING, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %16
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ETH_DATA_LEN, align 8
  %28 = icmp sle i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @IAVF_RXBUFFER_1536, align 4
  %31 = load i32, i32* @NET_IP_ALIGN, align 4
  %32 = sub i32 %30, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %23, %16
  br label %34

34:                                               ; preds = %33, %1
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %86, %34
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %89

41:                                               ; preds = %35
  %42 = load %struct.iavf_hw*, %struct.iavf_hw** %4, align 8
  %43 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @IAVF_QRX_TAIL1(i32 %45)
  %47 = add nsw i64 %44, %46
  %48 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i64 %47, i64* %54, align 8
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %55, i32* %62, align 8
  %63 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IAVF_FLAG_LEGACY_RX, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %41
  %70 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = call i32 @clear_ring_build_skb_enabled(%struct.TYPE_3__* %75)
  br label %85

77:                                               ; preds = %41
  %78 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %78, i32 0, i32 2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = call i32 @set_ring_build_skb_enabled(%struct.TYPE_3__* %83)
  br label %85

85:                                               ; preds = %77, %69
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %35

89:                                               ; preds = %35
  ret void
}

declare dso_local i64 @IAVF_QRX_TAIL1(i32) #1

declare dso_local i32 @clear_ring_build_skb_enabled(%struct.TYPE_3__*) #1

declare dso_local i32 @set_ring_build_skb_enabled(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
