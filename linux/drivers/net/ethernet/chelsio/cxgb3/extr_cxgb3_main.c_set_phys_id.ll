; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_set_phys_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_set_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { i32 }

@A_T3DBG_GPIO_EN = common dso_local global i32 0, align 4
@F_GPIO0_OUT_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @set_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.port_info* @netdev_priv(%struct.net_device* %8)
  store %struct.port_info* %9, %struct.port_info** %6, align 8
  %10 = load %struct.port_info*, %struct.port_info** %6, align 8
  %11 = getelementptr inbounds %struct.port_info, %struct.port_info* %10, i32 0, i32 0
  %12 = load %struct.adapter*, %struct.adapter** %11, align 8
  store %struct.adapter* %12, %struct.adapter** %7, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %26 [
    i32 131, label %14
    i32 129, label %15
    i32 128, label %20
    i32 130, label %20
  ]

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.adapter*, %struct.adapter** %7, align 8
  %17 = load i32, i32* @A_T3DBG_GPIO_EN, align 4
  %18 = load i32, i32* @F_GPIO0_OUT_VAL, align 4
  %19 = call i32 @t3_set_reg_field(%struct.adapter* %16, i32 %17, i32 %18, i32 0)
  br label %26

20:                                               ; preds = %2, %2
  %21 = load %struct.adapter*, %struct.adapter** %7, align 8
  %22 = load i32, i32* @A_T3DBG_GPIO_EN, align 4
  %23 = load i32, i32* @F_GPIO0_OUT_VAL, align 4
  %24 = load i32, i32* @F_GPIO0_OUT_VAL, align 4
  %25 = call i32 @t3_set_reg_field(%struct.adapter* %21, i32 %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %2, %15
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
