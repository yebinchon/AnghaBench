; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_sdr_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_sdr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_drif_sdr = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32*, %struct.rcar_drif_sdr*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to set default format\0A\00", align 1
@RCAR_DRIF_DEFAULT_HWBUF_SIZE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_SDR_CAPTURE = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@rcar_drif_vb2_ops = common dso_local global i32 0, align 4
@vb2_vmalloc_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed: vb2_queue_init ret %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed: v4l2_device_register ret %d\0A\00", align 1
@rcar_drif_notify_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed: notifier register ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_drif_sdr*)* @rcar_drif_sdr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_drif_sdr_probe(%struct.rcar_drif_sdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_drif_sdr*, align 8
  %4 = alloca i32, align 4
  store %struct.rcar_drif_sdr* %0, %struct.rcar_drif_sdr** %3, align 8
  %5 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %6 = call i32 @rcar_drif_set_default_format(%struct.rcar_drif_sdr* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %11 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i32, i8*, ...) @dev_err(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %125

15:                                               ; preds = %1
  %16 = load i32, i32* @RCAR_DRIF_DEFAULT_HWBUF_SIZE, align 4
  %17 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %18 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %17, i32 0, i32 9
  store i32 %16, i32* %18, align 4
  %19 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %20 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %19, i32 0, i32 8
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %23 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %22, i32 0, i32 7
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %26 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %25, i32 0, i32 6
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %29 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %28, i32 0, i32 5
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %32 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %31, i32 0, i32 4
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load i32, i32* @V4L2_BUF_TYPE_SDR_CAPTURE, align 4
  %35 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %36 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 6
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @VB2_READ, align 4
  %39 = load i32, i32* @VB2_MMAP, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @VB2_DMABUF, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %44 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %47 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %48 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 5
  store %struct.rcar_drif_sdr* %46, %struct.rcar_drif_sdr** %49, align 8
  %50 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %51 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 4, i32* %52, align 4
  %53 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %54 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  store i32* @rcar_drif_vb2_ops, i32** %55, align 8
  %56 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %57 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  store i32* @vb2_vmalloc_memops, i32** %58, align 8
  %59 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %60 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %61 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %64 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %63, i32 0, i32 3
  %65 = call i32 @vb2_queue_init(%struct.TYPE_4__* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %15
  %69 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %70 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 (i32, i8*, ...) @dev_err(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %125

75:                                               ; preds = %15
  %76 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %77 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %80 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %79, i32 0, i32 0
  %81 = call i32 @v4l2_device_register(i32 %78, i32* %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %75
  %85 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %86 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 (i32, i8*, ...) @dev_err(i32 %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %125

91:                                               ; preds = %75
  %92 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %93 = call i32 @rcar_drif_parse_subdevs(%struct.rcar_drif_sdr* %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %120

97:                                               ; preds = %91
  %98 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %99 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i32* @rcar_drif_notify_ops, i32** %100, align 8
  %101 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %102 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %101, i32 0, i32 0
  %103 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %104 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %103, i32 0, i32 1
  %105 = call i32 @v4l2_async_notifier_register(i32* %102, %struct.TYPE_5__* %104)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %97
  %109 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %110 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = call i32 (i32, i8*, ...) @dev_err(i32 %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  br label %116

114:                                              ; preds = %97
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* %2, align 4
  br label %125

116:                                              ; preds = %108
  %117 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %118 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %117, i32 0, i32 1
  %119 = call i32 @v4l2_async_notifier_cleanup(%struct.TYPE_5__* %118)
  br label %120

120:                                              ; preds = %116, %96
  %121 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %122 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %121, i32 0, i32 0
  %123 = call i32 @v4l2_device_unregister(i32* %122)
  %124 = load i32, i32* %4, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %120, %114, %84, %68, %9
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @rcar_drif_set_default_format(%struct.rcar_drif_sdr*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vb2_queue_init(%struct.TYPE_4__*) #1

declare dso_local i32 @v4l2_device_register(i32, i32*) #1

declare dso_local i32 @rcar_drif_parse_subdevs(%struct.rcar_drif_sdr*) #1

declare dso_local i32 @v4l2_async_notifier_register(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
