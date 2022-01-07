; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_geo.c_libipw_freq_to_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_geo.c_libipw_freq_to_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@LIBIPW_24GHZ_BAND = common dso_local global i32 0, align 4
@LIBIPW_52GHZ_BAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libipw_freq_to_channel(%struct.libipw_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libipw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.libipw_device* %0, %struct.libipw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %8 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %14 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %106

19:                                               ; preds = %12, %2
  %20 = load i32, i32* %5, align 4
  %21 = sdiv i32 %20, 100000
  store i32 %21, i32* %5, align 4
  %22 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %23 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @LIBIPW_24GHZ_BAND, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %59, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %32 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %29
  %37 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %38 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %36
  %49 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %50 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %3, align 4
  br label %106

58:                                               ; preds = %36
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %29

62:                                               ; preds = %29
  br label %63

63:                                               ; preds = %62, %19
  %64 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %65 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @LIBIPW_52GHZ_BAND, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %105

70:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %101, %70
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %74 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %72, %76
  br i1 %77, label %78, label %104

78:                                               ; preds = %71
  %79 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %80 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %78
  %91 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %92 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %3, align 4
  br label %106

100:                                              ; preds = %78
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %71

104:                                              ; preds = %71
  br label %105

105:                                              ; preds = %104, %63
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %90, %48, %18
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
