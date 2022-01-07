; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_cvm_mmc_dma_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_cvm_mmc_dma_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mmc_request = type { i32 (%struct.mmc_request*)*, %struct.TYPE_5__*, %struct.mmc_data*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.mmc_data = type { i32, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.cvm_mmc_slot = type { %struct.cvm_mmc_host* }
%struct.cvm_mmc_host = type { i32, i32 (%struct.cvm_mmc_host*)*, i64, i32 (%struct.cvm_mmc_host*, %struct.TYPE_5__*, %struct.mmc_data*, i32)*, i32 (%struct.cvm_mmc_host*, i32)*, i32*, %struct.mmc_request* }

@MMC_STOP_TRANSMISSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Error: cmv_mmc_dma_request no data\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"DMA request  blocks: %d  block_size: %d  total_size: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"prepare_dma failed\0A\00", align 1
@MIO_EMM_INT_CMD_ERR = common dso_local global i32 0, align 4
@MIO_EMM_INT_DMA_DONE = common dso_local global i32 0, align 4
@MIO_EMM_INT_DMA_ERR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @cvm_mmc_dma_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_mmc_dma_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.cvm_mmc_slot*, align 8
  %6 = alloca %struct.cvm_mmc_host*, align 8
  %7 = alloca %struct.mmc_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %11 = call %struct.cvm_mmc_slot* @mmc_priv(%struct.mmc_host* %10)
  store %struct.cvm_mmc_slot* %11, %struct.cvm_mmc_slot** %5, align 8
  %12 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %13 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %12, i32 0, i32 0
  %14 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %13, align 8
  store %struct.cvm_mmc_host* %14, %struct.cvm_mmc_host** %6, align 8
  %15 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %15, i32 0, i32 2
  %17 = load %struct.mmc_data*, %struct.mmc_data** %16, align 8
  %18 = icmp ne %struct.mmc_data* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %2
  %20 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %20, i32 0, i32 2
  %22 = load %struct.mmc_data*, %struct.mmc_data** %21, align 8
  %23 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %19
  %27 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %28 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %27, i32 0, i32 2
  %29 = load %struct.mmc_data*, %struct.mmc_data** %28, align 8
  %30 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %35 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %40 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MMC_STOP_TRANSMISSION, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %38, %33, %26, %19, %2
  %47 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %48 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %162

52:                                               ; preds = %38
  %53 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %54 = call i32 @cvm_mmc_switch_to(%struct.cvm_mmc_slot* %53)
  %55 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %56 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %55, i32 0, i32 2
  %57 = load %struct.mmc_data*, %struct.mmc_data** %56, align 8
  store %struct.mmc_data* %57, %struct.mmc_data** %7, align 8
  %58 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %59 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %62 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %65 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %68 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = call i32 @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %63, i32 %70)
  %72 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %73 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %52
  %77 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %78 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %79 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @set_wdog(%struct.cvm_mmc_slot* %77, i64 %80)
  br label %82

82:                                               ; preds = %76, %52
  %83 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %84 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %83, i32 0, i32 6
  %85 = load %struct.mmc_request*, %struct.mmc_request** %84, align 8
  %86 = call i32 @WARN_ON(%struct.mmc_request* %85)
  %87 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %88 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %89 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %88, i32 0, i32 6
  store %struct.mmc_request* %87, %struct.mmc_request** %89, align 8
  %90 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %91 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %92 = call i32 @prepare_ext_dma(%struct.mmc_host* %90, %struct.mmc_request* %91)
  store i32 %92, i32* %8, align 4
  %93 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %94 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %95 = call i32 @prepare_dma(%struct.cvm_mmc_host* %93, %struct.mmc_data* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %82
  %99 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %100 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @dev_err(i32* %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %162

103:                                              ; preds = %82
  %104 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %105 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %107 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %106, i32 0, i32 4
  %108 = load i32 (%struct.cvm_mmc_host*, i32)*, i32 (%struct.cvm_mmc_host*, i32)** %107, align 8
  %109 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %110 = load i32, i32* @MIO_EMM_INT_CMD_ERR, align 4
  %111 = load i32, i32* @MIO_EMM_INT_DMA_DONE, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @MIO_EMM_INT_DMA_ERR, align 4
  %114 = or i32 %112, %113
  %115 = call i32 %108(%struct.cvm_mmc_host* %109, i32 %114)
  %116 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %117 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %116, i32 0, i32 3
  %118 = load i32 (%struct.cvm_mmc_host*, %struct.TYPE_5__*, %struct.mmc_data*, i32)*, i32 (%struct.cvm_mmc_host*, %struct.TYPE_5__*, %struct.mmc_data*, i32)** %117, align 8
  %119 = icmp ne i32 (%struct.cvm_mmc_host*, %struct.TYPE_5__*, %struct.mmc_data*, i32)* %118, null
  br i1 %119, label %120, label %131

120:                                              ; preds = %103
  %121 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %122 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %121, i32 0, i32 3
  %123 = load i32 (%struct.cvm_mmc_host*, %struct.TYPE_5__*, %struct.mmc_data*, i32)*, i32 (%struct.cvm_mmc_host*, %struct.TYPE_5__*, %struct.mmc_data*, i32)** %122, align 8
  %124 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %125 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %126 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %125, i32 0, i32 1
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i32 %123(%struct.cvm_mmc_host* %124, %struct.TYPE_5__* %127, %struct.mmc_data* %128, i32 %129)
  br label %131

131:                                              ; preds = %120, %103
  %132 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %133 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %132, i32 0, i32 0
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = call i64 @mmc_card_sd(%struct.TYPE_6__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %131
  %138 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %139 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %142 = call i64 @MIO_EMM_STS_MASK(%struct.cvm_mmc_host* %141)
  %143 = add nsw i64 %140, %142
  %144 = call i32 @writeq(i32 11534336, i64 %143)
  br label %153

145:                                              ; preds = %131
  %146 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %147 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %150 = call i64 @MIO_EMM_STS_MASK(%struct.cvm_mmc_host* %149)
  %151 = add nsw i64 %148, %150
  %152 = call i32 @writeq(i32 -466026368, i64 %151)
  br label %153

153:                                              ; preds = %145, %137
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %156 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %159 = call i64 @MIO_EMM_DMA(%struct.cvm_mmc_host* %158)
  %160 = add nsw i64 %157, %159
  %161 = call i32 @writeq(i32 %154, i64 %160)
  br label %185

162:                                              ; preds = %98, %46
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  %165 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %166 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %165, i32 0, i32 1
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  store i32 %164, i32* %168, align 4
  %169 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %170 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %169, i32 0, i32 0
  %171 = load i32 (%struct.mmc_request*)*, i32 (%struct.mmc_request*)** %170, align 8
  %172 = icmp ne i32 (%struct.mmc_request*)* %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %162
  %174 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %175 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %174, i32 0, i32 0
  %176 = load i32 (%struct.mmc_request*)*, i32 (%struct.mmc_request*)** %175, align 8
  %177 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %178 = call i32 %176(%struct.mmc_request* %177)
  br label %179

179:                                              ; preds = %173, %162
  %180 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %181 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %180, i32 0, i32 1
  %182 = load i32 (%struct.cvm_mmc_host*)*, i32 (%struct.cvm_mmc_host*)** %181, align 8
  %183 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %184 = call i32 %182(%struct.cvm_mmc_host* %183)
  br label %185

185:                                              ; preds = %179, %153
  ret void
}

declare dso_local %struct.cvm_mmc_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cvm_mmc_switch_to(%struct.cvm_mmc_slot*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @set_wdog(%struct.cvm_mmc_slot*, i64) #1

declare dso_local i32 @WARN_ON(%struct.mmc_request*) #1

declare dso_local i32 @prepare_ext_dma(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @prepare_dma(%struct.cvm_mmc_host*, %struct.mmc_data*) #1

declare dso_local i64 @mmc_card_sd(%struct.TYPE_6__*) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i64 @MIO_EMM_STS_MASK(%struct.cvm_mmc_host*) #1

declare dso_local i64 @MIO_EMM_DMA(%struct.cvm_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
