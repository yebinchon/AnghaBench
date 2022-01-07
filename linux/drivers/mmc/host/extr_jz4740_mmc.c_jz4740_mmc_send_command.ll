; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4740_mmc_host = type { i32, i64, i64, i64, %struct.mmc_command* }
%struct.mmc_command = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@JZ_MMC_CMDAT_INIT = common dso_local global i32 0, align 4
@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@JZ_MMC_CMDAT_BUSY = common dso_local global i32 0, align 4
@JZ_MMC_CMDAT_RSP_R1 = common dso_local global i32 0, align 4
@JZ_MMC_CMDAT_RSP_R2 = common dso_local global i32 0, align 4
@JZ_MMC_CMDAT_RSP_R3 = common dso_local global i32 0, align 4
@JZ_MMC_CMDAT_DATA_EN = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@JZ_MMC_CMDAT_WRITE = common dso_local global i32 0, align 4
@JZ_MMC_JZ4780 = common dso_local global i64 0, align 8
@JZ_MMC_DMAC_DMA_EN = common dso_local global i32 0, align 4
@JZ_MMC_DMAC_DMA_SEL = common dso_local global i32 0, align 4
@JZ_REG_MMC_DMAC = common dso_local global i64 0, align 8
@JZ_MMC_CMDAT_DMA_EN = common dso_local global i32 0, align 4
@JZ_REG_MMC_BLKLEN = common dso_local global i64 0, align 8
@JZ_REG_MMC_NOB = common dso_local global i64 0, align 8
@JZ_REG_MMC_CMD = common dso_local global i64 0, align 8
@JZ_REG_MMC_ARG = common dso_local global i64 0, align 8
@JZ_REG_MMC_CMDAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jz4740_mmc_host*, %struct.mmc_command*)* @jz4740_mmc_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4740_mmc_send_command(%struct.jz4740_mmc_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.jz4740_mmc_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca i32, align 4
  store %struct.jz4740_mmc_host* %0, %struct.jz4740_mmc_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %6 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @JZ_MMC_CMDAT_INIT, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %16 = call i32 @jz4740_mmc_clock_disable(%struct.jz4740_mmc_host* %15)
  %17 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %18 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %18, i32 0, i32 4
  store %struct.mmc_command* %17, %struct.mmc_command** %19, align 8
  %20 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MMC_RSP_BUSY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @JZ_MMC_CMDAT_BUSY, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %2
  %31 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %32 = call i32 @mmc_resp_type(%struct.mmc_command* %31)
  switch i32 %32, label %45 [
    i32 130, label %33
    i32 131, label %33
    i32 129, label %37
    i32 128, label %41
  ]

33:                                               ; preds = %30, %30
  %34 = load i32, i32* @JZ_MMC_CMDAT_RSP_R1, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %46

37:                                               ; preds = %30
  %38 = load i32, i32* @JZ_MMC_CMDAT_RSP_R2, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %46

41:                                               ; preds = %30
  %42 = load i32, i32* @JZ_MMC_CMDAT_RSP_R3, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %46

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45, %41, %37, %33
  %47 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %48 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = icmp ne %struct.TYPE_2__* %49, null
  br i1 %50, label %51, label %130

51:                                               ; preds = %46
  %52 = load i32, i32* @JZ_MMC_CMDAT_DATA_EN, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %56 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MMC_DATA_WRITE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %51
  %64 = load i32, i32* @JZ_MMC_CMDAT_WRITE, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %51
  %68 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %69 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %67
  %73 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %74 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @JZ_MMC_JZ4780, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load i32, i32* @JZ_MMC_DMAC_DMA_EN, align 4
  %80 = load i32, i32* @JZ_MMC_DMAC_DMA_SEL, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %83 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @JZ_REG_MMC_DMAC, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 %81, i64 %86)
  br label %92

88:                                               ; preds = %72
  %89 = load i32, i32* @JZ_MMC_CMDAT_DMA_EN, align 4
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %88, %78
  br label %107

93:                                               ; preds = %67
  %94 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %95 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @JZ_MMC_JZ4780, align 8
  %98 = icmp sge i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %101 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @JZ_REG_MMC_DMAC, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel(i32 0, i64 %104)
  br label %106

106:                                              ; preds = %99, %93
  br label %107

107:                                              ; preds = %106, %92
  %108 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %109 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %108, i32 0, i32 3
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %114 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @JZ_REG_MMC_BLKLEN, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writew(i32 %112, i64 %117)
  %119 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %120 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %119, i32 0, i32 3
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %125 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @JZ_REG_MMC_NOB, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @writew(i32 %123, i64 %128)
  br label %130

130:                                              ; preds = %107, %46
  %131 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %132 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %135 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @JZ_REG_MMC_CMD, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writeb(i32 %133, i64 %138)
  %140 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %141 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %144 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @JZ_REG_MMC_ARG, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writel(i32 %142, i64 %147)
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %151 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @JZ_REG_MMC_CMDAT, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @writel(i32 %149, i64 %154)
  %156 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %157 = call i32 @jz4740_mmc_clock_enable(%struct.jz4740_mmc_host* %156, i32 1)
  ret void
}

declare dso_local i32 @jz4740_mmc_clock_disable(%struct.jz4740_mmc_host*) #1

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @jz4740_mmc_clock_enable(%struct.jz4740_mmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
