; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_pci.c_hl_pci_iatu_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_pci.c_hl_pci_iatu_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.asic_fixed_properties }
%struct.asic_fixed_properties = type { i64, i64 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_pci_iatu_write(%struct.hl_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.asic_fixed_properties*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %12 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %11, i32 0, i32 0
  store %struct.asic_fixed_properties* %12, %struct.asic_fixed_properties** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 4095
  store i32 %14, i32* %9, align 4
  %15 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %16 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %8, align 8
  %17 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @hl_pci_elbi_write(%struct.hl_device* %15, i64 %18, i32 3145728)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %21 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %8, align 8
  %22 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @hl_pci_elbi_write(%struct.hl_device* %20, i64 %26, i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @hl_pci_elbi_write(%struct.hl_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
