; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_parse_pad_autocal_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_parse_pad_autocal_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_tegra = type { i32*, i32, i32*, i32, %struct.sdhci_tegra_autocal_offsets }
%struct.sdhci_tegra_autocal_offsets = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [38 x i8] c"nvidia,pad-autocal-pull-up-offset-3v3\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"nvidia,pad-autocal-pull-down-offset-3v3\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"nvidia,pad-autocal-pull-up-offset-1v8\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"nvidia,pad-autocal-pull-down-offset-1v8\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"nvidia,pad-autocal-pull-up-offset-3v3-timeout\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"%s: Missing autocal timeout 3v3-pad drvs\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"nvidia,pad-autocal-pull-down-offset-3v3-timeout\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"nvidia,pad-autocal-pull-up-offset-1v8-timeout\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"%s: Missing autocal timeout 1v8-pad drvs\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"nvidia,pad-autocal-pull-down-offset-1v8-timeout\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"nvidia,pad-autocal-pull-up-offset-sdr104\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"nvidia,pad-autocal-pull-down-offset-sdr104\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"nvidia,pad-autocal-pull-up-offset-hs400\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"nvidia,pad-autocal-pull-down-offset-hs400\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @tegra_sdhci_parse_pad_autocal_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_sdhci_parse_pad_autocal_dt(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.sdhci_pltfm_host*, align 8
  %4 = alloca %struct.sdhci_tegra*, align 8
  %5 = alloca %struct.sdhci_tegra_autocal_offsets*, align 8
  %6 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %8 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %7)
  store %struct.sdhci_pltfm_host* %8, %struct.sdhci_pltfm_host** %3, align 8
  %9 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %3, align 8
  %10 = call %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %9)
  store %struct.sdhci_tegra* %10, %struct.sdhci_tegra** %4, align 8
  %11 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %12 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %11, i32 0, i32 4
  store %struct.sdhci_tegra_autocal_offsets* %12, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %19 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %18, i32 0, i32 11
  %20 = call i32 @device_property_read_u32(i32 %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %25 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %24, i32 0, i32 11
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %28 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %33 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %32, i32 0, i32 10
  %34 = call i32 @device_property_read_u32(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %39 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %38, i32 0, i32 10
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %26
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %42 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %47 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %46, i32 0, i32 2
  %48 = call i32 @device_property_read_u32(i32 %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %53 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %40
  %55 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %56 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %61 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %60, i32 0, i32 0
  %62 = call i32 @device_property_read_u32(i32 %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %67 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %65, %54
  %69 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %70 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %75 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %74, i32 0, i32 9
  %76 = call i32 @device_property_read_u32(i32 %73, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %68
  %80 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %81 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @IS_ERR(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %79
  %86 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %87 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %92 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = call i32 @mmc_hostname(%struct.TYPE_2__* %93)
  %95 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %85, %79
  %97 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %98 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %97, i32 0, i32 9
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %96, %68
  %100 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %101 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %106 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %105, i32 0, i32 8
  %107 = call i32 @device_property_read_u32(i32 %104, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i64* %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %99
  %111 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %112 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @IS_ERR(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %110
  %117 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %118 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %123 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = call i32 @mmc_hostname(%struct.TYPE_2__* %124)
  %126 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %121, %116, %110
  %128 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %129 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %128, i32 0, i32 8
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %127, %99
  %131 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %132 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %137 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %136, i32 0, i32 7
  %138 = call i32 @device_property_read_u32(i32 %135, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i64* %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %161

141:                                              ; preds = %130
  %142 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %143 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @IS_ERR(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %158, label %147

147:                                              ; preds = %141
  %148 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %149 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %154 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = call i32 @mmc_hostname(%struct.TYPE_2__* %155)
  %157 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %152, %147, %141
  %159 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %160 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %159, i32 0, i32 7
  store i64 0, i64* %160, align 8
  br label %161

161:                                              ; preds = %158, %130
  %162 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %163 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %162, i32 0, i32 0
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %168 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %167, i32 0, i32 6
  %169 = call i32 @device_property_read_u32(i32 %166, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i64* %168)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %192

172:                                              ; preds = %161
  %173 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %174 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @IS_ERR(i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %172
  %179 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %180 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %189

183:                                              ; preds = %178
  %184 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %185 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %184, i32 0, i32 0
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = call i32 @mmc_hostname(%struct.TYPE_2__* %186)
  %188 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %187)
  br label %189

189:                                              ; preds = %183, %178, %172
  %190 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %191 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %190, i32 0, i32 6
  store i64 0, i64* %191, align 8
  br label %192

192:                                              ; preds = %189, %161
  %193 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %194 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %193, i32 0, i32 0
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %199 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %198, i32 0, i32 5
  %200 = call i32 @device_property_read_u32(i32 %197, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i64* %199)
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %6, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %192
  %204 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %205 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %208 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %207, i32 0, i32 5
  store i64 %206, i64* %208, align 8
  br label %209

209:                                              ; preds = %203, %192
  %210 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %211 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %210, i32 0, i32 0
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %216 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %215, i32 0, i32 4
  %217 = call i32 @device_property_read_u32(i32 %214, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i64* %216)
  store i32 %217, i32* %6, align 4
  %218 = load i32, i32* %6, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %209
  %221 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %222 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %225 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %224, i32 0, i32 4
  store i64 %223, i64* %225, align 8
  br label %226

226:                                              ; preds = %220, %209
  %227 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %228 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %227, i32 0, i32 0
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %233 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %232, i32 0, i32 3
  %234 = call i32 @device_property_read_u32(i32 %231, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i64* %233)
  store i32 %234, i32* %6, align 4
  %235 = load i32, i32* %6, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %226
  %238 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %239 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %242 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %241, i32 0, i32 3
  store i64 %240, i64* %242, align 8
  br label %243

243:                                              ; preds = %237, %226
  %244 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %245 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %244, i32 0, i32 0
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %250 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %249, i32 0, i32 1
  %251 = call i32 @device_property_read_u32(i32 %248, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i64* %250)
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* %6, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %243
  %255 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %256 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.sdhci_tegra_autocal_offsets*, %struct.sdhci_tegra_autocal_offsets** %5, align 8
  %259 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %258, i32 0, i32 1
  store i64 %257, i64* %259, align 8
  br label %260

260:                                              ; preds = %254, %243
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @device_property_read_u32(i32, i8*, i64*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
