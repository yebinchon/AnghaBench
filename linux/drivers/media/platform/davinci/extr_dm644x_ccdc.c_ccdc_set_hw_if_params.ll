; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm644x_ccdc.c_ccdc_set_hw_if_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm644x_ccdc.c_ccdc_set_hw_if_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.vpfe_hw_if_param = type { i32, i32, i32 }

@ccdc_cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpfe_hw_if_param*)* @ccdc_set_hw_if_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_set_hw_if_params(%struct.vpfe_hw_if_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vpfe_hw_if_param*, align 8
  store %struct.vpfe_hw_if_param* %0, %struct.vpfe_hw_if_param** %3, align 8
  %4 = load %struct.vpfe_hw_if_param*, %struct.vpfe_hw_if_param** %3, align 8
  %5 = getelementptr inbounds %struct.vpfe_hw_if_param, %struct.vpfe_hw_if_param* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ccdc_cfg, i32 0, i32 0), align 4
  %7 = load %struct.vpfe_hw_if_param*, %struct.vpfe_hw_if_param** %3, align 8
  %8 = getelementptr inbounds %struct.vpfe_hw_if_param, %struct.vpfe_hw_if_param* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %17 [
    i32 131, label %10
    i32 129, label %10
    i32 128, label %10
    i32 130, label %10
  ]

10:                                               ; preds = %1, %1, %1, %1
  %11 = load %struct.vpfe_hw_if_param*, %struct.vpfe_hw_if_param** %3, align 8
  %12 = getelementptr inbounds %struct.vpfe_hw_if_param, %struct.vpfe_hw_if_param* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ccdc_cfg, i32 0, i32 1, i32 1), align 4
  %14 = load %struct.vpfe_hw_if_param*, %struct.vpfe_hw_if_param** %3, align 8
  %15 = getelementptr inbounds %struct.vpfe_hw_if_param, %struct.vpfe_hw_if_param* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ccdc_cfg, i32 0, i32 1, i32 0), align 4
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %21

20:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
