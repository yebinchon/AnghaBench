; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-cards.c_saa7164_gpio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-cards.c_saa7164_gpio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7164_dev = type { i32 }

@PCIEBRIDGE_UNITID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7164_gpio_setup(%struct.saa7164_dev* %0) #0 {
  %2 = alloca %struct.saa7164_dev*, align 8
  store %struct.saa7164_dev* %0, %struct.saa7164_dev** %2, align 8
  %3 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %4 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %20 [
    i32 138, label %6
    i32 137, label %6
    i32 136, label %6
    i32 135, label %6
    i32 134, label %6
    i32 132, label %6
    i32 131, label %6
    i32 130, label %6
    i32 128, label %6
    i32 129, label %6
    i32 133, label %6
  ]

6:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %7 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %8 = load i32, i32* @PCIEBRIDGE_UNITID, align 4
  %9 = call i32 @saa7164_api_clear_gpiobit(%struct.saa7164_dev* %7, i32 %8, i32 2)
  %10 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %11 = load i32, i32* @PCIEBRIDGE_UNITID, align 4
  %12 = call i32 @saa7164_api_clear_gpiobit(%struct.saa7164_dev* %10, i32 %11, i32 3)
  %13 = call i32 @msleep(i32 20)
  %14 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %15 = load i32, i32* @PCIEBRIDGE_UNITID, align 4
  %16 = call i32 @saa7164_api_set_gpiobit(%struct.saa7164_dev* %14, i32 %15, i32 2)
  %17 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %18 = load i32, i32* @PCIEBRIDGE_UNITID, align 4
  %19 = call i32 @saa7164_api_set_gpiobit(%struct.saa7164_dev* %17, i32 %18, i32 3)
  br label %20

20:                                               ; preds = %1, %6
  ret void
}

declare dso_local i32 @saa7164_api_clear_gpiobit(%struct.saa7164_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @saa7164_api_set_gpiobit(%struct.saa7164_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
