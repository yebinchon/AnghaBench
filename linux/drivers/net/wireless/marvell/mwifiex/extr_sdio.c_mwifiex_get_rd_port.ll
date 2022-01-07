; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_get_rd_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_get_rd_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.sdio_mmc_card* }
%struct.sdio_mmc_card = type { i32, i32, i32, i64, i64, %struct.mwifiex_sdio_card_reg* }
%struct.mwifiex_sdio_card_reg = type { i32, i32 }

@DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"data: mp_rd_bitmap=0x%08x\0A\00", align 1
@CTRL_PORT_MASK = common dso_local global i32 0, align 4
@CTRL_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"data: port=%d mp_rd_bitmap=0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"data: port=%d mp_rd_bitmap=0x%08x -> 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*, i32*)* @mwifiex_get_rd_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_get_rd_port(%struct.mwifiex_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sdio_mmc_card*, align 8
  %7 = alloca %struct.mwifiex_sdio_card_reg*, align 8
  %8 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %9, i32 0, i32 0
  %11 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %10, align 8
  store %struct.sdio_mmc_card* %11, %struct.sdio_mmc_card** %6, align 8
  %12 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %13 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %12, i32 0, i32 5
  %14 = load %struct.mwifiex_sdio_card_reg*, %struct.mwifiex_sdio_card_reg** %13, align 8
  store %struct.mwifiex_sdio_card_reg* %14, %struct.mwifiex_sdio_card_reg** %7, align 8
  %15 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %16 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %19 = load i32, i32* @DATA, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i32, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %18, i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %23 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.mwifiex_sdio_card_reg*, %struct.mwifiex_sdio_card_reg** %7, align 8
  %29 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, %struct.mwifiex_sdio_card_reg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %124

34:                                               ; preds = %26
  br label %46

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @CTRL_PORT_MASK, align 4
  %38 = load %struct.mwifiex_sdio_card_reg*, %struct.mwifiex_sdio_card_reg** %7, align 8
  %39 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, %struct.mwifiex_sdio_card_reg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %37, %40
  %42 = and i32 %36, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %124

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %34
  %47 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %48 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %46
  %52 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %53 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CTRL_PORT_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %51
  %59 = load i32, i32* @CTRL_PORT_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %62 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* @CTRL_PORT, align 4
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %68 = load i32, i32* @DATA, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %72 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i32, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %67, i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %73)
  store i32 0, i32* %3, align 4
  br label %124

75:                                               ; preds = %51, %46
  %76 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %77 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %80 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 1, %81
  %83 = and i32 %78, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %75
  store i32 -1, i32* %3, align 4
  br label %124

86:                                               ; preds = %75
  %87 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %88 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 1, %89
  %91 = xor i32 %90, -1
  %92 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %93 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %97 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %5, align 8
  store i32 %98, i32* %99, align 4
  %100 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %101 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %105 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %86
  %109 = load %struct.mwifiex_sdio_card_reg*, %struct.mwifiex_sdio_card_reg** %7, align 8
  %110 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, %struct.mwifiex_sdio_card_reg* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %113 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %108, %86
  %115 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %116 = load i32, i32* @DATA, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %121 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i32, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %115, i32 %116, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %119, i32 %122)
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %114, %85, %58, %44, %33
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
