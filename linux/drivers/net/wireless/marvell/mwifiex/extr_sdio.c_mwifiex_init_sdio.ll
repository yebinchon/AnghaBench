; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_init_sdio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_init_sdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, i32, i32, %struct.sdio_mmc_card* }
%struct.sdio_mmc_card = type { i64, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i8*, i32, i32, i32, i32, i64, i64, %struct.mwifiex_sdio_card_reg*, i32 }
%struct.TYPE_4__ = type { i32, i8*, i8*, i32, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i64 }
%struct.mwifiex_sdio_card_reg = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWIFIEX_MP_AGGR_BUF_SIZE_MAX = common dso_local global i64 0, align 8
@MWIFIEX_MP_AGGR_BUF_SIZE_32K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_init_sdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_init_sdio(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.sdio_mmc_card*, align 8
  %5 = alloca %struct.mwifiex_sdio_card_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 3
  %10 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %9, align 8
  store %struct.sdio_mmc_card* %10, %struct.sdio_mmc_card** %4, align 8
  %11 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %12 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %11, i32 0, i32 13
  %13 = load %struct.mwifiex_sdio_card_reg*, %struct.mwifiex_sdio_card_reg** %12, align 8
  store %struct.mwifiex_sdio_card_reg* %13, %struct.mwifiex_sdio_card_reg** %5, align 8
  %14 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %15 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %14, i32 0, i32 14
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %18 = call i32 @sdio_set_drvdata(i32 %16, %struct.sdio_mmc_card* %17)
  %19 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %20 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %21 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %20, i32 0, i32 13
  %22 = load %struct.mwifiex_sdio_card_reg*, %struct.mwifiex_sdio_card_reg** %21, align 8
  %23 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, %struct.mwifiex_sdio_card_reg* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mwifiex_read_reg(%struct.mwifiex_adapter* %19, i32 %24, i32* %7)
  %26 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %27 = call i32 @mwifiex_init_sdio_ioport(%struct.mwifiex_adapter* %26)
  %28 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %29 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %28, i32 0, i32 12
  store i64 0, i64* %29, align 8
  %30 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %31 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %30, i32 0, i32 11
  store i64 0, i64* %31, align 8
  %32 = load %struct.mwifiex_sdio_card_reg*, %struct.mwifiex_sdio_card_reg** %5, align 8
  %33 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, %struct.mwifiex_sdio_card_reg* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %36 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %35, i32 0, i32 10
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mwifiex_sdio_card_reg*, %struct.mwifiex_sdio_card_reg** %5, align 8
  %38 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, %struct.mwifiex_sdio_card_reg* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %41 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 8
  %42 = load %struct.mwifiex_sdio_card_reg*, %struct.mwifiex_sdio_card_reg** %5, align 8
  %43 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, %struct.mwifiex_sdio_card_reg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %46 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %48 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %51 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %54 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %57 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %60 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %63 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %66 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 6
  store i64 0, i64* %67, align 8
  %68 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %69 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 5
  store i64 0, i64* %70, align 8
  %71 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %72 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %75 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %78 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %81 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 8
  %83 = load %struct.mwifiex_sdio_card_reg*, %struct.mwifiex_sdio_card_reg** %5, align 8
  %84 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, %struct.mwifiex_sdio_card_reg* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i8* @kzalloc(i32 %85, i32 %86)
  %88 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %89 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %88, i32 0, i32 6
  store i8* %87, i8** %89, align 8
  %90 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %91 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %90, i32 0, i32 6
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %1
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %195

97:                                               ; preds = %1
  %98 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %99 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call i8* @kcalloc(i32 %100, i32 8, i32 %101)
  %103 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %104 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i8* %102, i8** %105, align 8
  %106 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %107 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %118, label %111

111:                                              ; preds = %97
  %112 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %113 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %112, i32 0, i32 6
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @kfree(i8* %114)
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %195

118:                                              ; preds = %97
  %119 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %120 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i8* @kcalloc(i32 %121, i32 1, i32 %122)
  %124 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %125 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  store i8* %123, i8** %126, align 8
  %127 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %128 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %144, label %132

132:                                              ; preds = %118
  %133 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %134 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %133, i32 0, i32 6
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @kfree(i8* %135)
  %137 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %138 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @kfree(i8* %140)
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %2, align 4
  br label %195

144:                                              ; preds = %118
  %145 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %146 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %147 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %150 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @mwifiex_alloc_sdio_mpa_buffers(%struct.mwifiex_adapter* %145, i64 %148, i64 %151)
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %184

155:                                              ; preds = %144
  %156 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %157 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @MWIFIEX_MP_AGGR_BUF_SIZE_MAX, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %167, label %161

161:                                              ; preds = %155
  %162 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %163 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @MWIFIEX_MP_AGGR_BUF_SIZE_MAX, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %184

167:                                              ; preds = %161, %155
  %168 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %169 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %168, i32 0, i32 0
  store i32 1, i32* %169, align 8
  %170 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %171 = load i64, i64* @MWIFIEX_MP_AGGR_BUF_SIZE_32K, align 8
  %172 = load i64, i64* @MWIFIEX_MP_AGGR_BUF_SIZE_32K, align 8
  %173 = call i32 @mwifiex_alloc_sdio_mpa_buffers(%struct.mwifiex_adapter* %170, i64 %171, i64 %172)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %167
  %177 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %178 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  store i32 0, i32* %179, align 8
  %180 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %181 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  store i32 0, i32* %182, align 8
  br label %183

183:                                              ; preds = %176, %167
  br label %184

184:                                              ; preds = %183, %161, %144
  %185 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %186 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %189 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  %190 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %191 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %194 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %184, %132, %111, %94
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @sdio_set_drvdata(i32, %struct.sdio_mmc_card*) #1

declare dso_local i32 @mwifiex_read_reg(%struct.mwifiex_adapter*, i32, i32*) #1

declare dso_local i32 @mwifiex_init_sdio_ioport(%struct.mwifiex_adapter*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mwifiex_alloc_sdio_mpa_buffers(%struct.mwifiex_adapter*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
