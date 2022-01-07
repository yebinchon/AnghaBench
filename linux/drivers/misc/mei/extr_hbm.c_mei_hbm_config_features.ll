; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_config_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_config_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@HBM_MAJOR_VERSION_PGI = common dso_local global i64 0, align 8
@HBM_MINOR_VERSION_PGI = common dso_local global i64 0, align 8
@HBM_MAJOR_VERSION_DC = common dso_local global i64 0, align 8
@HBM_MAJOR_VERSION_IE = common dso_local global i64 0, align 8
@HBM_MAJOR_VERSION_DOT = common dso_local global i64 0, align 8
@HBM_MAJOR_VERSION_EV = common dso_local global i64 0, align 8
@HBM_MAJOR_VERSION_FA = common dso_local global i64 0, align 8
@HBM_MAJOR_VERSION_OS = common dso_local global i64 0, align 8
@HBM_MAJOR_VERSION_DR = common dso_local global i64 0, align 8
@HBM_MINOR_VERSION_DR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_device*)* @mei_hbm_config_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_hbm_config_features(%struct.mei_device* %0) #0 {
  %2 = alloca %struct.mei_device*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %2, align 8
  %3 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %4 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %6 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %5, i32 0, i32 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HBM_MAJOR_VERSION_PGI, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %13 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %16 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HBM_MAJOR_VERSION_PGI, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %23 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %22, i32 0, i32 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HBM_MINOR_VERSION_PGI, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %30 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %21, %14
  %32 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %33 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %35 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HBM_MAJOR_VERSION_DC, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %42 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %31
  %44 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %45 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %44, i32 0, i32 2
  store i32 0, i32* %45, align 8
  %46 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %47 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %46, i32 0, i32 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @HBM_MAJOR_VERSION_IE, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %54 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %53, i32 0, i32 2
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %43
  %56 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %57 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %56, i32 0, i32 3
  store i32 0, i32* %57, align 4
  %58 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %59 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %58, i32 0, i32 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @HBM_MAJOR_VERSION_DOT, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %66 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %65, i32 0, i32 3
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %55
  %68 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %69 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %68, i32 0, i32 4
  store i32 0, i32* %69, align 8
  %70 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %71 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %70, i32 0, i32 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @HBM_MAJOR_VERSION_EV, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %78 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %77, i32 0, i32 4
  store i32 1, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %67
  %80 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %81 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %80, i32 0, i32 5
  store i32 0, i32* %81, align 4
  %82 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %83 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %82, i32 0, i32 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @HBM_MAJOR_VERSION_FA, align 8
  %87 = icmp sge i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %90 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %89, i32 0, i32 5
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %79
  %92 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %93 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %92, i32 0, i32 6
  store i32 0, i32* %93, align 8
  %94 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %95 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %94, i32 0, i32 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @HBM_MAJOR_VERSION_OS, align 8
  %99 = icmp sge i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %102 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %101, i32 0, i32 6
  store i32 1, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %91
  %104 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %105 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %104, i32 0, i32 7
  store i32 0, i32* %105, align 4
  %106 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %107 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %106, i32 0, i32 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @HBM_MAJOR_VERSION_DR, align 8
  %111 = icmp sgt i64 %109, %110
  br i1 %111, label %126, label %112

112:                                              ; preds = %103
  %113 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %114 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %113, i32 0, i32 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @HBM_MAJOR_VERSION_DR, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %112
  %120 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %121 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %120, i32 0, i32 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @HBM_MINOR_VERSION_DR, align 8
  %125 = icmp sge i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %119, %103
  %127 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %128 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %127, i32 0, i32 7
  store i32 1, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %119, %112
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
