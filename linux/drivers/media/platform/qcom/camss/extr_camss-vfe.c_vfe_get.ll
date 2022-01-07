; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i64, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfe_device*)* @vfe_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_get(%struct.vfe_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfe_device*, align 8
  %4 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %3, align 8
  %5 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %6 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %9 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %66

12:                                               ; preds = %1
  %13 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %14 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %17 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @camss_pm_domain_on(%struct.TYPE_3__* %15, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %104

23:                                               ; preds = %12
  %24 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %25 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pm_runtime_get_sync(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %96

33:                                               ; preds = %23
  %34 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %35 = call i32 @vfe_set_clock_rates(%struct.vfe_device* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %89

39:                                               ; preds = %33
  %40 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %41 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %44 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %47 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %46, i32 0, i32 3
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @camss_enable_clocks(i32 %42, i32 %45, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  br label %89

55:                                               ; preds = %39
  %56 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %57 = call i32 @vfe_reset(%struct.vfe_device* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %81

61:                                               ; preds = %55
  %62 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %63 = call i32 @vfe_reset_output_maps(%struct.vfe_device* %62)
  %64 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %65 = call i32 @vfe_init_outputs(%struct.vfe_device* %64)
  br label %73

66:                                               ; preds = %1
  %67 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %68 = call i32 @vfe_check_clock_rates(%struct.vfe_device* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %89

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %61
  %74 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %75 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %79 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  store i32 0, i32* %2, align 4
  br label %109

81:                                               ; preds = %60
  %82 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %83 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %86 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @camss_disable_clocks(i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %81, %71, %54, %38
  %90 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %91 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %90, i32 0, i32 3
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @pm_runtime_put_sync(i32 %94)
  br label %96

96:                                               ; preds = %89, %32
  %97 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %98 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %97, i32 0, i32 3
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %101 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @camss_pm_domain_off(%struct.TYPE_3__* %99, i32 %102)
  br label %104

104:                                              ; preds = %96, %22
  %105 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %106 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %105, i32 0, i32 1
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %104, %73
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @camss_pm_domain_on(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @vfe_set_clock_rates(%struct.vfe_device*) #1

declare dso_local i32 @camss_enable_clocks(i32, i32, i32) #1

declare dso_local i32 @vfe_reset(%struct.vfe_device*) #1

declare dso_local i32 @vfe_reset_output_maps(%struct.vfe_device*) #1

declare dso_local i32 @vfe_init_outputs(%struct.vfe_device*) #1

declare dso_local i32 @vfe_check_clock_rates(%struct.vfe_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @camss_disable_clocks(i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @camss_pm_domain_off(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
