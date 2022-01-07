; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_init_sdio_new_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_init_sdio_new_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, %struct.sdio_mmc_card* }
%struct.sdio_mmc_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MEM_PORT = common dso_local global i32 0, align 4
@CMD53_NEW_MODE = common dso_local global i32 0, align 4
@CMD_PORT_RD_LEN_EN = common dso_local global i32 0, align 4
@CMD_PORT_AUTO_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_init_sdio_new_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_init_sdio_new_mode(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdio_mmc_card*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %6 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %6, i32 0, i32 1
  %8 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  store %struct.sdio_mmc_card* %8, %struct.sdio_mmc_card** %5, align 8
  %9 = load i32, i32* @MEM_PORT, align 4
  %10 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %13 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %14 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @mwifiex_read_reg(%struct.mwifiex_adapter* %12, i32 %17, i32* %4)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %81

21:                                               ; preds = %1
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %23 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %24 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @CMD53_NEW_MODE, align 4
  %30 = or i32 %28, %29
  %31 = call i64 @mwifiex_write_reg(%struct.mwifiex_adapter* %22, i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %81

34:                                               ; preds = %21
  %35 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %36 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %37 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @mwifiex_read_reg(%struct.mwifiex_adapter* %35, i32 %40, i32* %4)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 -1, i32* %2, align 4
  br label %81

44:                                               ; preds = %34
  %45 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %46 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %47 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @CMD_PORT_RD_LEN_EN, align 4
  %53 = or i32 %51, %52
  %54 = call i64 @mwifiex_write_reg(%struct.mwifiex_adapter* %45, i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  store i32 -1, i32* %2, align 4
  br label %81

57:                                               ; preds = %44
  %58 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %59 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %60 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @mwifiex_read_reg(%struct.mwifiex_adapter* %58, i32 %63, i32* %4)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 -1, i32* %2, align 4
  br label %81

67:                                               ; preds = %57
  %68 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %69 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %70 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @CMD_PORT_AUTO_EN, align 4
  %76 = or i32 %74, %75
  %77 = call i64 @mwifiex_write_reg(%struct.mwifiex_adapter* %68, i32 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  store i32 -1, i32* %2, align 4
  br label %81

80:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %79, %66, %56, %43, %33, %20
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @mwifiex_read_reg(%struct.mwifiex_adapter*, i32, i32*) #1

declare dso_local i64 @mwifiex_write_reg(%struct.mwifiex_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
