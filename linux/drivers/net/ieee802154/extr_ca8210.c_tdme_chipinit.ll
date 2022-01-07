; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_tdme_chipinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_tdme_chipinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preamble_cfg_sfr = type { i32, i32, i32 }
%struct.spi_device = type { i32 }

@MAC_SUCCESS = common dso_local global i64 0, align 8
@__const.tdme_chipinit.pre_cfg_value = private unnamed_addr constant %struct.preamble_cfg_sfr { i32 3, i32 3, i32 1 }, align 4
@CA8210_SFR_LNAGX40 = common dso_local global i64 0, align 8
@LNAGX40_DEFAULT_GAIN = common dso_local global i64 0, align 8
@CA8210_SFR_LNAGX41 = common dso_local global i64 0, align 8
@LNAGX41_DEFAULT_GAIN = common dso_local global i64 0, align 8
@CA8210_SFR_LNAGX42 = common dso_local global i64 0, align 8
@LNAGX42_DEFAULT_GAIN = common dso_local global i64 0, align 8
@CA8210_SFR_LNAGX43 = common dso_local global i64 0, align 8
@LNAGX43_DEFAULT_GAIN = common dso_local global i64 0, align 8
@CA8210_SFR_LNAGX44 = common dso_local global i64 0, align 8
@LNAGX44_DEFAULT_GAIN = common dso_local global i64 0, align 8
@CA8210_SFR_LNAGX45 = common dso_local global i64 0, align 8
@LNAGX45_DEFAULT_GAIN = common dso_local global i64 0, align 8
@CA8210_SFR_LNAGX46 = common dso_local global i64 0, align 8
@LNAGX46_DEFAULT_GAIN = common dso_local global i64 0, align 8
@CA8210_SFR_LNAGX47 = common dso_local global i64 0, align 8
@LNAGX47_DEFAULT_GAIN = common dso_local global i64 0, align 8
@CA8210_SFR_PRECFG = common dso_local global i64 0, align 8
@CA8210_SFR_PTHRH = common dso_local global i64 0, align 8
@PTHRH_DEFAULT_THRESHOLD = common dso_local global i64 0, align 8
@CA8210_SFR_PACFGIB = common dso_local global i64 0, align 8
@PACFGIB_DEFAULT_CURRENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"failed to set sfr at %#03x, status = %#03x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @tdme_chipinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tdme_chipinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.preamble_cfg_sfr, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i64, i64* @MAC_SUCCESS, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.spi_device*
  store %struct.spi_device* %9, %struct.spi_device** %5, align 8
  %10 = bitcast %struct.preamble_cfg_sfr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.preamble_cfg_sfr* @__const.tdme_chipinit.pre_cfg_value to i8*), i64 12, i1 false)
  %11 = load i64, i64* @CA8210_SFR_LNAGX40, align 8
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* @LNAGX40_DEFAULT_GAIN, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @tdme_setsfr_request_sync(i32 1, i64 %11, i64 %12, i8* %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %100

18:                                               ; preds = %1
  %19 = load i64, i64* @CA8210_SFR_LNAGX41, align 8
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* @LNAGX41_DEFAULT_GAIN, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = call i64 @tdme_setsfr_request_sync(i32 1, i64 %19, i64 %20, i8* %21)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %100

26:                                               ; preds = %18
  %27 = load i64, i64* @CA8210_SFR_LNAGX42, align 8
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* @LNAGX42_DEFAULT_GAIN, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = call i64 @tdme_setsfr_request_sync(i32 1, i64 %27, i64 %28, i8* %29)
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %100

34:                                               ; preds = %26
  %35 = load i64, i64* @CA8210_SFR_LNAGX43, align 8
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* @LNAGX43_DEFAULT_GAIN, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = call i64 @tdme_setsfr_request_sync(i32 1, i64 %35, i64 %36, i8* %37)
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %100

42:                                               ; preds = %34
  %43 = load i64, i64* @CA8210_SFR_LNAGX44, align 8
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* @LNAGX44_DEFAULT_GAIN, align 8
  %45 = load i8*, i8** %2, align 8
  %46 = call i64 @tdme_setsfr_request_sync(i32 1, i64 %43, i64 %44, i8* %45)
  store i64 %46, i64* %3, align 8
  %47 = load i64, i64* %3, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %100

50:                                               ; preds = %42
  %51 = load i64, i64* @CA8210_SFR_LNAGX45, align 8
  store i64 %51, i64* %4, align 8
  %52 = load i64, i64* @LNAGX45_DEFAULT_GAIN, align 8
  %53 = load i8*, i8** %2, align 8
  %54 = call i64 @tdme_setsfr_request_sync(i32 1, i64 %51, i64 %52, i8* %53)
  store i64 %54, i64* %3, align 8
  %55 = load i64, i64* %3, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %100

58:                                               ; preds = %50
  %59 = load i64, i64* @CA8210_SFR_LNAGX46, align 8
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* @LNAGX46_DEFAULT_GAIN, align 8
  %61 = load i8*, i8** %2, align 8
  %62 = call i64 @tdme_setsfr_request_sync(i32 1, i64 %59, i64 %60, i8* %61)
  store i64 %62, i64* %3, align 8
  %63 = load i64, i64* %3, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %100

66:                                               ; preds = %58
  %67 = load i64, i64* @CA8210_SFR_LNAGX47, align 8
  store i64 %67, i64* %4, align 8
  %68 = load i64, i64* @LNAGX47_DEFAULT_GAIN, align 8
  %69 = load i8*, i8** %2, align 8
  %70 = call i64 @tdme_setsfr_request_sync(i32 1, i64 %67, i64 %68, i8* %69)
  store i64 %70, i64* %3, align 8
  %71 = load i64, i64* %3, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %100

74:                                               ; preds = %66
  %75 = load i64, i64* @CA8210_SFR_PRECFG, align 8
  store i64 %75, i64* %4, align 8
  %76 = bitcast %struct.preamble_cfg_sfr* %6 to i64*
  %77 = load i64, i64* %76, align 4
  %78 = load i8*, i8** %2, align 8
  %79 = call i64 @tdme_setsfr_request_sync(i32 1, i64 %75, i64 %77, i8* %78)
  store i64 %79, i64* %3, align 8
  %80 = load i64, i64* %3, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %100

83:                                               ; preds = %74
  %84 = load i64, i64* @CA8210_SFR_PTHRH, align 8
  store i64 %84, i64* %4, align 8
  %85 = load i64, i64* @PTHRH_DEFAULT_THRESHOLD, align 8
  %86 = load i8*, i8** %2, align 8
  %87 = call i64 @tdme_setsfr_request_sync(i32 1, i64 %84, i64 %85, i8* %86)
  store i64 %87, i64* %3, align 8
  %88 = load i64, i64* %3, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %100

91:                                               ; preds = %83
  %92 = load i64, i64* @CA8210_SFR_PACFGIB, align 8
  store i64 %92, i64* %4, align 8
  %93 = load i64, i64* @PACFGIB_DEFAULT_CURRENT, align 8
  %94 = load i8*, i8** %2, align 8
  %95 = call i64 @tdme_setsfr_request_sync(i32 0, i64 %92, i64 %93, i8* %94)
  store i64 %95, i64* %3, align 8
  %96 = load i64, i64* %3, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %100

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %98, %90, %82, %73, %65, %57, %49, %41, %33, %25, %17
  %101 = load i64, i64* %3, align 8
  %102 = load i64, i64* @MAC_SUCCESS, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %106 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %105, i32 0, i32 0
  %107 = load i64, i64* %4, align 8
  %108 = load i64, i64* %3, align 8
  %109 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %107, i64 %108)
  br label %110

110:                                              ; preds = %104, %100
  %111 = load i64, i64* %3, align 8
  ret i64 %111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @tdme_setsfr_request_sync(i32, i64, i64, i8*) #2

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
