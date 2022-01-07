; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_request_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_request_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.mmc_request**, i32, %struct.TYPE_5__*, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mmc_request = type { %struct.mmc_data* }
%struct.mmc_data = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.sdhci_host*, i32)* }

@SDHCI_MAX_MRQS = common dso_local global i32 0, align 4
@SDHCI_REQ_USE_DMA = common dso_local global i32 0, align 4
@COOKIE_MAPPED = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [75 x i8] c"%s: bounce buffer is %u bytes but DMA claims to have transferred %u bytes\0A\00", align 1
@COOKIE_UNMAPPED = common dso_local global i64 0, align 8
@SDHCI_QUIRK_CLOCK_BEFORE_RESET = common dso_local global i32 0, align 4
@SDHCI_RESET_CMD = common dso_local global i32 0, align 4
@SDHCI_RESET_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @sdhci_request_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_request_done(%struct.sdhci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_data*, align 8
  %8 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %10 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %9, i32 0, i32 5
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %29, %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @SDHCI_MAX_MRQS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %19 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %18, i32 0, i32 6
  %20 = load %struct.mmc_request**, %struct.mmc_request*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mmc_request*, %struct.mmc_request** %20, i64 %22
  %24 = load %struct.mmc_request*, %struct.mmc_request** %23, align 8
  store %struct.mmc_request* %24, %struct.mmc_request** %5, align 8
  %25 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %26 = icmp ne %struct.mmc_request* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %32

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %13

32:                                               ; preds = %27, %13
  %33 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %34 = icmp ne %struct.mmc_request* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %37 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %36, i32 0, i32 5
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  store i32 1, i32* %2, align 4
  br label %216

40:                                               ; preds = %32
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %42 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SDHCI_REQ_USE_DMA, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %153

47:                                               ; preds = %40
  %48 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %49 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %48, i32 0, i32 0
  %50 = load %struct.mmc_data*, %struct.mmc_data** %49, align 8
  store %struct.mmc_data* %50, %struct.mmc_data** %7, align 8
  %51 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %52 = icmp ne %struct.mmc_data* %51, null
  br i1 %52, label %53, label %152

53:                                               ; preds = %47
  %54 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %55 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @COOKIE_MAPPED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %152

59:                                               ; preds = %53
  %60 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %61 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %134

64:                                               ; preds = %59
  %65 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %66 = call i64 @mmc_get_dma_dir(%struct.mmc_data* %65)
  %67 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %118

69:                                               ; preds = %64
  %70 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %71 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %75 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ugt i32 %73, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %69
  %79 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %80 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %79, i32 0, i32 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = call i32 @mmc_hostname(%struct.TYPE_6__* %81)
  %83 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %84 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %87 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @pr_err(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %85, i32 %88)
  %90 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %91 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %78, %69
  %94 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %95 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %94, i32 0, i32 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %100 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %99, i32 0, i32 11
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %103 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %106 = call i32 @dma_sync_single_for_cpu(i32 %98, i32 %101, i32 %104, i64 %105)
  %107 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %108 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %111 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %114 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %113, i32 0, i32 12
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @sg_copy_from_buffer(i32 %109, i32 %112, i32 %115, i32 %116)
  br label %133

118:                                              ; preds = %64
  %119 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %120 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %119, i32 0, i32 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %125 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %124, i32 0, i32 11
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %128 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %131 = call i64 @mmc_get_dma_dir(%struct.mmc_data* %130)
  %132 = call i32 @dma_sync_single_for_cpu(i32 %123, i32 %126, i32 %129, i64 %131)
  br label %133

133:                                              ; preds = %118, %93
  br label %148

134:                                              ; preds = %59
  %135 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %136 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %135, i32 0, i32 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = call i32 @mmc_dev(%struct.TYPE_6__* %137)
  %139 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %140 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %143 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %146 = call i64 @mmc_get_dma_dir(%struct.mmc_data* %145)
  %147 = call i32 @dma_unmap_sg(i32 %138, i32 %141, i32 %144, i64 %146)
  br label %148

148:                                              ; preds = %134, %133
  %149 = load i64, i64* @COOKIE_UNMAPPED, align 8
  %150 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %151 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %148, %53, %47
  br label %153

153:                                              ; preds = %152, %40
  %154 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %155 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %156 = call i64 @sdhci_needs_reset(%struct.sdhci_host* %154, %struct.mmc_request* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %200

158:                                              ; preds = %153
  %159 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %160 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %159, i32 0, i32 10
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %158
  %164 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %165 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %164, i32 0, i32 9
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163, %158
  %169 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %170 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %169, i32 0, i32 5
  %171 = load i64, i64* %4, align 8
  %172 = call i32 @spin_unlock_irqrestore(i32* %170, i64 %171)
  store i32 1, i32* %2, align 4
  br label %216

173:                                              ; preds = %163
  %174 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %175 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @SDHCI_QUIRK_CLOCK_BEFORE_RESET, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %173
  %181 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %182 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %181, i32 0, i32 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i32 (%struct.sdhci_host*, i32)*, i32 (%struct.sdhci_host*, i32)** %184, align 8
  %186 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %187 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %188 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 8
  %190 = call i32 %185(%struct.sdhci_host* %186, i32 %189)
  br label %191

191:                                              ; preds = %180, %173
  %192 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %193 = load i32, i32* @SDHCI_RESET_CMD, align 4
  %194 = call i32 @sdhci_do_reset(%struct.sdhci_host* %192, i32 %193)
  %195 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %196 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %197 = call i32 @sdhci_do_reset(%struct.sdhci_host* %195, i32 %196)
  %198 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %199 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %198, i32 0, i32 3
  store i32 0, i32* %199, align 4
  br label %200

200:                                              ; preds = %191, %153
  %201 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %202 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %201, i32 0, i32 6
  %203 = load %struct.mmc_request**, %struct.mmc_request*** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.mmc_request*, %struct.mmc_request** %203, i64 %205
  store %struct.mmc_request* null, %struct.mmc_request** %206, align 8
  %207 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %208 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %207, i32 0, i32 5
  %209 = load i64, i64* %4, align 8
  %210 = call i32 @spin_unlock_irqrestore(i32* %208, i64 %209)
  %211 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %212 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %211, i32 0, i32 4
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %215 = call i32 @mmc_request_done(%struct.TYPE_6__* %213, %struct.mmc_request* %214)
  store i32 0, i32* %2, align 4
  br label %216

216:                                              ; preds = %200, %168, %35
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @mmc_get_dma_dir(%struct.mmc_data*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.TYPE_6__*) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i64) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i64) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_6__*) #1

declare dso_local i64 @sdhci_needs_reset(%struct.sdhci_host*, %struct.mmc_request*) #1

declare dso_local i32 @sdhci_do_reset(%struct.sdhci_host*, i32) #1

declare dso_local i32 @mmc_request_done(%struct.TYPE_6__*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
