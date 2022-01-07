; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_s5p_cec.c_s5p_cec_adap_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_s5p_cec.c_s5p_cec_adap_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.s5p_cec_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @s5p_cec_adap_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_cec_adap_enable(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5p_cec_dev*, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %7 = call %struct.s5p_cec_dev* @cec_get_drvdata(%struct.cec_adapter* %6)
  store %struct.s5p_cec_dev* %7, %struct.s5p_cec_dev** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %12 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pm_runtime_get_sync(i32 %13)
  %15 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %16 = call i32 @s5p_cec_reset(%struct.s5p_cec_dev* %15)
  %17 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %18 = call i32 @s5p_cec_set_divider(%struct.s5p_cec_dev* %17)
  %19 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %20 = call i32 @s5p_cec_threshold(%struct.s5p_cec_dev* %19)
  %21 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %22 = call i32 @s5p_cec_unmask_tx_interrupts(%struct.s5p_cec_dev* %21)
  %23 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %24 = call i32 @s5p_cec_unmask_rx_interrupts(%struct.s5p_cec_dev* %23)
  %25 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %26 = call i32 @s5p_cec_enable_rx(%struct.s5p_cec_dev* %25)
  br label %36

27:                                               ; preds = %2
  %28 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %29 = call i32 @s5p_cec_mask_tx_interrupts(%struct.s5p_cec_dev* %28)
  %30 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %31 = call i32 @s5p_cec_mask_rx_interrupts(%struct.s5p_cec_dev* %30)
  %32 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %33 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pm_runtime_disable(i32 %34)
  br label %36

36:                                               ; preds = %27, %10
  ret i32 0
}

declare dso_local %struct.s5p_cec_dev* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @s5p_cec_reset(%struct.s5p_cec_dev*) #1

declare dso_local i32 @s5p_cec_set_divider(%struct.s5p_cec_dev*) #1

declare dso_local i32 @s5p_cec_threshold(%struct.s5p_cec_dev*) #1

declare dso_local i32 @s5p_cec_unmask_tx_interrupts(%struct.s5p_cec_dev*) #1

declare dso_local i32 @s5p_cec_unmask_rx_interrupts(%struct.s5p_cec_dev*) #1

declare dso_local i32 @s5p_cec_enable_rx(%struct.s5p_cec_dev*) #1

declare dso_local i32 @s5p_cec_mask_tx_interrupts(%struct.s5p_cec_dev*) #1

declare dso_local i32 @s5p_cec_mask_rx_interrupts(%struct.s5p_cec_dev*) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
