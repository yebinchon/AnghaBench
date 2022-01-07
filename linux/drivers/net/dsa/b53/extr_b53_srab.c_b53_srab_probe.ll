; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_srab.c_b53_srab_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_srab.c_b53_srab_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node*, %struct.b53_platform_data* }
%struct.device_node = type { i32 }
%struct.b53_platform_data = type { i64 }
%struct.of_device_id = type { i64 }
%struct.b53_srab_priv = type { i32 }
%struct.b53_device = type { %struct.b53_platform_data* }

@b53_srab_of_match = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@b53_srab_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @b53_srab_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_srab_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.b53_platform_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.b53_srab_priv*, align 8
  %8 = alloca %struct.b53_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.b53_platform_data*, %struct.b53_platform_data** %11, align 8
  store %struct.b53_platform_data* %12, %struct.b53_platform_data** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  store %struct.of_device_id* null, %struct.of_device_id** %6, align 8
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @b53_srab_of_match, align 4
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = call %struct.of_device_id* @of_match_node(i32 %20, %struct.device_node* %21)
  store %struct.of_device_id* %22, %struct.of_device_id** %6, align 8
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %25 = icmp ne %struct.of_device_id* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @devm_kzalloc(%struct.TYPE_3__* %28, i32 8, i32 %29)
  %31 = bitcast i8* %30 to %struct.b53_platform_data*
  store %struct.b53_platform_data* %31, %struct.b53_platform_data** %4, align 8
  %32 = load %struct.b53_platform_data*, %struct.b53_platform_data** %4, align 8
  %33 = icmp ne %struct.b53_platform_data* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %94

37:                                               ; preds = %26
  %38 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %39 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.b53_platform_data*, %struct.b53_platform_data** %4, align 8
  %42 = getelementptr inbounds %struct.b53_platform_data, %struct.b53_platform_data* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %37, %23
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @devm_kzalloc(%struct.TYPE_3__* %45, i32 4, i32 %46)
  %48 = bitcast i8* %47 to %struct.b53_srab_priv*
  store %struct.b53_srab_priv* %48, %struct.b53_srab_priv** %7, align 8
  %49 = load %struct.b53_srab_priv*, %struct.b53_srab_priv** %7, align 8
  %50 = icmp ne %struct.b53_srab_priv* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %94

54:                                               ; preds = %43
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %55, i32 0)
  %57 = load %struct.b53_srab_priv*, %struct.b53_srab_priv** %7, align 8
  %58 = getelementptr inbounds %struct.b53_srab_priv, %struct.b53_srab_priv* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.b53_srab_priv*, %struct.b53_srab_priv** %7, align 8
  %60 = getelementptr inbounds %struct.b53_srab_priv, %struct.b53_srab_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %94

67:                                               ; preds = %54
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load %struct.b53_srab_priv*, %struct.b53_srab_priv** %7, align 8
  %71 = call %struct.b53_device* @b53_switch_alloc(%struct.TYPE_3__* %69, i32* @b53_srab_ops, %struct.b53_srab_priv* %70)
  store %struct.b53_device* %71, %struct.b53_device** %8, align 8
  %72 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %73 = icmp ne %struct.b53_device* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %94

77:                                               ; preds = %67
  %78 = load %struct.b53_platform_data*, %struct.b53_platform_data** %4, align 8
  %79 = icmp ne %struct.b53_platform_data* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.b53_platform_data*, %struct.b53_platform_data** %4, align 8
  %82 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %83 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %82, i32 0, i32 0
  store %struct.b53_platform_data* %81, %struct.b53_platform_data** %83, align 8
  br label %84

84:                                               ; preds = %80, %77
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %87 = call i32 @platform_set_drvdata(%struct.platform_device* %85, %struct.b53_device* %86)
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = call i32 @b53_srab_prepare_irq(%struct.platform_device* %88)
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = call i32 @b53_srab_mux_init(%struct.platform_device* %90)
  %92 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %93 = call i32 @b53_switch_register(%struct.b53_device* %92)
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %84, %74, %64, %51, %34
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local %struct.b53_device* @b53_switch_alloc(%struct.TYPE_3__*, i32*, %struct.b53_srab_priv*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.b53_device*) #1

declare dso_local i32 @b53_srab_prepare_irq(%struct.platform_device*) #1

declare dso_local i32 @b53_srab_mux_init(%struct.platform_device*) #1

declare dso_local i32 @b53_switch_register(%struct.b53_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
