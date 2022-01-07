; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_omap3isp_ccp2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_omap3isp_ccp2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i64, i32, i32, i32, %struct.isp_ccp2_device }
%struct.isp_ccp2_device = type { i32*, i32*, i32 }

@ISP_REVISION_2_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"vdds_csib\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Can't get regulator vdds_csib, deferring probing\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not get regulator vdds_csib\0A\00", align 1
@ISP_REVISION_15_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap3isp_ccp2_init(%struct.isp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_device*, align 8
  %4 = alloca %struct.isp_ccp2_device*, align 8
  %5 = alloca i32, align 4
  store %struct.isp_device* %0, %struct.isp_device** %3, align 8
  %6 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %7 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %6, i32 0, i32 4
  store %struct.isp_ccp2_device* %7, %struct.isp_ccp2_device** %4, align 8
  %8 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %4, align 8
  %9 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %8, i32 0, i32 2
  %10 = call i32 @init_waitqueue_head(i32* %9)
  %11 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %12 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ISP_REVISION_2_0, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %1
  %17 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %18 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32* @devm_regulator_get(i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %4, align 8
  %22 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %4, align 8
  %24 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @IS_ERR(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %16
  %29 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %4, align 8
  %30 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @PTR_ERR(i32* %31)
  %33 = load i32, i32* @EPROBE_DEFER, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %38 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EPROBE_DEFER, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %77

43:                                               ; preds = %28
  %44 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %45 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %4, align 8
  %49 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %43, %16
  %51 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %52 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %51, i32 0, i32 2
  %53 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %4, align 8
  %54 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  br label %67

55:                                               ; preds = %1
  %56 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %57 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ISP_REVISION_15_0, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %63 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %62, i32 0, i32 1
  %64 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %4, align 8
  %65 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %64, i32 0, i32 0
  store i32* %63, i32** %65, align 8
  br label %66

66:                                               ; preds = %61, %55
  br label %67

67:                                               ; preds = %66, %50
  %68 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %4, align 8
  %69 = call i32 @ccp2_init_entities(%struct.isp_ccp2_device* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %77

74:                                               ; preds = %67
  %75 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %4, align 8
  %76 = call i32 @ccp2_reset(%struct.isp_ccp2_device* %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %74, %72, %36
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32* @devm_regulator_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @ccp2_init_entities(%struct.isp_ccp2_device*) #1

declare dso_local i32 @ccp2_reset(%struct.isp_ccp2_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
