; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_realtek-smi-core.c_realtek_smi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_realtek-smi-core.c_realtek_smi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.realtek_smi = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @realtek_smi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realtek_smi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.realtek_smi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = call %struct.realtek_smi* @dev_get_drvdata(i32* %5)
  store %struct.realtek_smi* %6, %struct.realtek_smi** %3, align 8
  %7 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %8 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dsa_unregister_switch(i32 %9)
  %11 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %12 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %17 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @of_node_put(i32 %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %25 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @gpiod_set_value(i32 %26, i32 1)
  ret i32 0
}

declare dso_local %struct.realtek_smi* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dsa_unregister_switch(i32) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
