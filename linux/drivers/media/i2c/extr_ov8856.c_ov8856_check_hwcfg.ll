; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov8856.c_ov8856_check_hwcfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov8856.c_ov8856_check_hwcfg.c"
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
@OV8856_MCLK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"external clock %d is not supported\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OV8856_DATA_LANES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"number of CSI2 data lanes %d is not supported\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"no link frequencies defined\00", align 1
@link_freq_menu_items = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"no link frequency %lld supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ov8856_check_hwcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov8856_check_hwcfg(%struct.device* %0) #0 {
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
  br label %133

21:                                               ; preds = %1
  %22 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %23 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %133

28:                                               ; preds = %21
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @OV8856_MCLK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %133

38:                                               ; preds = %28
  %39 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %40 = call %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle* %39, i32* null)
  store %struct.fwnode_handle* %40, %struct.fwnode_handle** %4, align 8
  %41 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %42 = icmp ne %struct.fwnode_handle* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENXIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %133

46:                                               ; preds = %38
  %47 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %48 = call i32 @v4l2_fwnode_endpoint_alloc_parse(%struct.fwnode_handle* %47, %struct.v4l2_fwnode_endpoint* %6)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %50 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %49)
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %133

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @OV8856_DATA_LANES, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load %struct.device*, %struct.device** %3, align 8
  %64 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %130

71:                                               ; preds = %55
  %72 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load %struct.device*, %struct.device** %3, align 8
  %77 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  br label %130

80:                                               ; preds = %71
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %126, %80
  %82 = load i32, i32* %9, align 4
  %83 = load i64*, i64** @link_freq_menu_items, align 8
  %84 = call i32 @ARRAY_SIZE(i64* %83)
  %85 = icmp ult i32 %82, %84
  br i1 %85, label %86, label %129

86:                                               ; preds = %81
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %107, %86
  %88 = load i32, i32* %10, align 4
  %89 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ult i32 %88, %90
  br i1 %91, label %92, label %110

92:                                               ; preds = %87
  %93 = load i64*, i64** @link_freq_menu_items, align 8
  %94 = load i32, i32* %9, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %97, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  br label %110

106:                                              ; preds = %92
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %10, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %87

110:                                              ; preds = %105, %87
  %111 = load i32, i32* %10, align 4
  %112 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load %struct.device*, %struct.device** %3, align 8
  %117 = load i64*, i64** @link_freq_menu_items, align 8
  %118 = load i32, i32* %9, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %121)
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %8, align 4
  br label %130

125:                                              ; preds = %110
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %9, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %81

129:                                              ; preds = %81
  br label %130

130:                                              ; preds = %129, %115, %75, %62
  %131 = call i32 @v4l2_fwnode_endpoint_free(%struct.v4l2_fwnode_endpoint* %6)
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %130, %53, %43, %32, %26, %18
  %134 = load i32, i32* %2, align 4
  ret i32 %134
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
