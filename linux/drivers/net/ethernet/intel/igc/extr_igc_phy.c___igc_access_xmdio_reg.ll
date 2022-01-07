; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_phy.c___igc_access_xmdio_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_phy.c___igc_access_xmdio_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.igc_hw.0*, i32, i32)*, i64 (%struct.igc_hw.1*, i32, i32*)* }
%struct.igc_hw.0 = type opaque
%struct.igc_hw.1 = type opaque

@IGC_MMDAC = common dso_local global i32 0, align 4
@IGC_MMDAAD = common dso_local global i32 0, align 4
@IGC_MMDAC_FUNC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.igc_hw*, i32, i32, i32*, i32)* @__igc_access_xmdio_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__igc_access_xmdio_reg(%struct.igc_hw* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.igc_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.igc_hw* %0, %struct.igc_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %14 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64 (%struct.igc_hw.0*, i32, i32)*, i64 (%struct.igc_hw.0*, i32, i32)** %16, align 8
  %18 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %19 = bitcast %struct.igc_hw* %18 to %struct.igc_hw.0*
  %20 = load i32, i32* @IGC_MMDAC, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 %17(%struct.igc_hw.0* %19, i32 %20, i32 %21)
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i64, i64* %12, align 8
  store i64 %26, i64* %6, align 8
  br label %106

27:                                               ; preds = %5
  %28 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %29 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64 (%struct.igc_hw.0*, i32, i32)*, i64 (%struct.igc_hw.0*, i32, i32)** %31, align 8
  %33 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %34 = bitcast %struct.igc_hw* %33 to %struct.igc_hw.0*
  %35 = load i32, i32* @IGC_MMDAAD, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i64 %32(%struct.igc_hw.0* %34, i32 %35, i32 %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i64, i64* %12, align 8
  store i64 %41, i64* %6, align 8
  br label %106

42:                                               ; preds = %27
  %43 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %44 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64 (%struct.igc_hw.0*, i32, i32)*, i64 (%struct.igc_hw.0*, i32, i32)** %46, align 8
  %48 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %49 = bitcast %struct.igc_hw* %48 to %struct.igc_hw.0*
  %50 = load i32, i32* @IGC_MMDAC, align 4
  %51 = load i32, i32* @IGC_MMDAC_FUNC_DATA, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %51, %52
  %54 = call i64 %47(%struct.igc_hw.0* %49, i32 %50, i32 %53)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i64, i64* %12, align 8
  store i64 %58, i64* %6, align 8
  br label %106

59:                                               ; preds = %42
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %64 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64 (%struct.igc_hw.1*, i32, i32*)*, i64 (%struct.igc_hw.1*, i32, i32*)** %66, align 8
  %68 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %69 = bitcast %struct.igc_hw* %68 to %struct.igc_hw.1*
  %70 = load i32, i32* @IGC_MMDAAD, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = call i64 %67(%struct.igc_hw.1* %69, i32 %70, i32* %71)
  store i64 %72, i64* %12, align 8
  br label %85

73:                                               ; preds = %59
  %74 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %75 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64 (%struct.igc_hw.0*, i32, i32)*, i64 (%struct.igc_hw.0*, i32, i32)** %77, align 8
  %79 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %80 = bitcast %struct.igc_hw* %79 to %struct.igc_hw.0*
  %81 = load i32, i32* @IGC_MMDAAD, align 4
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i64 %78(%struct.igc_hw.0* %80, i32 %81, i32 %83)
  store i64 %84, i64* %12, align 8
  br label %85

85:                                               ; preds = %73, %62
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i64, i64* %12, align 8
  store i64 %89, i64* %6, align 8
  br label %106

90:                                               ; preds = %85
  %91 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %92 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64 (%struct.igc_hw.0*, i32, i32)*, i64 (%struct.igc_hw.0*, i32, i32)** %94, align 8
  %96 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %97 = bitcast %struct.igc_hw* %96 to %struct.igc_hw.0*
  %98 = load i32, i32* @IGC_MMDAC, align 4
  %99 = call i64 %95(%struct.igc_hw.0* %97, i32 %98, i32 0)
  store i64 %99, i64* %12, align 8
  %100 = load i64, i64* %12, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %90
  %103 = load i64, i64* %12, align 8
  store i64 %103, i64* %6, align 8
  br label %106

104:                                              ; preds = %90
  %105 = load i64, i64* %12, align 8
  store i64 %105, i64* %6, align 8
  br label %106

106:                                              ; preds = %104, %102, %88, %57, %40, %25
  %107 = load i64, i64* %6, align 8
  ret i64 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
