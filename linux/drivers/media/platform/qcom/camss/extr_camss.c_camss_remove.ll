; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss.c_camss_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss.c_camss_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.camss = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @camss_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camss_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.camss*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.camss* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.camss* %6, %struct.camss** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %21, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.camss*, %struct.camss** %4, align 8
  %10 = getelementptr inbounds %struct.camss, %struct.camss* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %7
  %14 = load %struct.camss*, %struct.camss** %4, align 8
  %15 = getelementptr inbounds %struct.camss, %struct.camss* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i32 @msm_vfe_stop_streaming(i32* %19)
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %7

24:                                               ; preds = %7
  %25 = load %struct.camss*, %struct.camss** %4, align 8
  %26 = getelementptr inbounds %struct.camss, %struct.camss* %25, i32 0, i32 2
  %27 = call i32 @v4l2_async_notifier_unregister(i32* %26)
  %28 = load %struct.camss*, %struct.camss** %4, align 8
  %29 = getelementptr inbounds %struct.camss, %struct.camss* %28, i32 0, i32 2
  %30 = call i32 @v4l2_async_notifier_cleanup(i32* %29)
  %31 = load %struct.camss*, %struct.camss** %4, align 8
  %32 = call i32 @camss_unregister_entities(%struct.camss* %31)
  %33 = load %struct.camss*, %struct.camss** %4, align 8
  %34 = getelementptr inbounds %struct.camss, %struct.camss* %33, i32 0, i32 1
  %35 = call i64 @atomic_read(i32* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load %struct.camss*, %struct.camss** %4, align 8
  %39 = call i32 @camss_delete(%struct.camss* %38)
  br label %40

40:                                               ; preds = %37, %24
  ret i32 0
}

declare dso_local %struct.camss* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @msm_vfe_stop_streaming(i32*) #1

declare dso_local i32 @v4l2_async_notifier_unregister(i32*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

declare dso_local i32 @camss_unregister_entities(%struct.camss*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @camss_delete(%struct.camss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
