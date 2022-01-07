; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_ccdc_config_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_ccdc_config_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_ccdc = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_9__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_10__, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, i32, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }

@VPFE_RAW_BAYER = common dso_local global i32 0, align 4
@CCDC_PIXFMT_YCBCR_8BIT = common dso_local global i32 0, align 4
@CCDC_FRMFMT_INTERLACED = common dso_local global i32 0, align 4
@VPFE_PINPOL_POSITIVE = common dso_local global i8* null, align 8
@CCDC_PIXORDER_CBYCRY = common dso_local global i32 0, align 4
@CCDC_BUFTYPE_FLD_INTERLEAVED = common dso_local global i32 0, align 4
@CCDC_PIXFMT_RAW = common dso_local global i32 0, align 4
@CCDC_FRMFMT_PROGRESSIVE = common dso_local global i32 0, align 4
@VPFE_CCDC_DATA_8BITS = common dso_local global i32 0, align 4
@VPFE_CCDC_GAMMA_BITS_09_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpfe_ccdc*)* @vpfe_ccdc_config_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpfe_ccdc_config_defaults(%struct.vpfe_ccdc* %0) #0 {
  %2 = alloca %struct.vpfe_ccdc*, align 8
  store %struct.vpfe_ccdc* %0, %struct.vpfe_ccdc** %2, align 8
  %3 = load i32, i32* @VPFE_RAW_BAYER, align 4
  %4 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %5 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 2
  store i32 %3, i32* %6, align 8
  %7 = load i32, i32* @CCDC_PIXFMT_YCBCR_8BIT, align 4
  %8 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %9 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 8
  store i32 %7, i32* %11, align 4
  %12 = load i32, i32* @CCDC_FRMFMT_INTERLACED, align 4
  %13 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %14 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 7
  store i32 %12, i32* %16, align 8
  %17 = load i8*, i8** @VPFE_PINPOL_POSITIVE, align 8
  %18 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %19 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 6
  store i8* %17, i8** %21, align 8
  %22 = load i8*, i8** @VPFE_PINPOL_POSITIVE, align 8
  %23 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %24 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 5
  store i8* %22, i8** %26, align 8
  %27 = load i8*, i8** @VPFE_PINPOL_POSITIVE, align 8
  %28 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %29 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 4
  store i8* %27, i8** %31, align 8
  %32 = load i32, i32* @CCDC_PIXORDER_CBYCRY, align 4
  %33 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %34 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @CCDC_BUFTYPE_FLD_INTERLEAVED, align 4
  %38 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %39 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i32 %37, i32* %41, align 8
  %42 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %43 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %48 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %53 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 720, i32* %56, align 8
  %57 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %58 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store i32 576, i32* %61, align 4
  %62 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %63 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load i32, i32* @CCDC_PIXFMT_RAW, align 4
  %67 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %68 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 6
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @CCDC_FRMFMT_PROGRESSIVE, align 4
  %72 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %73 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 5
  store i32 %71, i32* %75, align 8
  %76 = load i8*, i8** @VPFE_PINPOL_POSITIVE, align 8
  %77 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %78 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 4
  store i8* %76, i8** %80, align 8
  %81 = load i8*, i8** @VPFE_PINPOL_POSITIVE, align 8
  %82 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %83 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 3
  store i8* %81, i8** %85, align 8
  %86 = load i8*, i8** @VPFE_PINPOL_POSITIVE, align 8
  %87 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %88 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  store i8* %86, i8** %90, align 8
  %91 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %92 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  store i64 0, i64* %95, align 8
  %96 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %97 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  %101 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %102 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i32 800, i32* %105, align 8
  %106 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %107 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  store i32 600, i32* %110, align 4
  %111 = load i32, i32* @VPFE_CCDC_DATA_8BITS, align 4
  %112 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %113 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  store i32 %111, i32* %116, align 4
  %117 = load i32, i32* @VPFE_CCDC_GAMMA_BITS_09_0, align 4
  %118 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %119 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  store i32 %117, i32* %123, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
