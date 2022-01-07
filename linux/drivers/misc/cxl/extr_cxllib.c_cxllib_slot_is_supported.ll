; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_cxllib.c_cxllib_slot_is_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_cxllib.c_cxllib_slot_is_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@CPU_FTR_HVMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxllib_slot_is_supported(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load i32, i32* @CPU_FTR_HVMODE, align 4
  %15 = call i32 @cpu_has_feature(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %34

18:                                               ; preds = %13
  %19 = call i32 (...) @cxl_is_power9()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %34

22:                                               ; preds = %18
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i64 @cxl_slot_is_switched(%struct.pci_dev* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %34

27:                                               ; preds = %22
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 @cxl_calc_capp_routing(%struct.pci_dev* %28, i32* %8, i32* %7, i32* %9)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %34

33:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %32, %26, %21, %17, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @cpu_has_feature(i32) #1

declare dso_local i32 @cxl_is_power9(...) #1

declare dso_local i64 @cxl_slot_is_switched(%struct.pci_dev*) #1

declare dso_local i32 @cxl_calc_capp_routing(%struct.pci_dev*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
