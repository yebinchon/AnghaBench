; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32, i32 }
%struct.isp_ccp2_device = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.v4l2_mbus_framefmt* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }
%struct.isp_device = type { i32 }
%struct.device = type { i32 }

@CCP2_PAD_SINK = common dso_local global i64 0, align 8
@OMAP3_ISP_SBL_CSI1_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: module stop timeout.\0A\00", align 1
@CCP2_INPUT_MEMORY = common dso_local global i32 0, align 4
@CCP2_INPUT_SENSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ccp2_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp2_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.isp_ccp2_device*, align 8
  %7 = alloca %struct.isp_device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.isp_ccp2_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %11)
  store %struct.isp_ccp2_device* %12, %struct.isp_ccp2_device** %6, align 8
  %13 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %14 = call %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device* %13)
  store %struct.isp_device* %14, %struct.isp_device** %7, align 8
  %15 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %16 = call %struct.device* @to_device(%struct.isp_ccp2_device* %15)
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %18 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 128
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 128
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %160

25:                                               ; preds = %21
  %26 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %27 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %26, i32 0, i32 3
  %28 = call i32 @atomic_set(i32* %27, i32 0)
  br label %29

29:                                               ; preds = %25, %2
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %156 [
    i32 130, label %31
    i32 129, label %70
    i32 128, label %108
  ]

31:                                               ; preds = %29
  %32 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %33 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %38 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %40, i32 0, i32 1
  %42 = call i32 @omap3isp_csiphy_acquire(i32 %39, i32* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %160

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %31
  %49 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %50 = call i32 @ccp2_if_configure(%struct.isp_ccp2_device* %49)
  %51 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %52 = call i32 @ccp2_print_status(%struct.isp_ccp2_device* %51)
  %53 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %54 = call i32 @ccp2_if_enable(%struct.isp_ccp2_device* %53, i32 1)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %48
  %58 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %59 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %64 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @omap3isp_csiphy_release(i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %160

69:                                               ; preds = %48
  br label %156

70:                                               ; preds = %29
  %71 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %72 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 129
  br i1 %74, label %75, label %105

75:                                               ; preds = %70
  %76 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %77 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %76, i32 0, i32 6
  %78 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %77, align 8
  %79 = load i64, i64* @CCP2_PAD_SINK, align 8
  %80 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %78, i64 %79
  store %struct.v4l2_mbus_framefmt* %80, %struct.v4l2_mbus_framefmt** %10, align 8
  %81 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %82 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %85 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 4
  %87 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %88 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %91 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %94 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 0, i32* %95, align 4
  %96 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %97 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %98 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %97, i32 0, i32 5
  %99 = call i32 @ccp2_mem_configure(%struct.isp_ccp2_device* %96, %struct.TYPE_2__* %98)
  %100 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %101 = load i32, i32* @OMAP3_ISP_SBL_CSI1_READ, align 4
  %102 = call i32 @omap3isp_sbl_enable(%struct.isp_device* %100, i32 %101)
  %103 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %104 = call i32 @ccp2_print_status(%struct.isp_ccp2_device* %103)
  br label %105

105:                                              ; preds = %75, %70
  %106 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %107 = call i32 @ccp2_mem_enable(%struct.isp_ccp2_device* %106, i32 1)
  br label %156

108:                                              ; preds = %29
  %109 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %110 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %109, i32 0, i32 1
  %111 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %112 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %111, i32 0, i32 4
  %113 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %114 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %113, i32 0, i32 3
  %115 = call i32 @omap3isp_module_sync_idle(i32* %110, i32* %112, i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %108
  %118 = load %struct.device*, %struct.device** %8, align 8
  %119 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %120 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dev_dbg(%struct.device* %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %117, %108
  %124 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %125 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @CCP2_INPUT_MEMORY, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %131 = call i32 @ccp2_mem_enable(%struct.isp_ccp2_device* %130, i32 0)
  %132 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %133 = load i32, i32* @OMAP3_ISP_SBL_CSI1_READ, align 4
  %134 = call i32 @omap3isp_sbl_disable(%struct.isp_device* %132, i32 %133)
  br label %155

135:                                              ; preds = %123
  %136 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %137 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @CCP2_INPUT_SENSOR, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %135
  %142 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %143 = call i32 @ccp2_if_enable(%struct.isp_ccp2_device* %142, i32 0)
  %144 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %145 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %141
  %149 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %150 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @omap3isp_csiphy_release(i32 %151)
  br label %153

153:                                              ; preds = %148, %141
  br label %154

154:                                              ; preds = %153, %135
  br label %155

155:                                              ; preds = %154, %129
  br label %156

156:                                              ; preds = %29, %155, %105, %69
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %159 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %156, %67, %45, %24
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local %struct.isp_ccp2_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device*) #1

declare dso_local %struct.device* @to_device(%struct.isp_ccp2_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @omap3isp_csiphy_acquire(i32, i32*) #1

declare dso_local i32 @ccp2_if_configure(%struct.isp_ccp2_device*) #1

declare dso_local i32 @ccp2_print_status(%struct.isp_ccp2_device*) #1

declare dso_local i32 @ccp2_if_enable(%struct.isp_ccp2_device*, i32) #1

declare dso_local i32 @omap3isp_csiphy_release(i32) #1

declare dso_local i32 @ccp2_mem_configure(%struct.isp_ccp2_device*, %struct.TYPE_2__*) #1

declare dso_local i32 @omap3isp_sbl_enable(%struct.isp_device*, i32) #1

declare dso_local i32 @ccp2_mem_enable(%struct.isp_ccp2_device*, i32) #1

declare dso_local i32 @omap3isp_module_sync_idle(i32*, i32*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @omap3isp_sbl_disable(%struct.isp_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
