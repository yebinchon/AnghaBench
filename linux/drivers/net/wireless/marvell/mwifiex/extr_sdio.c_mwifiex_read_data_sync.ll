; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_read_data_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_read_data_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.sdio_mmc_card* }
%struct.sdio_mmc_card = type { i32 }

@MWIFIEX_SDIO_BYTE_MODE_MASK = common dso_local global i32 0, align 4
@BYTE_MODE = common dso_local global i64 0, align 8
@BLOCK_MODE = common dso_local global i64 0, align 8
@MWIFIEX_SDIO_BLOCK_SIZE = common dso_local global i32 0, align 4
@MWIFIEX_SDIO_IO_PORT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*, i64*, i32, i32, i64)* @mwifiex_read_data_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_read_data_sync(%struct.mwifiex_adapter* %0, i64* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.sdio_mmc_card*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %17 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %17, i32 0, i32 0
  %19 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %18, align 8
  store %struct.sdio_mmc_card* %19, %struct.sdio_mmc_card** %11, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @MWIFIEX_SDIO_BYTE_MODE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i64, i64* @BYTE_MODE, align 8
  br label %28

26:                                               ; preds = %5
  %27 = load i64, i64* @BLOCK_MODE, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i64 [ %25, %24 ], [ %27, %26 ]
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @BLOCK_MODE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @MWIFIEX_SDIO_BLOCK_SIZE, align 4
  br label %36

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 1, %35 ]
  store i32 %37, i32* %14, align 4
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* @BLOCK_MODE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @MWIFIEX_SDIO_BLOCK_SIZE, align 4
  %44 = sdiv i32 %42, %43
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %44, %41 ], [ %46, %45 ]
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @MWIFIEX_SDIO_IO_PORT_MASK, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %16, align 4
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %11, align 8
  %56 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sdio_claim_host(i32 %57)
  br label %59

59:                                               ; preds = %54, %47
  %60 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %11, align 8
  %61 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64*, i64** %7, align 8
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %14, align 4
  %67 = mul nsw i32 %65, %66
  %68 = call i32 @sdio_readsb(i32 %62, i64* %63, i32 %64, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %59
  %72 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %11, align 8
  %73 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @sdio_release_host(i32 %74)
  br label %76

76:                                               ; preds = %71, %59
  %77 = load i32, i32* %12, align 4
  ret i32 %77
}

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @sdio_readsb(i32, i64*, i32, i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
