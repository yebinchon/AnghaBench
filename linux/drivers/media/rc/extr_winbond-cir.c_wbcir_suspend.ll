; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.wbcir_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, i32)* @wbcir_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wbcir_suspend(%struct.pnp_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pnp_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wbcir_data*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %7 = call %struct.wbcir_data* @pnp_get_drvdata(%struct.pnp_dev* %6)
  store %struct.wbcir_data* %7, %struct.wbcir_data** %5, align 8
  %8 = load %struct.wbcir_data*, %struct.wbcir_data** %5, align 8
  %9 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %8, i32 0, i32 0
  %10 = call i32 @led_classdev_suspend(i32* %9)
  %11 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %12 = call i32 @wbcir_shutdown(%struct.pnp_dev* %11)
  ret i32 0
}

declare dso_local %struct.wbcir_data* @pnp_get_drvdata(%struct.pnp_dev*) #1

declare dso_local i32 @led_classdev_suspend(i32*) #1

declare dso_local i32 @wbcir_shutdown(%struct.pnp_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
