; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_register_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_register_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, i32, i32, i32, %struct.sdio_mmc_card* }
%struct.sdio_mmc_card = type { i64, i32, %struct.sdio_func*, i32, %struct.mwifiex_adapter* }
%struct.sdio_func = type { i32 }

@MWIFIEX_SDIO_BLOCK_SIZE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot set SDIO block size\0A\00", align 1
@generic_mem_type_map = common dso_local global i32 0, align 4
@mem_type_mapping_tbl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_register_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_register_dev(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdio_mmc_card*, align 8
  %6 = alloca %struct.sdio_func*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %7 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %7, i32 0, i32 4
  %9 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %8, align 8
  store %struct.sdio_mmc_card* %9, %struct.sdio_mmc_card** %5, align 8
  %10 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %11 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %10, i32 0, i32 2
  %12 = load %struct.sdio_func*, %struct.sdio_func** %11, align 8
  store %struct.sdio_func* %12, %struct.sdio_func** %6, align 8
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %14 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %15 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %14, i32 0, i32 4
  store %struct.mwifiex_adapter* %13, %struct.mwifiex_adapter** %15, align 8
  %16 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %17 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %22 = call i32 @sdio_claim_host(%struct.sdio_func* %21)
  %23 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %24 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %23, i32 0, i32 2
  %25 = load %struct.sdio_func*, %struct.sdio_func** %24, align 8
  %26 = load i32, i32* @MWIFIEX_SDIO_BLOCK_SIZE, align 4
  %27 = call i32 @sdio_set_block_size(%struct.sdio_func* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %29 = call i32 @sdio_release_host(%struct.sdio_func* %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %34 = load i32, i32* @ERROR, align 4
  %35 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %33, i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %64

37:                                               ; preds = %1
  %38 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %42 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @strcpy(i32 %40, i32 %43)
  %45 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %46 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %37
  %50 = load i32, i32* @generic_mem_type_map, align 4
  %51 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %63

55:                                               ; preds = %37
  %56 = load i32, i32* @mem_type_mapping_tbl, align 4
  %57 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @mem_type_mapping_tbl, align 4
  %60 = call i32 @ARRAY_SIZE(i32 %59)
  %61 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %55, %49
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %32
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_set_block_size(%struct.sdio_func*, i32) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
