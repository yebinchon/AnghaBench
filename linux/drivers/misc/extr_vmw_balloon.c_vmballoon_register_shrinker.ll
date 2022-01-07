; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_vmw_balloon.c_vmballoon_register_shrinker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_vmw_balloon.c_vmballoon_register_shrinker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmballoon = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@vmwballoon_shrinker_enable = common dso_local global i32 0, align 4
@vmballoon_shrinker_scan = common dso_local global i32 0, align 4
@vmballoon_shrinker_count = common dso_local global i32 0, align 4
@DEFAULT_SEEKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmballoon*)* @vmballoon_register_shrinker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmballoon_register_shrinker(%struct.vmballoon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmballoon*, align 8
  %4 = alloca i32, align 4
  store %struct.vmballoon* %0, %struct.vmballoon** %3, align 8
  %5 = load i32, i32* @vmwballoon_shrinker_enable, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

8:                                                ; preds = %1
  %9 = load i32, i32* @vmballoon_shrinker_scan, align 4
  %10 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %11 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @vmballoon_shrinker_count, align 4
  %14 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %15 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @DEFAULT_SEEKS, align 4
  %18 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %19 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %22 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %21, i32 0, i32 1
  %23 = call i32 @register_shrinker(%struct.TYPE_2__* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %8
  %27 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %28 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %8
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %7
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @register_shrinker(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
