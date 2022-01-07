; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_geo.c_libipw_is_valid_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_geo.c_libipw_is_valid_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_device = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@LIBIPW_24GHZ_BAND = common dso_local global i32 0, align 4
@LIBIPW_CH_INVALID = common dso_local global i32 0, align 4
@IEEE_G = common dso_local global i32 0, align 4
@LIBIPW_CH_B_ONLY = common dso_local global i32 0, align 4
@LIBIPW_52GHZ_BAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libipw_is_valid_channel(%struct.libipw_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libipw_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.libipw_device* %0, %struct.libipw_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %8 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %14 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %134

19:                                               ; preds = %12, %2
  %20 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %21 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @LIBIPW_24GHZ_BAND, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %86

26:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %82, %26
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %30 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %85

34:                                               ; preds = %27
  %35 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %36 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %81

46:                                               ; preds = %34
  %47 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %48 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @LIBIPW_CH_INVALID, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %46
  %60 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %61 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IEEE_G, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %68 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @LIBIPW_CH_B_ONLY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %66, %59
  %80 = load i32, i32* @LIBIPW_24GHZ_BAND, align 4
  store i32 %80, i32* %3, align 4
  br label %134

81:                                               ; preds = %66, %46, %34
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %27

85:                                               ; preds = %27
  br label %86

86:                                               ; preds = %85, %19
  %87 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %88 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @LIBIPW_52GHZ_BAND, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %133

93:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %129, %93
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %97 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %95, %99
  br i1 %100, label %101, label %132

101:                                              ; preds = %94
  %102 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %103 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %5, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %101
  %114 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %115 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @LIBIPW_CH_INVALID, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %113
  %127 = load i32, i32* @LIBIPW_52GHZ_BAND, align 4
  store i32 %127, i32* %3, align 4
  br label %134

128:                                              ; preds = %113, %101
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %94

132:                                              ; preds = %94
  br label %133

133:                                              ; preds = %132, %86
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %126, %79, %18
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
