; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_cx8802_blackbird_advise_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_cx8802_blackbird_advise_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_driver = type { %struct.cx88_core* }
%struct.cx88_core = type { i32 }

@MO_GP0_IO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx8802_driver*)* @cx8802_blackbird_advise_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx8802_blackbird_advise_acquire(%struct.cx8802_driver* %0) #0 {
  %2 = alloca %struct.cx8802_driver*, align 8
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32, align 4
  store %struct.cx8802_driver* %0, %struct.cx8802_driver** %2, align 8
  %5 = load %struct.cx8802_driver*, %struct.cx8802_driver** %2, align 8
  %6 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %5, i32 0, i32 0
  %7 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  store %struct.cx88_core* %7, %struct.cx88_core** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %9 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %24 [
    i32 128, label %11
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @MO_GP0_IO, align 4
  %13 = call i32 @cx_set(i32 %12, i32 128)
  %14 = call i32 @udelay(i32 1000)
  %15 = load i32, i32* @MO_GP0_IO, align 4
  %16 = call i32 @cx_clear(i32 %15, i32 128)
  %17 = call i32 @udelay(i32 50)
  %18 = load i32, i32* @MO_GP0_IO, align 4
  %19 = call i32 @cx_set(i32 %18, i32 128)
  %20 = call i32 @udelay(i32 1000)
  %21 = load i32, i32* @MO_GP0_IO, align 4
  %22 = call i32 @cx_set(i32 %21, i32 4)
  %23 = call i32 @udelay(i32 1000)
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %11
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cx_clear(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
