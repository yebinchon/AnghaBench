; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_main.c_softing_pdev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_main.c_softing_pdev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.softing = type { i32, i32** }

@softing_pdev_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @softing_pdev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @softing_pdev_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.softing*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.softing* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.softing* %6, %struct.softing** %3, align 8
  %7 = load %struct.softing*, %struct.softing** %3, align 8
  %8 = call i32 @softing_card_shutdown(%struct.softing* %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %41, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.softing*, %struct.softing** %3, align 8
  %12 = getelementptr inbounds %struct.softing, %struct.softing* %11, i32 0, i32 1
  %13 = load i32**, i32*** %12, align 8
  %14 = call i32 @ARRAY_SIZE(i32** %13)
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %9
  %17 = load %struct.softing*, %struct.softing** %3, align 8
  %18 = getelementptr inbounds %struct.softing, %struct.softing* %17, i32 0, i32 1
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %41

26:                                               ; preds = %16
  %27 = load %struct.softing*, %struct.softing** %3, align 8
  %28 = getelementptr inbounds %struct.softing, %struct.softing* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @softing_netdev_cleanup(i32* %33)
  %35 = load %struct.softing*, %struct.softing** %3, align 8
  %36 = getelementptr inbounds %struct.softing, %struct.softing* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %26, %25
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %9

44:                                               ; preds = %9
  %45 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @sysfs_remove_group(i32* %47, i32* @softing_pdev_group)
  %49 = load %struct.softing*, %struct.softing** %3, align 8
  %50 = getelementptr inbounds %struct.softing, %struct.softing* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @iounmap(i32 %51)
  %53 = load %struct.softing*, %struct.softing** %3, align 8
  %54 = call i32 @kfree(%struct.softing* %53)
  ret i32 0
}

declare dso_local %struct.softing* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @softing_card_shutdown(%struct.softing*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @softing_netdev_cleanup(i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.softing*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
