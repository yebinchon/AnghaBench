; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_get_wr_port_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_get_wr_port_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, %struct.sdio_mmc_card* }
%struct.sdio_mmc_card = type { i32, i32, i32, i32, i64, %struct.mwifiex_sdio_card_reg* }
%struct.mwifiex_sdio_card_reg = type { i32 }

@DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"data: mp_wr_bitmap=0x%08x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@CTRL_PORT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"invalid data port=%d cur port=%d mp_wr_bitmap=0x%08x -> 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"data: port=%d mp_wr_bitmap=0x%08x -> 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*, i32*)* @mwifiex_get_wr_port_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_get_wr_port_data(%struct.mwifiex_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sdio_mmc_card*, align 8
  %7 = alloca %struct.mwifiex_sdio_card_reg*, align 8
  %8 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %9, i32 0, i32 1
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
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %24 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %110

33:                                               ; preds = %2
  %34 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %35 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %38 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 1, %39
  %41 = and i32 %36, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %33
  %44 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %45 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 1, %46
  %48 = xor i32 %47, -1
  %49 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %50 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %54 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %58 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %62 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %43
  %66 = load %struct.mwifiex_sdio_card_reg*, %struct.mwifiex_sdio_card_reg** %7, align 8
  %67 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, %struct.mwifiex_sdio_card_reg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %70 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %65, %43
  br label %77

72:                                               ; preds = %33
  %73 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %74 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %110

77:                                               ; preds = %71
  %78 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %79 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %77
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CTRL_PORT, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %82
  %88 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %89 = load i32, i32* @ERROR, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %93 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %97 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i32, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %88, i32 %89, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %94, i32 %95, i32 %98)
  store i32 -1, i32* %3, align 4
  br label %110

100:                                              ; preds = %82, %77
  %101 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %102 = load i32, i32* @DATA, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %107 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i32, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %101, i32 %102, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %105, i32 %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %100, %87, %72, %28
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
