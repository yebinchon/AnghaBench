; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_pci.c_hl_pci_set_dram_bar_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_pci.c_hl_pci_set_dram_bar_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.asic_fixed_properties }
%struct.asic_fixed_properties = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid inbound region %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid PCI BAR %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to map DRAM bar to 0x%08llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_pci_set_dram_bar_base(%struct.hl_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hl_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.asic_fixed_properties*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %14 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %13, i32 0, i32 1
  store %struct.asic_fixed_properties* %14, %struct.asic_fixed_properties** %10, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %19 [
    i32 0, label %16
    i32 1, label %17
    i32 2, label %18
  ]

16:                                               ; preds = %4
  store i32 256, i32* %11, align 4
  br label %27

17:                                               ; preds = %4
  store i32 768, i32* %11, align 4
  br label %27

18:                                               ; preds = %4
  store i32 1280, i32* %11, align 4
  br label %27

19:                                               ; preds = %4
  %20 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %21 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %99

27:                                               ; preds = %18, %17, %16
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 2
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 4
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %38 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %99

44:                                               ; preds = %33, %30, %27
  %45 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 20
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @lower_32_bits(i32 %48)
  %50 = call i32 @hl_pci_iatu_write(%struct.hl_device* %45, i32 %47, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 24
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @upper_32_bits(i32 %54)
  %56 = call i32 @hl_pci_iatu_write(%struct.hl_device* %51, i32 %53, i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %12, align 4
  %59 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 0
  %62 = call i32 @hl_pci_iatu_write(%struct.hl_device* %59, i32 %61, i32 0)
  %63 = load i32, i32* %12, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %12, align 4
  %65 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 4
  %68 = load i32, i32* %8, align 4
  %69 = shl i32 %68, 8
  %70 = or i32 -1073217536, %69
  %71 = call i32 @hl_pci_iatu_write(%struct.hl_device* %65, i32 %67, i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %12, align 4
  %74 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %75 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %10, align 8
  %76 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @hl_pci_elbi_write(%struct.hl_device* %74, i64 %77, i32 0)
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %12, align 4
  %81 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %82 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %10, align 8
  %83 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 4
  %86 = call i32 @hl_pci_elbi_write(%struct.hl_device* %81, i64 %85, i32 0)
  %87 = load i32, i32* %12, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %44
  %92 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %93 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %91, %44
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %97, %36, %19
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @hl_pci_iatu_write(%struct.hl_device*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @hl_pci_elbi_write(%struct.hl_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
