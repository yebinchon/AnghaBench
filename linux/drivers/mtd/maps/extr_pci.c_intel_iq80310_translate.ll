; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pci.c_intel_iq80310_translate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pci.c_intel_iq80310_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_pci_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.map_pci_info*, i64)* @intel_iq80310_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intel_iq80310_translate(%struct.map_pci_info* %0, i64 %1) #0 {
  %3 = alloca %struct.map_pci_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.map_pci_info* %0, %struct.map_pci_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %6, 4194304
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.map_pci_info*, %struct.map_pci_info** %3, align 8
  %12 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 5464
  %15 = call i32 @writel(i32 8, i64 %14)
  %16 = load %struct.map_pci_info*, %struct.map_pci_info** %3, align 8
  %17 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 5456
  %20 = call i32 @writel(i32 0, i64 %19)
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.map_pci_info*, %struct.map_pci_info** %3, align 8
  %23 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 5464
  %26 = call i32 @writel(i32 7, i64 %25)
  %27 = load %struct.map_pci_info*, %struct.map_pci_info** %3, align 8
  %28 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 5456
  %31 = call i32 @writel(i32 8388608, i64 %30)
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 8388608
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %21, %10
  %35 = load i64, i64* %4, align 8
  ret i64 %35
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
