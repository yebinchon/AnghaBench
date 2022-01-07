; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_mmap.c_b53_mmap_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_mmap.c_b53_mmap_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.b53_platform_data* }
%struct.b53_platform_data = type { i32 }
%struct.b53_mmap_priv = type { i32 }
%struct.b53_device = type { %struct.b53_platform_data* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@b53_mmap_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @b53_mmap_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_mmap_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.b53_platform_data*, align 8
  %5 = alloca %struct.b53_mmap_priv*, align 8
  %6 = alloca %struct.b53_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.b53_platform_data*, %struct.b53_platform_data** %9, align 8
  store %struct.b53_platform_data* %10, %struct.b53_platform_data** %4, align 8
  %11 = load %struct.b53_platform_data*, %struct.b53_platform_data** %4, align 8
  %12 = icmp ne %struct.b53_platform_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %50

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.b53_mmap_priv* @devm_kzalloc(%struct.TYPE_3__* %18, i32 4, i32 %19)
  store %struct.b53_mmap_priv* %20, %struct.b53_mmap_priv** %5, align 8
  %21 = load %struct.b53_mmap_priv*, %struct.b53_mmap_priv** %5, align 8
  %22 = icmp ne %struct.b53_mmap_priv* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %50

26:                                               ; preds = %16
  %27 = load %struct.b53_platform_data*, %struct.b53_platform_data** %4, align 8
  %28 = getelementptr inbounds %struct.b53_platform_data, %struct.b53_platform_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.b53_mmap_priv*, %struct.b53_mmap_priv** %5, align 8
  %31 = getelementptr inbounds %struct.b53_mmap_priv, %struct.b53_mmap_priv* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load %struct.b53_mmap_priv*, %struct.b53_mmap_priv** %5, align 8
  %35 = call %struct.b53_device* @b53_switch_alloc(%struct.TYPE_3__* %33, i32* @b53_mmap_ops, %struct.b53_mmap_priv* %34)
  store %struct.b53_device* %35, %struct.b53_device** %6, align 8
  %36 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %37 = icmp ne %struct.b53_device* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %50

41:                                               ; preds = %26
  %42 = load %struct.b53_platform_data*, %struct.b53_platform_data** %4, align 8
  %43 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %44 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %43, i32 0, i32 0
  store %struct.b53_platform_data* %42, %struct.b53_platform_data** %44, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %47 = call i32 @platform_set_drvdata(%struct.platform_device* %45, %struct.b53_device* %46)
  %48 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %49 = call i32 @b53_switch_register(%struct.b53_device* %48)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %41, %38, %23, %13
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.b53_mmap_priv* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local %struct.b53_device* @b53_switch_alloc(%struct.TYPE_3__*, i32*, %struct.b53_mmap_priv*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.b53_device*) #1

declare dso_local i32 @b53_switch_register(%struct.b53_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
