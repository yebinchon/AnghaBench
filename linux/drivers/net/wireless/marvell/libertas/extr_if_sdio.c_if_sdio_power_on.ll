; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_sdio_card = type { i64, i32, %struct.sdio_func* }
%struct.sdio_func = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.mmc_host* }
%struct.mmc_host = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@MODEL_8686 = common dso_local global i64 0, align 8
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_1 = common dso_local global i64 0, align 8
@MMC_QUIRK_LENIENT_FN0 = common dso_local global i32 0, align 4
@SDIO_CCCR_IF = common dso_local global i32 0, align 4
@SDIO_BUS_ECSI = common dso_local global i32 0, align 4
@IF_SDIO_IOPORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_sdio_card*)* @if_sdio_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_power_on(%struct.if_sdio_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.if_sdio_card*, align 8
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.if_sdio_card* %0, %struct.if_sdio_card** %3, align 8
  %8 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %9 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %8, i32 0, i32 2
  %10 = load %struct.sdio_func*, %struct.sdio_func** %9, align 8
  store %struct.sdio_func* %10, %struct.sdio_func** %4, align 8
  %11 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %12 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.mmc_host*, %struct.mmc_host** %14, align 8
  store %struct.mmc_host* %15, %struct.mmc_host** %5, align 8
  %16 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %17 = call i32 @sdio_claim_host(%struct.sdio_func* %16)
  %18 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %19 = call i32 @sdio_enable_func(%struct.sdio_func* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %118

23:                                               ; preds = %1
  %24 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %25 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MODEL_8686, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %69

29:                                               ; preds = %23
  %30 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %31 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %69

36:                                               ; preds = %29
  %37 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %38 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MMC_BUS_WIDTH_1, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %36
  %44 = load i32, i32* @MMC_QUIRK_LENIENT_FN0, align 4
  %45 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %46 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %44
  store i32 %50, i32* %48, align 8
  %51 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %52 = load i32, i32* @SDIO_CCCR_IF, align 4
  %53 = call i32 @sdio_f0_readb(%struct.sdio_func* %51, i32 %52, i32* %6)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %115

57:                                               ; preds = %43
  %58 = load i32, i32* @SDIO_BUS_ECSI, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @SDIO_CCCR_IF, align 4
  %64 = call i32 @sdio_f0_writeb(%struct.sdio_func* %61, i32 %62, i32 %63, i32* %6)
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %115

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %36, %29, %23
  %70 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %71 = load i64, i64* @IF_SDIO_IOPORT, align 8
  %72 = call i32 @sdio_readb(%struct.sdio_func* %70, i64 %71, i32* %6)
  %73 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %74 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %115

78:                                               ; preds = %69
  %79 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %80 = load i64, i64* @IF_SDIO_IOPORT, align 8
  %81 = add nsw i64 %80, 1
  %82 = call i32 @sdio_readb(%struct.sdio_func* %79, i64 %81, i32* %6)
  %83 = shl i32 %82, 8
  %84 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %85 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  br label %115

91:                                               ; preds = %78
  %92 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %93 = load i64, i64* @IF_SDIO_IOPORT, align 8
  %94 = add nsw i64 %93, 2
  %95 = call i32 @sdio_readb(%struct.sdio_func* %92, i64 %94, i32* %6)
  %96 = shl i32 %95, 16
  %97 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %98 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %115

104:                                              ; preds = %91
  %105 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %106 = call i32 @sdio_release_host(%struct.sdio_func* %105)
  %107 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %108 = call i32 @if_sdio_prog_firmware(%struct.if_sdio_card* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %113 = call i32 @sdio_claim_host(%struct.sdio_func* %112)
  br label %115

114:                                              ; preds = %104
  store i32 0, i32* %2, align 4
  br label %122

115:                                              ; preds = %111, %103, %90, %77, %67, %56
  %116 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %117 = call i32 @sdio_disable_func(%struct.sdio_func* %116)
  br label %118

118:                                              ; preds = %115, %22
  %119 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %120 = call i32 @sdio_release_host(%struct.sdio_func* %119)
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %118, %114
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_enable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_f0_readb(%struct.sdio_func*, i32, i32*) #1

declare dso_local i32 @sdio_f0_writeb(%struct.sdio_func*, i32, i32, i32*) #1

declare dso_local i32 @sdio_readb(%struct.sdio_func*, i64, i32*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @if_sdio_prog_firmware(%struct.if_sdio_card*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
