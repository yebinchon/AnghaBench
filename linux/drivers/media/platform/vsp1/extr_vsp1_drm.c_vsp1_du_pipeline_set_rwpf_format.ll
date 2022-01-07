; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_drm.c_vsp1_du_pipeline_set_rwpf_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_drm.c_vsp1_du_pipeline_set_rwpf_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_device = type { i32 }
%struct.vsp1_rwpf = type { %struct.TYPE_4__, %struct.vsp1_format_info* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vsp1_format_info = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Unsupported pixel format %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsp1_device*, %struct.vsp1_rwpf*, i32, i32)* @vsp1_du_pipeline_set_rwpf_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_du_pipeline_set_rwpf_format(%struct.vsp1_device* %0, %struct.vsp1_rwpf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vsp1_device*, align 8
  %7 = alloca %struct.vsp1_rwpf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vsp1_format_info*, align 8
  %11 = alloca i32, align 4
  store %struct.vsp1_device* %0, %struct.vsp1_device** %6, align 8
  store %struct.vsp1_rwpf* %1, %struct.vsp1_rwpf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.vsp1_device*, %struct.vsp1_device** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.vsp1_format_info* @vsp1_get_format_info(%struct.vsp1_device* %12, i32 %13)
  store %struct.vsp1_format_info* %14, %struct.vsp1_format_info** %10, align 8
  %15 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %10, align 8
  %16 = icmp ne %struct.vsp1_format_info* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %4
  %18 = load %struct.vsp1_device*, %struct.vsp1_device** %6, align 8
  %19 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %62

25:                                               ; preds = %4
  %26 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %10, align 8
  %27 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %10, align 8
  %32 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  br label %35

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32 [ %33, %30 ], [ 1, %34 ]
  store i32 %36, i32* %11, align 4
  %37 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %10, align 8
  %38 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %7, align 8
  %39 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %38, i32 0, i32 1
  store %struct.vsp1_format_info* %37, %struct.vsp1_format_info** %39, align 8
  %40 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %10, align 8
  %41 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %7, align 8
  %44 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %7, align 8
  %48 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %46, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  %55 = udiv i32 %53, %54
  %56 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %7, align 8
  %57 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %55, i32* %61, align 4
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %35, %17
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.vsp1_format_info* @vsp1_get_format_info(%struct.vsp1_device*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
