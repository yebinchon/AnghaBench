; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5675.c_ov5675_check_hwcfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5675.c_ov5675_check_hwcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i32, i64*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@V4L2_MBUS_CSI2_DPHY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"can't get clock frequency\00", align 1
@OV5675_MCLK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"external clock %d is not supported\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OV5675_DATA_LANES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"number of CSI2 data lanes %d is not supported\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"no link frequencies defined\00", align 1
@link_freq_menu_items = common dso_local global i64* null, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"no link frequency %lld supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ov5675_check_hwcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5675_check_hwcfg(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca %struct.v4l2_fwnode_endpoint, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.fwnode_handle* @dev_fwnode(%struct.device* %11)
  store %struct.fwnode_handle* %12, %struct.fwnode_handle** %5, align 8
  %13 = bitcast %struct.v4l2_fwnode_endpoint* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 3
  %15 = load i32, i32* @V4L2_MBUS_CSI2_DPHY, align 4
  store i32 %15, i32* %14, align 8
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %17 = icmp ne %struct.fwnode_handle* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %135

21:                                               ; preds = %1
  %22 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %23 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  br label %135

30:                                               ; preds = %21
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @OV5675_MCLK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %135

40:                                               ; preds = %30
  %41 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %42 = call %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle* %41, i32* null)
  store %struct.fwnode_handle* %42, %struct.fwnode_handle** %4, align 8
  %43 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %44 = icmp ne %struct.fwnode_handle* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENXIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %135

48:                                               ; preds = %40
  %49 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %50 = call i32 @v4l2_fwnode_endpoint_alloc_parse(%struct.fwnode_handle* %49, %struct.v4l2_fwnode_endpoint* %6)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %52 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %2, align 4
  br label %135

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @OV5675_DATA_LANES, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load %struct.device*, %struct.device** %3, align 8
  %66 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %132

73:                                               ; preds = %57
  %74 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load %struct.device*, %struct.device** %3, align 8
  %79 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %132

82:                                               ; preds = %73
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %128, %82
  %84 = load i32, i32* %9, align 4
  %85 = load i64*, i64** @link_freq_menu_items, align 8
  %86 = call i32 @ARRAY_SIZE(i64* %85)
  %87 = icmp ult i32 %84, %86
  br i1 %87, label %88, label %131

88:                                               ; preds = %83
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %109, %88
  %90 = load i32, i32* %10, align 4
  %91 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ult i32 %90, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %89
  %95 = load i64*, i64** @link_freq_menu_items, align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %99, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %94
  br label %112

108:                                              ; preds = %94
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %10, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %89

112:                                              ; preds = %107, %89
  %113 = load i32, i32* %10, align 4
  %114 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load %struct.device*, %struct.device** %3, align 8
  %119 = load i64*, i64** @link_freq_menu_items, align 8
  %120 = load i32, i32* %9, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %118, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i64 %123)
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %8, align 4
  br label %132

127:                                              ; preds = %112
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %9, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %83

131:                                              ; preds = %83
  br label %132

132:                                              ; preds = %131, %117, %77, %64
  %133 = call i32 @v4l2_fwnode_endpoint_free(%struct.v4l2_fwnode_endpoint* %6)
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %132, %55, %45, %34, %26, %18
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.fwnode_handle* @dev_fwnode(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle*, i32*) #1

declare dso_local i32 @v4l2_fwnode_endpoint_alloc_parse(%struct.fwnode_handle*, %struct.v4l2_fwnode_endpoint*) #1

declare dso_local i32 @fwnode_handle_put(%struct.fwnode_handle*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @v4l2_fwnode_endpoint_free(%struct.v4l2_fwnode_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
