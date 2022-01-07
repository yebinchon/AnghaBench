; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_valid_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_valid_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_dv_timings = type { i64, %struct.v4l2_bt_timings }
%struct.v4l2_bt_timings = type { i64, i64, i64, i32, i64 }
%struct.v4l2_dv_timings_cap = type { i64, %struct.v4l2_bt_timings_cap }
%struct.v4l2_bt_timings_cap = type { i32, i64, i64, i64, i64, i64, i64, i32 }
%struct.v4l2_dv_timings.0 = type opaque

@V4L2_DV_BT_656_1120 = common dso_local global i64 0, align 8
@V4L2_DV_BT_CAP_CUSTOM = common dso_local global i32 0, align 4
@V4L2_DV_BT_CAP_INTERLACED = common dso_local global i32 0, align 4
@V4L2_DV_BT_CAP_PROGRESSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_valid_dv_timings(%struct.v4l2_dv_timings* %0, %struct.v4l2_dv_timings_cap* %1, i64 (%struct.v4l2_dv_timings.0*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_dv_timings*, align 8
  %7 = alloca %struct.v4l2_dv_timings_cap*, align 8
  %8 = alloca i64 (%struct.v4l2_dv_timings.0*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.v4l2_bt_timings*, align 8
  %11 = alloca %struct.v4l2_bt_timings_cap*, align 8
  %12 = alloca i32, align 4
  store %struct.v4l2_dv_timings* %0, %struct.v4l2_dv_timings** %6, align 8
  store %struct.v4l2_dv_timings_cap* %1, %struct.v4l2_dv_timings_cap** %7, align 8
  store i64 (%struct.v4l2_dv_timings.0*, i8*)* %2, i64 (%struct.v4l2_dv_timings.0*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %13, i32 0, i32 1
  store %struct.v4l2_bt_timings* %14, %struct.v4l2_bt_timings** %10, align 8
  %15 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_dv_timings_cap, %struct.v4l2_dv_timings_cap* %15, i32 0, i32 1
  store %struct.v4l2_bt_timings_cap* %16, %struct.v4l2_bt_timings_cap** %11, align 8
  %17 = load %struct.v4l2_bt_timings_cap*, %struct.v4l2_bt_timings_cap** %11, align 8
  %18 = getelementptr inbounds %struct.v4l2_bt_timings_cap, %struct.v4l2_bt_timings_cap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @V4L2_DV_BT_656_1120, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %140

26:                                               ; preds = %4
  %27 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_dv_timings_cap, %struct.v4l2_dv_timings_cap* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %126, label %34

34:                                               ; preds = %26
  %35 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %10, align 8
  %36 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.v4l2_bt_timings_cap*, %struct.v4l2_bt_timings_cap** %11, align 8
  %39 = getelementptr inbounds %struct.v4l2_bt_timings_cap, %struct.v4l2_bt_timings_cap* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %126, label %42

42:                                               ; preds = %34
  %43 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %10, align 8
  %44 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.v4l2_bt_timings_cap*, %struct.v4l2_bt_timings_cap** %11, align 8
  %47 = getelementptr inbounds %struct.v4l2_bt_timings_cap, %struct.v4l2_bt_timings_cap* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %126, label %50

50:                                               ; preds = %42
  %51 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %10, align 8
  %52 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.v4l2_bt_timings_cap*, %struct.v4l2_bt_timings_cap** %11, align 8
  %55 = getelementptr inbounds %struct.v4l2_bt_timings_cap, %struct.v4l2_bt_timings_cap* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %126, label %58

58:                                               ; preds = %50
  %59 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %10, align 8
  %60 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.v4l2_bt_timings_cap*, %struct.v4l2_bt_timings_cap** %11, align 8
  %63 = getelementptr inbounds %struct.v4l2_bt_timings_cap, %struct.v4l2_bt_timings_cap* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %126, label %66

66:                                               ; preds = %58
  %67 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %10, align 8
  %68 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.v4l2_bt_timings_cap*, %struct.v4l2_bt_timings_cap** %11, align 8
  %71 = getelementptr inbounds %struct.v4l2_bt_timings_cap, %struct.v4l2_bt_timings_cap* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %69, %72
  br i1 %73, label %126, label %74

74:                                               ; preds = %66
  %75 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %10, align 8
  %76 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.v4l2_bt_timings_cap*, %struct.v4l2_bt_timings_cap** %11, align 8
  %79 = getelementptr inbounds %struct.v4l2_bt_timings_cap, %struct.v4l2_bt_timings_cap* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %126, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @V4L2_DV_BT_CAP_CUSTOM, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %106, label %87

87:                                               ; preds = %82
  %88 = load %struct.v4l2_bt_timings_cap*, %struct.v4l2_bt_timings_cap** %11, align 8
  %89 = getelementptr inbounds %struct.v4l2_bt_timings_cap, %struct.v4l2_bt_timings_cap* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %87
  %93 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %10, align 8
  %94 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %10, align 8
  %99 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.v4l2_bt_timings_cap*, %struct.v4l2_bt_timings_cap** %11, align 8
  %102 = getelementptr inbounds %struct.v4l2_bt_timings_cap, %struct.v4l2_bt_timings_cap* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %126

106:                                              ; preds = %97, %92, %87, %82
  %107 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %10, align 8
  %108 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @V4L2_DV_BT_CAP_INTERLACED, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %111, %106
  %117 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %10, align 8
  %118 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @V4L2_DV_BT_CAP_PROGRESSIVE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121, %111, %97, %74, %66, %58, %50, %42, %34, %26
  store i32 0, i32* %5, align 4
  br label %140

127:                                              ; preds = %121, %116
  %128 = load i64 (%struct.v4l2_dv_timings.0*, i8*)*, i64 (%struct.v4l2_dv_timings.0*, i8*)** %8, align 8
  %129 = icmp eq i64 (%struct.v4l2_dv_timings.0*, i8*)* %128, null
  br i1 %129, label %137, label %130

130:                                              ; preds = %127
  %131 = load i64 (%struct.v4l2_dv_timings.0*, i8*)*, i64 (%struct.v4l2_dv_timings.0*, i8*)** %8, align 8
  %132 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %133 = bitcast %struct.v4l2_dv_timings* %132 to %struct.v4l2_dv_timings.0*
  %134 = load i8*, i8** %9, align 8
  %135 = call i64 %131(%struct.v4l2_dv_timings.0* %133, i8* %134)
  %136 = icmp ne i64 %135, 0
  br label %137

137:                                              ; preds = %130, %127
  %138 = phi i1 [ true, %127 ], [ %136, %130 ]
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %137, %126, %25
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
