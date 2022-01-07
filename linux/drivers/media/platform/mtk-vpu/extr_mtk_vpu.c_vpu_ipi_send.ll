; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_ipi_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_ipi_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mtk_vpu = type { i32*, i32, i32, i32, %struct.share_obj* }
%struct.share_obj = type { i32, i32, i64 }

@IPI_VPU_INIT = common dso_local global i32 0, align 4
@IPI_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to send ipi message\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to enable vpu clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"vpu_ipi_send: VPU is not running\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@IPI_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"vpu_ipi_send: IPI timeout!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HOST_TO_VPU = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"vpu ipi %d ack time out !\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vpu_ipi_send(%struct.platform_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtk_vpu*, align 8
  %11 = alloca %struct.share_obj*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %15 = call %struct.mtk_vpu* @platform_get_drvdata(%struct.platform_device* %14)
  store %struct.mtk_vpu* %15, %struct.mtk_vpu** %10, align 8
  %16 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %17 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %16, i32 0, i32 4
  %18 = load %struct.share_obj*, %struct.share_obj** %17, align 8
  store %struct.share_obj* %18, %struct.share_obj** %11, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @IPI_VPU_INIT, align 4
  %21 = icmp ule i32 %19, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @IPI_MAX, align 4
  %25 = icmp uge i32 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = icmp ugt i64 %28, 8
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %30, %26, %22, %4
  %34 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %35 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @dev_err(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %155

40:                                               ; preds = %30
  %41 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %42 = call i32 @vpu_clock_enable(%struct.mtk_vpu* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %47 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %5, align 4
  br label %155

51:                                               ; preds = %40
  %52 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %53 = call i32 @vpu_running(%struct.mtk_vpu* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %57 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %13, align 4
  br label %151

62:                                               ; preds = %51
  %63 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %64 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %63, i32 0, i32 1
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load i64, i64* @jiffies, align 8
  %67 = load i32, i32* @IPI_TIMEOUT_MS, align 4
  %68 = call i64 @msecs_to_jiffies(i32 %67)
  %69 = add i64 %66, %68
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %83, %62
  %71 = load i64, i64* @jiffies, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i64 @time_after(i64 %71, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %77 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, ...) @dev_err(i32 %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %13, align 4
  br label %147

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %85 = load i32, i32* @HOST_TO_VPU, align 4
  %86 = call i64 @vpu_cfg_readl(%struct.mtk_vpu* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %70, label %88

88:                                               ; preds = %83
  %89 = load %struct.share_obj*, %struct.share_obj** %11, align 8
  %90 = getelementptr inbounds %struct.share_obj, %struct.share_obj* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @memcpy(i8* %92, i8* %93, i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.share_obj*, %struct.share_obj** %11, align 8
  %98 = getelementptr inbounds %struct.share_obj, %struct.share_obj* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.share_obj*, %struct.share_obj** %11, align 8
  %101 = getelementptr inbounds %struct.share_obj, %struct.share_obj* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %103 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 0, i32* %107, align 4
  %108 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %109 = load i32, i32* @HOST_TO_VPU, align 4
  %110 = call i32 @vpu_cfg_writel(%struct.mtk_vpu* %108, i32 1, i32 %109)
  %111 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %112 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %111, i32 0, i32 1
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i32, i32* @IPI_TIMEOUT_MS, align 4
  %115 = call i64 @msecs_to_jiffies(i32 %114)
  store i64 %115, i64* %12, align 8
  %116 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %117 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %120 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* %12, align 8
  %127 = call i32 @wait_event_timeout(i32 %118, i32 %125, i64 %126)
  store i32 %127, i32* %13, align 4
  %128 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %129 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 0, i32* %133, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %88
  %137 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %138 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 (i32, i8*, ...) @dev_err(i32 %139, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @EIO, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %13, align 4
  br label %151

144:                                              ; preds = %88
  %145 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %146 = call i32 @vpu_clock_disable(%struct.mtk_vpu* %145)
  store i32 0, i32* %5, align 4
  br label %155

147:                                              ; preds = %75
  %148 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %149 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %148, i32 0, i32 1
  %150 = call i32 @mutex_unlock(i32* %149)
  br label %151

151:                                              ; preds = %147, %136, %55
  %152 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %153 = call i32 @vpu_clock_disable(%struct.mtk_vpu* %152)
  %154 = load i32, i32* %13, align 4
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %151, %144, %45, %33
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local %struct.mtk_vpu* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @vpu_clock_enable(%struct.mtk_vpu*) #1

declare dso_local i32 @vpu_running(%struct.mtk_vpu*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @vpu_cfg_readl(%struct.mtk_vpu*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @vpu_cfg_writel(%struct.mtk_vpu*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @vpu_clock_disable(%struct.mtk_vpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
