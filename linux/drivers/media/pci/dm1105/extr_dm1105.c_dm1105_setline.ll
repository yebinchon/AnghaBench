; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/dm1105/extr_dm1105.c_dm1105_setline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/dm1105/extr_dm1105.c_dm1105_setline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm1105_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm1105_dev*, i32, i32)* @dm1105_setline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm1105_setline(%struct.dm1105_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dm1105_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dm1105_dev* %0, %struct.dm1105_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load %struct.dm1105_dev*, %struct.dm1105_dev** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @dm1105_gpio_enable(%struct.dm1105_dev* %10, i32 %11, i32 0)
  br label %20

13:                                               ; preds = %3
  %14 = load %struct.dm1105_dev*, %struct.dm1105_dev** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dm1105_gpio_enable(%struct.dm1105_dev* %14, i32 %15, i32 1)
  %17 = load %struct.dm1105_dev*, %struct.dm1105_dev** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dm1105_gpio_clear(%struct.dm1105_dev* %17, i32 %18)
  br label %20

20:                                               ; preds = %13, %9
  ret void
}

declare dso_local i32 @dm1105_gpio_enable(%struct.dm1105_dev*, i32, i32) #1

declare dso_local i32 @dm1105_gpio_clear(%struct.dm1105_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
