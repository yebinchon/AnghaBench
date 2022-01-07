; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_convert_sta_to_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_convert_sta_to_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32 }
%struct.wcn36xx_hal_config_sta_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.wcn36xx_hal_config_sta_params_v1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wcn36xx*, %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params_v1*)* @wcn36xx_smd_convert_sta_to_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcn36xx_smd_convert_sta_to_v1(%struct.wcn36xx* %0, %struct.wcn36xx_hal_config_sta_params* %1, %struct.wcn36xx_hal_config_sta_params_v1* %2) #0 {
  %4 = alloca %struct.wcn36xx*, align 8
  %5 = alloca %struct.wcn36xx_hal_config_sta_params*, align 8
  %6 = alloca %struct.wcn36xx_hal_config_sta_params_v1*, align 8
  store %struct.wcn36xx* %0, %struct.wcn36xx** %4, align 8
  store %struct.wcn36xx_hal_config_sta_params* %1, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  store %struct.wcn36xx_hal_config_sta_params_v1* %2, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %7 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %8 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %7, i32 0, i32 28
  %9 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %10 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %9, i32 0, i32 28
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = call i32 @memcpy(i32* %8, i32* %11, i32 %12)
  %14 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %15 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %14, i32 0, i32 27
  %16 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %17 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %16, i32 0, i32 27
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = call i32 @memcpy(i32* %15, i32* %18, i32 %19)
  %21 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %22 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %21, i32 0, i32 26
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %25 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %24, i32 0, i32 26
  store i32 %23, i32* %25, align 4
  %26 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %27 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %26, i32 0, i32 25
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %30 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %29, i32 0, i32 25
  store i32 %28, i32* %30, align 4
  %31 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %32 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %31, i32 0, i32 24
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %35 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %34, i32 0, i32 24
  store i32 %33, i32* %35, align 4
  %36 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %37 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %36, i32 0, i32 23
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %40 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %39, i32 0, i32 23
  store i32 %38, i32* %40, align 4
  %41 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %42 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %41, i32 0, i32 22
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %45 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %44, i32 0, i32 22
  store i32 %43, i32* %45, align 4
  %46 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %47 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %46, i32 0, i32 21
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %50 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %49, i32 0, i32 21
  store i32 %48, i32* %50, align 4
  %51 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %52 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %51, i32 0, i32 20
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %55 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %54, i32 0, i32 20
  store i32 %53, i32* %55, align 4
  %56 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %57 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %56, i32 0, i32 19
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %60 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %59, i32 0, i32 19
  store i32 %58, i32* %60, align 4
  %61 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %62 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %61, i32 0, i32 18
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %65 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %64, i32 0, i32 18
  store i32 %63, i32* %65, align 4
  %66 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %67 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %66, i32 0, i32 17
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %70 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %69, i32 0, i32 17
  store i32 %68, i32* %70, align 4
  %71 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %72 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %71, i32 0, i32 16
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %75 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %74, i32 0, i32 16
  store i32 %73, i32* %75, align 4
  %76 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %77 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %76, i32 0, i32 15
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %80 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %79, i32 0, i32 15
  store i32 %78, i32* %80, align 4
  %81 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %82 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %81, i32 0, i32 14
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %85 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %84, i32 0, i32 14
  store i32 %83, i32* %85, align 4
  %86 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %87 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %86, i32 0, i32 13
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %90 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %89, i32 0, i32 13
  store i32 %88, i32* %90, align 4
  %91 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %92 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %91, i32 0, i32 12
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %95 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %94, i32 0, i32 12
  store i32 %93, i32* %95, align 4
  %96 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %97 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %96, i32 0, i32 11
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %100 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %99, i32 0, i32 11
  store i32 %98, i32* %100, align 4
  %101 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %102 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %105 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %104, i32 0, i32 10
  store i32 %103, i32* %105, align 4
  %106 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %107 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %110 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %109, i32 0, i32 9
  store i32 %108, i32* %110, align 4
  %111 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %112 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %115 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %114, i32 0, i32 8
  store i32 %113, i32* %115, align 4
  %116 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %117 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %120 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %119, i32 0, i32 7
  store i32 %118, i32* %120, align 4
  %121 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %122 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %125 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 4
  %126 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %127 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %130 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 4
  %131 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %132 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %135 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  %136 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %137 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %136, i32 0, i32 3
  %138 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %139 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %138, i32 0, i32 3
  %140 = call i32 @memcpy(i32* %137, i32* %139, i32 4)
  %141 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %142 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %145 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  %146 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %147 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %150 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %5, align 8
  %152 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %155 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 4
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
