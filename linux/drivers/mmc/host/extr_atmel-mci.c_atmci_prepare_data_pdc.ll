; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_prepare_data_pdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_prepare_data_pdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_mci = type { i32, i32, i32*, %struct.TYPE_4__, %struct.mmc_data*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@ATMCI_DATA_ERROR_FLAGS = common dso_local global i32 0, align 4
@ATMCI_MR = common dso_local global i32 0, align 4
@ATMCI_MR_PDCMODE = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@ATMCI_ENDRX = common dso_local global i32 0, align 4
@ATMCI_RXBUFF = common dso_local global i32 0, align 4
@ATMCI_ENDTX = common dso_local global i32 0, align 4
@ATMCI_TXBUFE = common dso_local global i32 0, align 4
@ATMCI_BLKE = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@XFER_RECEIVE = common dso_local global i32 0, align 4
@XFER_TRANSMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_mci*, %struct.mmc_data*)* @atmci_prepare_data_pdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmci_prepare_data_pdc(%struct.atmel_mci* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.atmel_mci*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.atmel_mci* %0, %struct.atmel_mci** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %8 = load i32, i32* @EINPROGRESS, align 4
  %9 = sub nsw i32 0, %8
  %10 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %13 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %14 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %13, i32 0, i32 4
  store %struct.mmc_data* %12, %struct.mmc_data** %14, align 8
  %15 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %19 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @ATMCI_DATA_ERROR_FLAGS, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %22 = load i32, i32* @ATMCI_MR, align 4
  %23 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %24 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ATMCI_MR_PDCMODE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @atmci_writel(%struct.atmel_mci* %21, i32 %22, i32 %27)
  %29 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MMC_DATA_READ, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load i32, i32* @ATMCI_ENDRX, align 4
  %37 = load i32, i32* @ATMCI_RXBUFF, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %49

41:                                               ; preds = %2
  %42 = load i32, i32* @ATMCI_ENDTX, align 4
  %43 = load i32, i32* @ATMCI_TXBUFE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @ATMCI_BLKE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %41, %35
  %50 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %51 = load i32, i32* @ATMCI_MR, align 4
  %52 = call i32 @atmci_readl(%struct.atmel_mci* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 65535
  store i32 %54, i32* %6, align 4
  %55 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %56 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ATMCI_BLKLEN(i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %62 = load i32, i32* @ATMCI_MR, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @atmci_writel(%struct.atmel_mci* %61, i32 %62, i32 %63)
  %65 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %66 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %69 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %73 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %75 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %74, i32 0, i32 5
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %79 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %82 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %85 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %84)
  %86 = call i32 @dma_map_sg(i32* %77, i32 %80, i32 %83, i32 %85)
  %87 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %88 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %151, label %92

92:                                               ; preds = %49
  %93 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %94 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %93, i32 0, i32 4
  %95 = load %struct.mmc_data*, %struct.mmc_data** %94, align 8
  %96 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MMC_DATA_WRITE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %151

101:                                              ; preds = %92
  %102 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %103 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %102, i32 0, i32 4
  %104 = load %struct.mmc_data*, %struct.mmc_data** %103, align 8
  %105 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %108 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %107, i32 0, i32 4
  %109 = load %struct.mmc_data*, %struct.mmc_data** %108, align 8
  %110 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %113 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %116 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @sg_copy_to_buffer(i32 %106, i32 %111, i32* %114, i32 %117)
  %119 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %120 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %150

124:                                              ; preds = %101
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %146, %124
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %128 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %149

131:                                              ; preds = %125
  %132 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %133 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @swab32(i32 %138)
  %140 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %141 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %139, i32* %145, align 4
  br label %146

146:                                              ; preds = %131
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %125

149:                                              ; preds = %125
  br label %150

150:                                              ; preds = %149, %101
  br label %151

151:                                              ; preds = %150, %92, %49
  %152 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %153 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %171

156:                                              ; preds = %151
  %157 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %158 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %159 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @MMC_DATA_READ, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %156
  %165 = load i32, i32* @XFER_RECEIVE, align 4
  br label %168

166:                                              ; preds = %156
  %167 = load i32, i32* @XFER_TRANSMIT, align 4
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ]
  %170 = call i32 @atmci_pdc_set_both_buf(%struct.atmel_mci* %157, i32 %169)
  br label %171

171:                                              ; preds = %168, %151
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @atmci_writel(%struct.atmel_mci*, i32, i32) #1

declare dso_local i32 @atmci_readl(%struct.atmel_mci*, i32) #1

declare dso_local i32 @ATMCI_BLKLEN(i32) #1

declare dso_local i32 @dma_map_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @mmc_get_dma_dir(%struct.mmc_data*) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i32*, i32) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @atmci_pdc_set_both_buf(%struct.atmel_mci*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
