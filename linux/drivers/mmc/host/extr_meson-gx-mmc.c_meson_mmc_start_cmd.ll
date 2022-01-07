; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_start_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_start_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_command = type { i32, i32, %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i64 }
%struct.meson_host = type { i32, i32, i64, i32, %struct.mmc_command* }

@CMD_CFG_CMD_INDEX_MASK = common dso_local global i32 0, align 4
@CMD_CFG_OWNER = common dso_local global i32 0, align 4
@CMD_CFG_ERROR = common dso_local global i32 0, align 4
@CMD_CFG_DATA_IO = common dso_local global i32 0, align 4
@CMD_CFG_TIMEOUT_MASK = common dso_local global i32 0, align 4
@CMD_CFG_BLOCK_MODE = common dso_local global i32 0, align 4
@CMD_CFG_LENGTH_MASK = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@CMD_CFG_DATA_WR = common dso_local global i32 0, align 4
@CMD_DATA_MASK = common dso_local global i32 0, align 4
@SD_EMMC_CMD_TIMEOUT = common dso_local global i32 0, align 4
@CMD_CFG_END_OF_CHAIN = common dso_local global i32 0, align 4
@SD_EMMC_CMD_CFG = common dso_local global i64 0, align 8
@SD_EMMC_CMD_DAT = common dso_local global i64 0, align 8
@SD_EMMC_CMD_RSP = common dso_local global i64 0, align 8
@SD_EMMC_CMD_ARG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_command*)* @meson_mmc_start_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_mmc_start_cmd(%struct.mmc_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca %struct.meson_host*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %11 = call %struct.meson_host* @mmc_priv(%struct.mmc_host* %10)
  store %struct.meson_host* %11, %struct.meson_host** %5, align 8
  %12 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %12, i32 0, i32 2
  %14 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  store %struct.mmc_data* %14, %struct.mmc_data** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = call i32 (...) @dma_rmb()
  %16 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %17 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %18 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %17, i32 0, i32 4
  store %struct.mmc_command* %16, %struct.mmc_command** %18, align 8
  %19 = load i32, i32* @CMD_CFG_CMD_INDEX_MASK, align 4
  %20 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @FIELD_PREP(i32 %19, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @CMD_CFG_OWNER, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @CMD_CFG_ERROR, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %33 = call i32 @meson_mmc_set_response_bits(%struct.mmc_command* %32, i32* %7)
  %34 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %35 = icmp ne %struct.mmc_data* %34, null
  br i1 %35, label %36, label %128

36:                                               ; preds = %2
  %37 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %38 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @CMD_CFG_DATA_IO, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @CMD_CFG_TIMEOUT_MASK, align 4
  %43 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %44 = call i32 @meson_mmc_get_timeout_msecs(%struct.mmc_data* %43)
  %45 = call i32 @ilog2(i32 %44)
  %46 = call i32 @FIELD_PREP(i32 %42, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %50 = call i64 @meson_mmc_desc_chain_mode(%struct.mmc_data* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %36
  %53 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @meson_mmc_desc_chain_transfer(%struct.mmc_host* %53, i32 %54)
  br label %169

56:                                               ; preds = %36
  %57 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %58 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load i32, i32* @CMD_CFG_BLOCK_MODE, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @CMD_CFG_LENGTH_MASK, align 4
  %66 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %67 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @FIELD_PREP(i32 %65, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %73 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %74 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @meson_mmc_set_blksz(%struct.mmc_host* %72, i32 %75)
  br label %85

77:                                               ; preds = %56
  %78 = load i32, i32* @CMD_CFG_LENGTH_MASK, align 4
  %79 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %80 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @FIELD_PREP(i32 %78, i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %77, %61
  %86 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %87 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %90 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = mul i32 %88, %91
  store i32 %92, i32* %9, align 4
  %93 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %94 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MMC_DATA_WRITE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %85
  %100 = load i32, i32* @CMD_CFG_DATA_WR, align 4
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %105 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ugt i32 %103, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @WARN_ON(i32 %108)
  %110 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %111 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %114 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %117 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @sg_copy_to_buffer(i32 %112, i32 %115, i32 %118, i32 %119)
  %121 = call i32 (...) @dma_wmb()
  br label %122

122:                                              ; preds = %99, %85
  %123 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %124 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @CMD_DATA_MASK, align 4
  %127 = and i32 %125, %126
  store i32 %127, i32* %8, align 4
  br label %135

128:                                              ; preds = %2
  %129 = load i32, i32* @CMD_CFG_TIMEOUT_MASK, align 4
  %130 = load i32, i32* @SD_EMMC_CMD_TIMEOUT, align 4
  %131 = call i32 @ilog2(i32 %130)
  %132 = call i32 @FIELD_PREP(i32 %129, i32 %131)
  %133 = load i32, i32* %7, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %128, %122
  %136 = load i32, i32* @CMD_CFG_END_OF_CHAIN, align 4
  %137 = load i32, i32* %7, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %141 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @SD_EMMC_CMD_CFG, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @writel(i32 %139, i64 %144)
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %148 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @SD_EMMC_CMD_DAT, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @writel(i32 %146, i64 %151)
  %153 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %154 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @SD_EMMC_CMD_RSP, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @writel(i32 0, i64 %157)
  %159 = call i32 (...) @wmb()
  %160 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %161 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %164 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @SD_EMMC_CMD_ARG, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i32 @writel(i32 %162, i64 %167)
  br label %169

169:                                              ; preds = %135, %52
  ret void
}

declare dso_local %struct.meson_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @meson_mmc_set_response_bits(%struct.mmc_command*, i32*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @meson_mmc_get_timeout_msecs(%struct.mmc_data*) #1

declare dso_local i64 @meson_mmc_desc_chain_mode(%struct.mmc_data*) #1

declare dso_local i32 @meson_mmc_desc_chain_transfer(%struct.mmc_host*, i32) #1

declare dso_local i32 @meson_mmc_set_blksz(%struct.mmc_host*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i32, i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
