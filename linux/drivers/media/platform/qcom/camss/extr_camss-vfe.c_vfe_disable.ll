; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_line = type { i32 }
%struct.vfe_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vfe_device*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfe_line*)* @vfe_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_disable(%struct.vfe_line* %0) #0 {
  %2 = alloca %struct.vfe_line*, align 8
  %3 = alloca %struct.vfe_device*, align 8
  store %struct.vfe_line* %0, %struct.vfe_line** %2, align 8
  %4 = load %struct.vfe_line*, %struct.vfe_line** %2, align 8
  %5 = call %struct.vfe_device* @to_vfe(%struct.vfe_line* %4)
  store %struct.vfe_device* %5, %struct.vfe_device** %3, align 8
  %6 = load %struct.vfe_line*, %struct.vfe_line** %2, align 8
  %7 = call i32 @vfe_disable_output(%struct.vfe_line* %6)
  %8 = load %struct.vfe_line*, %struct.vfe_line** %2, align 8
  %9 = call i32 @vfe_put_output(%struct.vfe_line* %8)
  %10 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %11 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %14 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %19 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.vfe_device*, i32)*, i32 (%struct.vfe_device*, i32)** %21, align 8
  %23 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %24 = call i32 %22(%struct.vfe_device* %23, i32 0)
  br label %25

25:                                               ; preds = %17, %1
  %26 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %27 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %31 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  ret i32 0
}

declare dso_local %struct.vfe_device* @to_vfe(%struct.vfe_line*) #1

declare dso_local i32 @vfe_disable_output(%struct.vfe_line*) #1

declare dso_local i32 @vfe_put_output(%struct.vfe_line*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
