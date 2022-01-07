; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_sh_vou_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_sh_vou_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.sh_vou_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SH_VOU_INITIALISING = common dso_local global i32 0, align 4
@VOUER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @sh_vou_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_vou_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.sh_vou_device*, align 8
  %4 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.sh_vou_device* @video_drvdata(%struct.file* %5)
  store %struct.sh_vou_device* %6, %struct.sh_vou_device** %3, align 8
  %7 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %8 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.file*, %struct.file** %2, align 8
  %11 = call i32 @v4l2_fh_is_singular_file(%struct.file* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.file*, %struct.file** %2, align 8
  %13 = call i32 @_vb2_fop_release(%struct.file* %12, i32* null)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load i32, i32* @SH_VOU_INITIALISING, align 4
  %18 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %19 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %21 = load i32, i32* @VOUER, align 4
  %22 = call i32 @sh_vou_reg_a_set(%struct.sh_vou_device* %20, i32 %21, i32 0, i32 257)
  %23 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %24 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pm_runtime_put(i32 %26)
  br label %28

28:                                               ; preds = %16, %1
  %29 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %30 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  ret i32 0
}

declare dso_local %struct.sh_vou_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @_vb2_fop_release(%struct.file*, i32*) #1

declare dso_local i32 @sh_vou_reg_a_set(%struct.sh_vou_device*, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
