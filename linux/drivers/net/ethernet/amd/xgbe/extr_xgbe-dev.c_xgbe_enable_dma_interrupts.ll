; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_enable_dma_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_enable_dma_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i64, i32, %struct.xgbe_channel**, %struct.TYPE_2__ }
%struct.xgbe_channel = type { i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@DMA_MR = common dso_local global i32 0, align 4
@INTM = common dso_local global i32 0, align 4
@MAC_VR = common dso_local global i32 0, align 4
@SNPSVER = common dso_local global i32 0, align 4
@DMA_CH_SR = common dso_local global i32 0, align 4
@DMA_CH_IER = common dso_local global i32 0, align 4
@NIE20 = common dso_local global i32 0, align 4
@AIE20 = common dso_local global i32 0, align 4
@NIE = common dso_local global i32 0, align 4
@AIE = common dso_local global i32 0, align 4
@FBEE = common dso_local global i32 0, align 4
@TIE = common dso_local global i32 0, align 4
@RBUE = common dso_local global i32 0, align 4
@RIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_enable_dma_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_enable_dma_interrupts(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %12 = load i32, i32* @DMA_MR, align 4
  %13 = load i32, i32* @INTM, align 4
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %15 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %11, i32 %12, i32 %13, i64 %16)
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %20 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MAC_VR, align 4
  %24 = load i32, i32* @SNPSVER, align 4
  %25 = call i32 @XGMAC_GET_BITS(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %141, %18
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %29 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %144

32:                                               ; preds = %26
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %34 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %33, i32 0, i32 3
  %35 = load %struct.xgbe_channel**, %struct.xgbe_channel*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.xgbe_channel*, %struct.xgbe_channel** %35, i64 %37
  %39 = load %struct.xgbe_channel*, %struct.xgbe_channel** %38, align 8
  store %struct.xgbe_channel* %39, %struct.xgbe_channel** %3, align 8
  %40 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %41 = load i32, i32* @DMA_CH_SR, align 4
  %42 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %43 = load i32, i32* @DMA_CH_SR, align 4
  %44 = call i64 @XGMAC_DMA_IOREAD(%struct.xgbe_channel* %42, i32 %43)
  %45 = call i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel* %40, i32 %41, i64 %44)
  %46 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %47 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = icmp ult i32 %48, 33
  br i1 %49, label %50, label %63

50:                                               ; preds = %32
  %51 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %52 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @DMA_CH_IER, align 4
  %55 = load i32, i32* @NIE20, align 4
  %56 = call i32 @XGMAC_SET_BITS(i64 %53, i32 %54, i32 %55, i32 1)
  %57 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %58 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @DMA_CH_IER, align 4
  %61 = load i32, i32* @AIE20, align 4
  %62 = call i32 @XGMAC_SET_BITS(i64 %59, i32 %60, i32 %61, i32 1)
  br label %76

63:                                               ; preds = %32
  %64 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %65 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @DMA_CH_IER, align 4
  %68 = load i32, i32* @NIE, align 4
  %69 = call i32 @XGMAC_SET_BITS(i64 %66, i32 %67, i32 %68, i32 1)
  %70 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %71 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @DMA_CH_IER, align 4
  %74 = load i32, i32* @AIE, align 4
  %75 = call i32 @XGMAC_SET_BITS(i64 %72, i32 %73, i32 %74, i32 1)
  br label %76

76:                                               ; preds = %63, %50
  %77 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %78 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @DMA_CH_IER, align 4
  %81 = load i32, i32* @FBEE, align 4
  %82 = call i32 @XGMAC_SET_BITS(i64 %79, i32 %80, i32 %81, i32 1)
  %83 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %84 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %76
  %88 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %89 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %94 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92, %87
  %98 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %99 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @DMA_CH_IER, align 4
  %102 = load i32, i32* @TIE, align 4
  %103 = call i32 @XGMAC_SET_BITS(i64 %100, i32 %101, i32 %102, i32 1)
  br label %104

104:                                              ; preds = %97, %92
  br label %105

105:                                              ; preds = %104, %76
  %106 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %107 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %134

110:                                              ; preds = %105
  %111 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %112 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @DMA_CH_IER, align 4
  %115 = load i32, i32* @RBUE, align 4
  %116 = call i32 @XGMAC_SET_BITS(i64 %113, i32 %114, i32 %115, i32 1)
  %117 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %118 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %110
  %122 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %123 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121, %110
  %127 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %128 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* @DMA_CH_IER, align 4
  %131 = load i32, i32* @RIE, align 4
  %132 = call i32 @XGMAC_SET_BITS(i64 %129, i32 %130, i32 %131, i32 1)
  br label %133

133:                                              ; preds = %126, %121
  br label %134

134:                                              ; preds = %133, %105
  %135 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %136 = load i32, i32* @DMA_CH_IER, align 4
  %137 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %138 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel* %135, i32 %136, i64 %139)
  br label %141

141:                                              ; preds = %134
  %142 = load i32, i32* %4, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %4, align 4
  br label %26

144:                                              ; preds = %26
  ret void
}

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i64) #1

declare dso_local i32 @XGMAC_GET_BITS(i32, i32, i32) #1

declare dso_local i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel*, i32, i64) #1

declare dso_local i64 @XGMAC_DMA_IOREAD(%struct.xgbe_channel*, i32) #1

declare dso_local i32 @XGMAC_SET_BITS(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
