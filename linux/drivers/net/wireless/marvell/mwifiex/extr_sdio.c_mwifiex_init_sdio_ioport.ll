; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_init_sdio_ioport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_init_sdio_ioport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, %struct.sdio_mmc_card* }
%struct.sdio_mmc_card = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"info: SDIO FUNC1 IO port: %#x\0A\00", align 1
@AUTO_RE_ENABLE_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_init_sdio_ioport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_init_sdio_ioport(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdio_mmc_card*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %6 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %6, i32 0, i32 1
  %8 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  store %struct.sdio_mmc_card* %8, %struct.sdio_mmc_card** %5, align 8
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %12 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %17 = call i64 @mwifiex_init_sdio_new_mode(%struct.mwifiex_adapter* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %128

20:                                               ; preds = %15
  br label %75

21:                                               ; preds = %1
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %23 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %24 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mwifiex_read_reg(%struct.mwifiex_adapter* %22, i32 %27, i32* %4)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 255
  %33 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %38

37:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %128

38:                                               ; preds = %30
  %39 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %40 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %41 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mwifiex_read_reg(%struct.mwifiex_adapter* %39, i32 %44, i32* %4)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 255
  %50 = shl i32 %49, 8
  %51 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %56

55:                                               ; preds = %38
  store i32 -1, i32* %2, align 4
  br label %128

56:                                               ; preds = %47
  %57 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %58 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %59 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @mwifiex_read_reg(%struct.mwifiex_adapter* %57, i32 %62, i32* %4)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 255
  %68 = shl i32 %67, 16
  %69 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %74

73:                                               ; preds = %56
  store i32 -1, i32* %2, align 4
  br label %128

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %20
  %76 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %77 = load i32, i32* @INFO, align 4
  %78 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %76, i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %83 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %84 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @mwifiex_read_reg(%struct.mwifiex_adapter* %82, i32 %87, i32* %4)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %75
  %91 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %92 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %93 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %99 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %97, %102
  %104 = call i32 @mwifiex_write_reg(%struct.mwifiex_adapter* %91, i32 %96, i32 %103)
  br label %106

105:                                              ; preds = %75
  store i32 -1, i32* %2, align 4
  br label %128

106:                                              ; preds = %90
  %107 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %108 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %109 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @mwifiex_read_reg(%struct.mwifiex_adapter* %107, i32 %112, i32* %4)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %106
  %116 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %117 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %118 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @AUTO_RE_ENABLE_INT, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @mwifiex_write_reg(%struct.mwifiex_adapter* %116, i32 %121, i32 %124)
  br label %127

126:                                              ; preds = %106
  store i32 -1, i32* %2, align 4
  br label %128

127:                                              ; preds = %115
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %126, %105, %73, %55, %37, %19
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i64 @mwifiex_init_sdio_new_mode(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_read_reg(%struct.mwifiex_adapter*, i32, i32*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i32) #1

declare dso_local i32 @mwifiex_write_reg(%struct.mwifiex_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
