; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx355.c_imx355_get_hwcfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx355.c_imx355_get_hwcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx355_hwcfg = type { i64, i32, i32* }
%struct.device = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i32, i32*, i32 }
%struct.fwnode_handle = type { i32 }

@V4L2_MBUS_CSI2_DPHY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"can't get clock frequency\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"ext clk: %d\00", align 1
@IMX355_EXT_CLK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"external clock %d is not supported\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"num of link freqs: %d\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"no link frequencies defined\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"link_freq[%d] = %lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.imx355_hwcfg* (%struct.device*)* @imx355_get_hwcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.imx355_hwcfg* @imx355_get_hwcfg(%struct.device* %0) #0 {
  %2 = alloca %struct.imx355_hwcfg*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.imx355_hwcfg*, align 8
  %5 = alloca %struct.v4l2_fwnode_endpoint, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca %struct.fwnode_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %10 = bitcast %struct.v4l2_fwnode_endpoint* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %5, i32 0, i32 2
  %12 = load i32, i32* @V4L2_MBUS_CSI2_DPHY, align 4
  store i32 %12, i32* %11, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.fwnode_handle* @dev_fwnode(%struct.device* %13)
  store %struct.fwnode_handle* %14, %struct.fwnode_handle** %7, align 8
  %15 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %16 = icmp ne %struct.fwnode_handle* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store %struct.imx355_hwcfg* null, %struct.imx355_hwcfg** %2, align 8
  br label %136

18:                                               ; preds = %1
  %19 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %20 = call %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle* %19, i32* null)
  store %struct.fwnode_handle* %20, %struct.fwnode_handle** %6, align 8
  %21 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %22 = icmp ne %struct.fwnode_handle* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store %struct.imx355_hwcfg* null, %struct.imx355_hwcfg** %2, align 8
  br label %136

24:                                               ; preds = %18
  %25 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %26 = call i32 @v4l2_fwnode_endpoint_alloc_parse(%struct.fwnode_handle* %25, %struct.v4l2_fwnode_endpoint* %5)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %132

30:                                               ; preds = %24
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.imx355_hwcfg* @devm_kzalloc(%struct.device* %31, i32 24, i32 %32)
  store %struct.imx355_hwcfg* %33, %struct.imx355_hwcfg** %4, align 8
  %34 = load %struct.imx355_hwcfg*, %struct.imx355_hwcfg** %4, align 8
  %35 = icmp ne %struct.imx355_hwcfg* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %132

37:                                               ; preds = %30
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = call %struct.fwnode_handle* @dev_fwnode(%struct.device* %38)
  %40 = load %struct.imx355_hwcfg*, %struct.imx355_hwcfg** %4, align 8
  %41 = getelementptr inbounds %struct.imx355_hwcfg, %struct.imx355_hwcfg* %40, i32 0, i32 0
  %42 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.device*, %struct.device** %3, align 8
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %132

48:                                               ; preds = %37
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = load %struct.imx355_hwcfg*, %struct.imx355_hwcfg** %4, align 8
  %51 = getelementptr inbounds %struct.imx355_hwcfg, %struct.imx355_hwcfg* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.imx355_hwcfg*, %struct.imx355_hwcfg** %4, align 8
  %56 = getelementptr inbounds %struct.imx355_hwcfg, %struct.imx355_hwcfg* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IMX355_EXT_CLK, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %48
  %61 = load %struct.device*, %struct.device** %3, align 8
  %62 = load %struct.imx355_hwcfg*, %struct.imx355_hwcfg** %4, align 8
  %63 = getelementptr inbounds %struct.imx355_hwcfg, %struct.imx355_hwcfg* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %64)
  br label %132

66:                                               ; preds = %48
  %67 = load %struct.device*, %struct.device** %3, align 8
  %68 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %5, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %66
  %75 = load %struct.device*, %struct.device** %3, align 8
  %76 = call i32 @dev_warn(%struct.device* %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %132

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %5, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.imx355_hwcfg*, %struct.imx355_hwcfg** %4, align 8
  %81 = getelementptr inbounds %struct.imx355_hwcfg, %struct.imx355_hwcfg* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.device*, %struct.device** %3, align 8
  %83 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %5, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i32* @devm_kcalloc(%struct.device* %82, i32 %85, i32 4, i32 %86)
  %88 = load %struct.imx355_hwcfg*, %struct.imx355_hwcfg** %4, align 8
  %89 = getelementptr inbounds %struct.imx355_hwcfg, %struct.imx355_hwcfg* %88, i32 0, i32 2
  store i32* %87, i32** %89, align 8
  %90 = load %struct.imx355_hwcfg*, %struct.imx355_hwcfg** %4, align 8
  %91 = getelementptr inbounds %struct.imx355_hwcfg, %struct.imx355_hwcfg* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %77
  br label %132

95:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %124, %95
  %97 = load i32, i32* %8, align 4
  %98 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %5, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ult i32 %97, %99
  br i1 %100, label %101, label %127

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %5, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.imx355_hwcfg*, %struct.imx355_hwcfg** %4, align 8
  %109 = getelementptr inbounds %struct.imx355_hwcfg, %struct.imx355_hwcfg* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  %114 = load %struct.device*, %struct.device** %3, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.imx355_hwcfg*, %struct.imx355_hwcfg** %4, align 8
  %117 = getelementptr inbounds %struct.imx355_hwcfg, %struct.imx355_hwcfg* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %115, i32 %122)
  br label %124

124:                                              ; preds = %101
  %125 = load i32, i32* %8, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %96

127:                                              ; preds = %96
  %128 = call i32 @v4l2_fwnode_endpoint_free(%struct.v4l2_fwnode_endpoint* %5)
  %129 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %130 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %129)
  %131 = load %struct.imx355_hwcfg*, %struct.imx355_hwcfg** %4, align 8
  store %struct.imx355_hwcfg* %131, %struct.imx355_hwcfg** %2, align 8
  br label %136

132:                                              ; preds = %94, %74, %60, %45, %36, %29
  %133 = call i32 @v4l2_fwnode_endpoint_free(%struct.v4l2_fwnode_endpoint* %5)
  %134 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %135 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %134)
  store %struct.imx355_hwcfg* null, %struct.imx355_hwcfg** %2, align 8
  br label %136

136:                                              ; preds = %132, %127, %23, %17
  %137 = load %struct.imx355_hwcfg*, %struct.imx355_hwcfg** %2, align 8
  ret %struct.imx355_hwcfg* %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.fwnode_handle* @dev_fwnode(%struct.device*) #2

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle*, i32*) #2

declare dso_local i32 @v4l2_fwnode_endpoint_alloc_parse(%struct.fwnode_handle*, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local %struct.imx355_hwcfg* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i64*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*) #2

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #2

declare dso_local i32 @v4l2_fwnode_endpoint_free(%struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @fwnode_handle_put(%struct.fwnode_handle*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
