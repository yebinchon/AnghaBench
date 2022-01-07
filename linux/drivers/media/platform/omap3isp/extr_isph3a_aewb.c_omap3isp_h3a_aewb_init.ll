; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isph3a_aewb.c_omap3isp_h3a_aewb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isph3a_aewb.c_omap3isp_h3a_aewb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i32, %struct.ispstat }
%struct.ispstat = type { %struct.omap3isp_h3a_aewb_config*, %struct.isp_device*, i32, %struct.omap3isp_h3a_aewb_config*, i32* }
%struct.omap3isp_h3a_aewb_config = type { i32, i32, i32, i8*, i8*, i8*, i64, i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@h3a_aewb_ops = common dso_local global i32 0, align 4
@V4L2_EVENT_OMAP3ISP_AEWB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"AEWB: cannot allocate memory for recover configuration.\0A\00", align 1
@OMAP3ISP_AEWB_MAX_SATURATION_LIM = common dso_local global i32 0, align 4
@OMAP3ISP_AEWB_MIN_WIN_H = common dso_local global i8* null, align 8
@OMAP3ISP_AEWB_MIN_WIN_W = common dso_local global i32 0, align 4
@OMAP3ISP_AEWB_MIN_WINVC = common dso_local global i32 0, align 4
@OMAP3ISP_AEWB_MIN_WINHC = common dso_local global i32 0, align 4
@OMAP3ISP_AEWB_MIN_SUB_INC = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"AEWB: recover configuration is invalid.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"AEWB\00", align 1
@h3a_aewb_subdev_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap3isp_h3a_aewb_init(%struct.isp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_device*, align 8
  %4 = alloca %struct.ispstat*, align 8
  %5 = alloca %struct.omap3isp_h3a_aewb_config*, align 8
  %6 = alloca %struct.omap3isp_h3a_aewb_config*, align 8
  %7 = alloca i32, align 4
  store %struct.isp_device* %0, %struct.isp_device** %3, align 8
  %8 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %9 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %8, i32 0, i32 1
  store %struct.ispstat* %9, %struct.ispstat** %4, align 8
  store %struct.omap3isp_h3a_aewb_config* null, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.omap3isp_h3a_aewb_config* @kzalloc(i32 72, i32 %10)
  store %struct.omap3isp_h3a_aewb_config* %11, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %12 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %13 = icmp ne %struct.omap3isp_h3a_aewb_config* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %115

17:                                               ; preds = %1
  %18 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %19 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %18, i32 0, i32 4
  store i32* @h3a_aewb_ops, i32** %19, align 8
  %20 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %21 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %22 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %21, i32 0, i32 3
  store %struct.omap3isp_h3a_aewb_config* %20, %struct.omap3isp_h3a_aewb_config** %22, align 8
  %23 = load i32, i32* @V4L2_EVENT_OMAP3ISP_AEWB, align 4
  %24 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %25 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %27 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %28 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %27, i32 0, i32 1
  store %struct.isp_device* %26, %struct.isp_device** %28, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.omap3isp_h3a_aewb_config* @kzalloc(i32 72, i32 %29)
  store %struct.omap3isp_h3a_aewb_config* %30, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %31 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %32 = icmp ne %struct.omap3isp_h3a_aewb_config* %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %17
  %34 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %35 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %34, i32 0, i32 1
  %36 = load %struct.isp_device*, %struct.isp_device** %35, align 8
  %37 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %105

42:                                               ; preds = %17
  %43 = load i32, i32* @OMAP3ISP_AEWB_MAX_SATURATION_LIM, align 4
  %44 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %45 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %44, i32 0, i32 10
  store i32 %43, i32* %45, align 8
  %46 = load i8*, i8** @OMAP3ISP_AEWB_MIN_WIN_H, align 8
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %49 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @OMAP3ISP_AEWB_MIN_WIN_W, align 4
  %51 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %52 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @OMAP3ISP_AEWB_MIN_WINVC, align 4
  %54 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %55 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @OMAP3ISP_AEWB_MIN_WINHC, align 4
  %57 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %58 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 8
  %59 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %60 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %63 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %66 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %64, %67
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %61, %69
  %71 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %72 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %71, i32 0, i32 7
  store i64 %70, i64* %72, align 8
  %73 = load i8*, i8** @OMAP3ISP_AEWB_MIN_WIN_H, align 8
  %74 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %75 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** @OMAP3ISP_AEWB_MIN_SUB_INC, align 8
  %77 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %78 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** @OMAP3ISP_AEWB_MIN_SUB_INC, align 8
  %80 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %81 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %83 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %84 = call i64 @h3a_aewb_validate_params(%struct.ispstat* %82, %struct.omap3isp_h3a_aewb_config* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %42
  %87 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %88 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %87, i32 0, i32 1
  %89 = load %struct.isp_device*, %struct.isp_device** %88, align 8
  %90 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  br label %105

95:                                               ; preds = %42
  %96 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %97 = call i32 @h3a_aewb_get_buf_size(%struct.omap3isp_h3a_aewb_config* %96)
  %98 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %99 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %101 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %102 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %101, i32 0, i32 0
  store %struct.omap3isp_h3a_aewb_config* %100, %struct.omap3isp_h3a_aewb_config** %102, align 8
  %103 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %104 = call i32 @omap3isp_stat_init(%struct.ispstat* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* @h3a_aewb_subdev_ops)
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %95, %86, %33
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %110 = call i32 @kfree(%struct.omap3isp_h3a_aewb_config* %109)
  %111 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %112 = call i32 @kfree(%struct.omap3isp_h3a_aewb_config* %111)
  br label %113

113:                                              ; preds = %108, %105
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %14
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.omap3isp_h3a_aewb_config* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @h3a_aewb_validate_params(%struct.ispstat*, %struct.omap3isp_h3a_aewb_config*) #1

declare dso_local i32 @h3a_aewb_get_buf_size(%struct.omap3isp_h3a_aewb_config*) #1

declare dso_local i32 @omap3isp_stat_init(%struct.ispstat*, i8*, i32*) #1

declare dso_local i32 @kfree(%struct.omap3isp_h3a_aewb_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
