; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_mvebu-devbus.c_devbus_orion_set_timing_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_mvebu-devbus.c_devbus_orion_set_timing_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devbus = type { i32 }
%struct.device_node = type { i32 }
%struct.devbus_read_params = type { i32, i32, i32, i32, i32 }
%struct.devbus_write_params = type { i32, i32, i32 }

@ORION_TURN_OFF_MASK = common dso_local global i32 0, align 4
@ORION_TURN_OFF_SHIFT = common dso_local global i32 0, align 4
@ORION_ACC_FIRST_MASK = common dso_local global i32 0, align 4
@ORION_ACC_FIRST_SHIFT = common dso_local global i32 0, align 4
@ORION_ACC_NEXT_MASK = common dso_local global i32 0, align 4
@ORION_ACC_NEXT_SHIFT = common dso_local global i32 0, align 4
@ORION_ALE_WR_MASK = common dso_local global i32 0, align 4
@ORION_ALE_WR_SHIFT = common dso_local global i32 0, align 4
@ORION_WR_LOW_MASK = common dso_local global i32 0, align 4
@ORION_WR_LOW_SHIFT = common dso_local global i32 0, align 4
@ORION_WR_HIGH_MASK = common dso_local global i32 0, align 4
@ORION_WR_HIGH_SHIFT = common dso_local global i32 0, align 4
@ORION_DEV_WIDTH_SHIFT = common dso_local global i32 0, align 4
@ORION_TURN_OFF_EXT_MASK = common dso_local global i32 0, align 4
@ORION_TURN_OFF_EXT_BIT = common dso_local global i32 0, align 4
@ORION_ACC_FIRST_EXT_MASK = common dso_local global i32 0, align 4
@ORION_ACC_FIRST_EXT_BIT = common dso_local global i32 0, align 4
@ORION_ACC_NEXT_EXT_MASK = common dso_local global i32 0, align 4
@ORION_ACC_NEXT_EXT_BIT = common dso_local global i32 0, align 4
@ORION_ALE_WR_EXT_MASK = common dso_local global i32 0, align 4
@ORION_ALE_WR_EXT_BIT = common dso_local global i32 0, align 4
@ORION_WR_LOW_EXT_MASK = common dso_local global i32 0, align 4
@ORION_WR_LOW_EXT_BIT = common dso_local global i32 0, align 4
@ORION_WR_HIGH_EXT_MASK = common dso_local global i32 0, align 4
@ORION_WR_HIGH_EXT_BIT = common dso_local global i32 0, align 4
@ORION_BADR_SKEW_SHIFT = common dso_local global i32 0, align 4
@ORION_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devbus*, %struct.device_node*, %struct.devbus_read_params*, %struct.devbus_write_params*)* @devbus_orion_set_timing_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devbus_orion_set_timing_params(%struct.devbus* %0, %struct.device_node* %1, %struct.devbus_read_params* %2, %struct.devbus_write_params* %3) #0 {
  %5 = alloca %struct.devbus*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.devbus_read_params*, align 8
  %8 = alloca %struct.devbus_write_params*, align 8
  %9 = alloca i32, align 4
  store %struct.devbus* %0, %struct.devbus** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.devbus_read_params* %2, %struct.devbus_read_params** %7, align 8
  store %struct.devbus_write_params* %3, %struct.devbus_write_params** %8, align 8
  %10 = load %struct.devbus_read_params*, %struct.devbus_read_params** %7, align 8
  %11 = getelementptr inbounds %struct.devbus_read_params, %struct.devbus_read_params* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ORION_TURN_OFF_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @ORION_TURN_OFF_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load %struct.devbus_read_params*, %struct.devbus_read_params** %7, align 8
  %18 = getelementptr inbounds %struct.devbus_read_params, %struct.devbus_read_params* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ORION_ACC_FIRST_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @ORION_ACC_FIRST_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %16, %23
  %25 = load %struct.devbus_read_params*, %struct.devbus_read_params** %7, align 8
  %26 = getelementptr inbounds %struct.devbus_read_params, %struct.devbus_read_params* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ORION_ACC_NEXT_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @ORION_ACC_NEXT_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %24, %31
  %33 = load %struct.devbus_write_params*, %struct.devbus_write_params** %8, align 8
  %34 = getelementptr inbounds %struct.devbus_write_params, %struct.devbus_write_params* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ORION_ALE_WR_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @ORION_ALE_WR_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %32, %39
  %41 = load %struct.devbus_write_params*, %struct.devbus_write_params** %8, align 8
  %42 = getelementptr inbounds %struct.devbus_write_params, %struct.devbus_write_params* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ORION_WR_LOW_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @ORION_WR_LOW_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 %40, %47
  %49 = load %struct.devbus_write_params*, %struct.devbus_write_params** %8, align 8
  %50 = getelementptr inbounds %struct.devbus_write_params, %struct.devbus_write_params* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ORION_WR_HIGH_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @ORION_WR_HIGH_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %48, %55
  %57 = load %struct.devbus_read_params*, %struct.devbus_read_params** %7, align 8
  %58 = getelementptr inbounds %struct.devbus_read_params, %struct.devbus_read_params* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ORION_DEV_WIDTH_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = or i32 %56, %61
  %63 = load %struct.devbus_read_params*, %struct.devbus_read_params** %7, align 8
  %64 = getelementptr inbounds %struct.devbus_read_params, %struct.devbus_read_params* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ORION_TURN_OFF_EXT_MASK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %4
  %70 = load i32, i32* @ORION_TURN_OFF_EXT_BIT, align 4
  br label %72

71:                                               ; preds = %4
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = or i32 %62, %73
  %75 = load %struct.devbus_read_params*, %struct.devbus_read_params** %7, align 8
  %76 = getelementptr inbounds %struct.devbus_read_params, %struct.devbus_read_params* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ORION_ACC_FIRST_EXT_MASK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* @ORION_ACC_FIRST_EXT_BIT, align 4
  br label %84

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i32 [ %82, %81 ], [ 0, %83 ]
  %86 = or i32 %74, %85
  %87 = load %struct.devbus_read_params*, %struct.devbus_read_params** %7, align 8
  %88 = getelementptr inbounds %struct.devbus_read_params, %struct.devbus_read_params* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ORION_ACC_NEXT_EXT_MASK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* @ORION_ACC_NEXT_EXT_BIT, align 4
  br label %96

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i32 [ %94, %93 ], [ 0, %95 ]
  %98 = or i32 %86, %97
  %99 = load %struct.devbus_write_params*, %struct.devbus_write_params** %8, align 8
  %100 = getelementptr inbounds %struct.devbus_write_params, %struct.devbus_write_params* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @ORION_ALE_WR_EXT_MASK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @ORION_ALE_WR_EXT_BIT, align 4
  br label %108

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i32 [ %106, %105 ], [ 0, %107 ]
  %110 = or i32 %98, %109
  %111 = load %struct.devbus_write_params*, %struct.devbus_write_params** %8, align 8
  %112 = getelementptr inbounds %struct.devbus_write_params, %struct.devbus_write_params* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @ORION_WR_LOW_EXT_MASK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* @ORION_WR_LOW_EXT_BIT, align 4
  br label %120

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119, %117
  %121 = phi i32 [ %118, %117 ], [ 0, %119 ]
  %122 = or i32 %110, %121
  %123 = load %struct.devbus_write_params*, %struct.devbus_write_params** %8, align 8
  %124 = getelementptr inbounds %struct.devbus_write_params, %struct.devbus_write_params* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @ORION_WR_HIGH_EXT_MASK, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = load i32, i32* @ORION_WR_HIGH_EXT_BIT, align 4
  br label %132

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %129
  %133 = phi i32 [ %130, %129 ], [ 0, %131 ]
  %134 = or i32 %122, %133
  %135 = load %struct.devbus_read_params*, %struct.devbus_read_params** %7, align 8
  %136 = getelementptr inbounds %struct.devbus_read_params, %struct.devbus_read_params* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @ORION_BADR_SKEW_SHIFT, align 4
  %139 = shl i32 %137, %138
  %140 = or i32 %134, %139
  %141 = load i32, i32* @ORION_RESERVED, align 4
  %142 = or i32 %140, %141
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.devbus*, %struct.devbus** %5, align 8
  %145 = getelementptr inbounds %struct.devbus, %struct.devbus* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @writel(i32 %143, i32 %146)
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
