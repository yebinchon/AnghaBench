; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { %struct.TYPE_7__, %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.sdio_device_id = type { i64 }
%struct.sdio_mmc_card = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.sdio_func* }
%struct.mwifiex_sdio_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"info: vendor=0x%4.04X device=0x%4.04X class=%d function=%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MMC_QUIRK_BLKSZ_FOR_BYTE_MODE = common dso_local global i32 0, align 4
@mwifiex_sdio_work = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to enable function\0A\00", align 1
@sdio_ops = common dso_local global i32 0, align 4
@MWIFIEX_SDIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"add card failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @mwifiex_sdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_sdio_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdio_mmc_card*, align 8
  %8 = alloca %struct.mwifiex_sdio_device*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  store %struct.sdio_mmc_card* null, %struct.sdio_mmc_card** %7, align 8
  %9 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %10 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %13 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %16 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %19 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17, i32 %20)
  %22 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %23 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.sdio_mmc_card* @devm_kzalloc(%struct.TYPE_7__* %23, i32 72, i32 %24)
  store %struct.sdio_mmc_card* %25, %struct.sdio_mmc_card** %7, align 8
  %26 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %27 = icmp ne %struct.sdio_mmc_card* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %175

31:                                               ; preds = %2
  %32 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %33 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %32, i32 0, i32 0
  %34 = call i32 @init_completion(i32* %33)
  %35 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %36 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %37 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %36, i32 0, i32 15
  store %struct.sdio_func* %35, %struct.sdio_func** %37, align 8
  %38 = load i32, i32* @MMC_QUIRK_BLKSZ_FOR_BYTE_MODE, align 4
  %39 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %40 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %38
  store i32 %44, i32* %42, align 4
  %45 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %46 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %124

49:                                               ; preds = %31
  %50 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %51 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = bitcast i8* %53 to %struct.mwifiex_sdio_device*
  store %struct.mwifiex_sdio_device* %54, %struct.mwifiex_sdio_device** %8, align 8
  %55 = load %struct.mwifiex_sdio_device*, %struct.mwifiex_sdio_device** %8, align 8
  %56 = getelementptr inbounds %struct.mwifiex_sdio_device, %struct.mwifiex_sdio_device* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %59 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %58, i32 0, i32 14
  store i32 %57, i32* %59, align 8
  %60 = load %struct.mwifiex_sdio_device*, %struct.mwifiex_sdio_device** %8, align 8
  %61 = getelementptr inbounds %struct.mwifiex_sdio_device, %struct.mwifiex_sdio_device* %60, i32 0, i32 11
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %64 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %63, i32 0, i32 13
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mwifiex_sdio_device*, %struct.mwifiex_sdio_device** %8, align 8
  %66 = getelementptr inbounds %struct.mwifiex_sdio_device, %struct.mwifiex_sdio_device* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %69 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %68, i32 0, i32 12
  store i32 %67, i32* %69, align 8
  %70 = load %struct.mwifiex_sdio_device*, %struct.mwifiex_sdio_device** %8, align 8
  %71 = getelementptr inbounds %struct.mwifiex_sdio_device, %struct.mwifiex_sdio_device* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %74 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %73, i32 0, i32 11
  store i32 %72, i32* %74, align 4
  %75 = load %struct.mwifiex_sdio_device*, %struct.mwifiex_sdio_device** %8, align 8
  %76 = getelementptr inbounds %struct.mwifiex_sdio_device, %struct.mwifiex_sdio_device* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %79 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %78, i32 0, i32 10
  store i32 %77, i32* %79, align 8
  %80 = load %struct.mwifiex_sdio_device*, %struct.mwifiex_sdio_device** %8, align 8
  %81 = getelementptr inbounds %struct.mwifiex_sdio_device, %struct.mwifiex_sdio_device* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %84 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %83, i32 0, i32 9
  store i32 %82, i32* %84, align 4
  %85 = load %struct.mwifiex_sdio_device*, %struct.mwifiex_sdio_device** %8, align 8
  %86 = getelementptr inbounds %struct.mwifiex_sdio_device, %struct.mwifiex_sdio_device* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %89 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 8
  %90 = load %struct.mwifiex_sdio_device*, %struct.mwifiex_sdio_device** %8, align 8
  %91 = getelementptr inbounds %struct.mwifiex_sdio_device, %struct.mwifiex_sdio_device* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %94 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 4
  %95 = load %struct.mwifiex_sdio_device*, %struct.mwifiex_sdio_device** %8, align 8
  %96 = getelementptr inbounds %struct.mwifiex_sdio_device, %struct.mwifiex_sdio_device* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %99 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 8
  %100 = load %struct.mwifiex_sdio_device*, %struct.mwifiex_sdio_device** %8, align 8
  %101 = getelementptr inbounds %struct.mwifiex_sdio_device, %struct.mwifiex_sdio_device* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %104 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  %105 = load %struct.mwifiex_sdio_device*, %struct.mwifiex_sdio_device** %8, align 8
  %106 = getelementptr inbounds %struct.mwifiex_sdio_device, %struct.mwifiex_sdio_device* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %109 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = load %struct.mwifiex_sdio_device*, %struct.mwifiex_sdio_device** %8, align 8
  %111 = getelementptr inbounds %struct.mwifiex_sdio_device, %struct.mwifiex_sdio_device* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %114 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load %struct.mwifiex_sdio_device*, %struct.mwifiex_sdio_device** %8, align 8
  %116 = getelementptr inbounds %struct.mwifiex_sdio_device, %struct.mwifiex_sdio_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %119 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %121 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %120, i32 0, i32 1
  %122 = load i32, i32* @mwifiex_sdio_work, align 4
  %123 = call i32 @INIT_WORK(i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %49, %31
  %125 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %126 = call i32 @sdio_claim_host(%struct.sdio_func* %125)
  %127 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %128 = call i32 @sdio_enable_func(%struct.sdio_func* %127)
  store i32 %128, i32* %6, align 4
  %129 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %130 = call i32 @sdio_release_host(%struct.sdio_func* %129)
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %124
  %134 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %135 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %134, i32 0, i32 0
  %136 = call i32 @dev_err(%struct.TYPE_7__* %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %3, align 4
  br label %175

138:                                              ; preds = %124
  %139 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %140 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %138
  %145 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %146 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %145, i32 0, i32 0
  %147 = call i32 @mwifiex_sdio_probe_of(%struct.TYPE_7__* %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %167

151:                                              ; preds = %144
  br label %152

152:                                              ; preds = %151, %138
  %153 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %154 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %155 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %154, i32 0, i32 0
  %156 = load i32, i32* @MWIFIEX_SDIO, align 4
  %157 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %158 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %157, i32 0, i32 0
  %159 = call i32 @mwifiex_add_card(%struct.sdio_mmc_card* %153, i32* %155, i32* @sdio_ops, i32 %156, %struct.TYPE_7__* %158)
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %152
  %163 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %164 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %163, i32 0, i32 0
  %165 = call i32 @dev_err(%struct.TYPE_7__* %164, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %167

166:                                              ; preds = %152
  store i32 0, i32* %3, align 4
  br label %175

167:                                              ; preds = %162, %150
  %168 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %169 = call i32 @sdio_claim_host(%struct.sdio_func* %168)
  %170 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %171 = call i32 @sdio_disable_func(%struct.sdio_func* %170)
  %172 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %173 = call i32 @sdio_release_host(%struct.sdio_func* %172)
  %174 = load i32, i32* %6, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %167, %166, %133, %28
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.sdio_mmc_card* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_enable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @mwifiex_sdio_probe_of(%struct.TYPE_7__*) #1

declare dso_local i32 @mwifiex_add_card(%struct.sdio_mmc_card*, i32*, i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
