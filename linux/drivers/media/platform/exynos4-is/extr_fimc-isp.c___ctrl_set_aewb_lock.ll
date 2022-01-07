; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c___ctrl_set_aewb_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c___ctrl_set_aewb_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.isp_param }
%struct.isp_param = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8* }
%struct.v4l2_ctrl = type { i32 }

@V4L2_LOCK_WHITE_BALANCE = common dso_local global i32 0, align 4
@V4L2_LOCK_EXPOSURE = common dso_local global i32 0, align 4
@ISP_AA_COMMAND_STOP = common dso_local global i32 0, align 4
@ISP_AA_COMMAND_START = common dso_local global i32 0, align 4
@ISP_AA_TARGET_AE = common dso_local global i8* null, align 8
@PARAM_ISP_AA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_is*, %struct.v4l2_ctrl*)* @__ctrl_set_aewb_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ctrl_set_aewb_lock(%struct.fimc_is* %0, %struct.v4l2_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_is*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.isp_param*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fimc_is* %0, %struct.fimc_is** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @V4L2_LOCK_WHITE_BALANCE, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @V4L2_LOCK_EXPOSURE, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %22 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store %struct.isp_param* %25, %struct.isp_param** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @ISP_AA_COMMAND_STOP, align 4
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @ISP_AA_COMMAND_START, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.isp_param*, %struct.isp_param** %8, align 8
  %36 = getelementptr inbounds %struct.isp_param, %struct.isp_param* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load i8*, i8** @ISP_AA_TARGET_AE, align 8
  %39 = load %struct.isp_param*, %struct.isp_param** %8, align 8
  %40 = getelementptr inbounds %struct.isp_param, %struct.isp_param* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i8* %38, i8** %41, align 8
  %42 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %43 = load i32, i32* @PARAM_ISP_AA, align 4
  %44 = call i32 @fimc_is_set_param_bit(%struct.fimc_is* %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %47 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = call i32 (...) @wmb()
  %50 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %51 = call i32 @fimc_is_itf_s_param(%struct.fimc_is* %50, i32 0)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %32
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %3, align 4
  br label %83

56:                                               ; preds = %32
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @ISP_AA_COMMAND_STOP, align 4
  br label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @ISP_AA_COMMAND_START, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.isp_param*, %struct.isp_param** %8, align 8
  %67 = getelementptr inbounds %struct.isp_param, %struct.isp_param* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load i8*, i8** @ISP_AA_TARGET_AE, align 8
  %70 = load %struct.isp_param*, %struct.isp_param** %8, align 8
  %71 = getelementptr inbounds %struct.isp_param, %struct.isp_param* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i8* %69, i8** %72, align 8
  %73 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %74 = load i32, i32* @PARAM_ISP_AA, align 4
  %75 = call i32 @fimc_is_set_param_bit(%struct.fimc_is* %73, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %78 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = call i32 (...) @wmb()
  %81 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %82 = call i32 @fimc_is_itf_s_param(%struct.fimc_is* %81, i32 0)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %63, %54
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @fimc_is_set_param_bit(%struct.fimc_is*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @fimc_is_itf_s_param(%struct.fimc_is*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
