; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmc_spi.c_mmc_spi_writeblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmc_spi.c_mmc_spi_writeblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_spi_host = type { i64, i32, i32, %struct.TYPE_2__*, %struct.scratch*, %struct.spi_device* }
%struct.TYPE_2__ = type { i64 }
%struct.scratch = type { i32*, i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64, i32, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"write error (%d)\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"write error %02x (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_spi_host*, %struct.spi_transfer*, i64)* @mmc_spi_writeblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_spi_writeblock(%struct.mmc_spi_host* %0, %struct.spi_transfer* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_spi_host*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scratch*, align 8
  %12 = alloca i32, align 4
  store %struct.mmc_spi_host* %0, %struct.mmc_spi_host** %5, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %14 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %13, i32 0, i32 5
  %15 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  store %struct.spi_device* %15, %struct.spi_device** %8, align 8
  %16 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %17 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %16, i32 0, i32 4
  %18 = load %struct.scratch*, %struct.scratch** %17, align 8
  store %struct.scratch* %18, %struct.scratch** %11, align 8
  %19 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %20 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %3
  %26 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @crc_itu_t(i32 0, i32 %28, i64 %31)
  %33 = call i32 @cpu_to_be16(i32 %32)
  %34 = load %struct.scratch*, %struct.scratch** %11, align 8
  %35 = getelementptr inbounds %struct.scratch, %struct.scratch* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %25, %3
  %37 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %38 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %43 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %46 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %49 = call i32 @dma_sync_single_for_device(i64 %44, i32 %47, i32 16, i32 %48)
  br label %50

50:                                               ; preds = %41, %36
  %51 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %52 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %53 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %52, i32 0, i32 2
  %54 = call i32 @spi_sync_locked(%struct.spi_device* %51, i32* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %59 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %58, i32 0, i32 0
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %167

63:                                               ; preds = %50
  %64 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %65 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %70 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %73 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %76 = call i32 @dma_sync_single_for_cpu(i64 %71, i32 %74, i32 16, i32 %75)
  br label %77

77:                                               ; preds = %68, %63
  %78 = load %struct.scratch*, %struct.scratch** %11, align 8
  %79 = getelementptr inbounds %struct.scratch, %struct.scratch* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @get_unaligned_be32(i32* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = or i32 %82, -536870912
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %88, %77
  %85 = load i32, i32* %12, align 4
  %86 = and i32 %85, -2147483648
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* %12, align 4
  %90 = shl i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %84

91:                                               ; preds = %84
  %92 = load i32, i32* %12, align 4
  %93 = ashr i32 %92, 27
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  switch i32 %94, label %102 [
    i32 130, label %95
    i32 129, label %96
    i32 128, label %99
  ]

95:                                               ; preds = %91
  store i32 0, i32* %9, align 4
  br label %105

96:                                               ; preds = %91
  %97 = load i32, i32* @EILSEQ, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %9, align 4
  br label %105

99:                                               ; preds = %91
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %9, align 4
  br label %105

102:                                              ; preds = %91
  %103 = load i32, i32* @EPROTO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %102, %99, %96, %95
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %110 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %109, i32 0, i32 0
  %111 = load %struct.scratch*, %struct.scratch** %11, align 8
  %112 = getelementptr inbounds %struct.scratch, %struct.scratch* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %4, align 4
  br label %167

119:                                              ; preds = %105
  %120 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %121 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %124 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %122
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %124, align 4
  %129 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %130 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %119
  %134 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %135 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %138 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %136
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 8
  br label %143

143:                                              ; preds = %133, %119
  store i32 4, i32* %10, align 4
  br label %144

144:                                              ; preds = %160, %143
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = icmp ult i64 %146, 8
  br i1 %147, label %148, label %163

148:                                              ; preds = %144
  %149 = load %struct.scratch*, %struct.scratch** %11, align 8
  %150 = getelementptr inbounds %struct.scratch, %struct.scratch* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 1
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %148
  store i32 0, i32* %4, align 4
  br label %167

159:                                              ; preds = %148
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %144

163:                                              ; preds = %144
  %164 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %165 = load i64, i64* %7, align 8
  %166 = call i32 @mmc_spi_wait_unbusy(%struct.mmc_spi_host* %164, i64 %165)
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %163, %158, %108, %57
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @crc_itu_t(i32, i32, i64) #1

declare dso_local i32 @dma_sync_single_for_device(i64, i32, i32, i32) #1

declare dso_local i32 @spi_sync_locked(%struct.spi_device*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @dma_sync_single_for_cpu(i64, i32, i32, i32) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @mmc_spi_wait_unbusy(%struct.mmc_spi_host*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
