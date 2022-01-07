; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_pci.c_hl_pci_init_iatu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_pci.c_hl_pci_init_iatu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.TYPE_2__*, %struct.asic_fixed_properties }
%struct.TYPE_2__ = type { i64 (%struct.hl_device*, i64)* }
%struct.asic_fixed_properties = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_pci_init_iatu(%struct.hl_device* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hl_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.asic_fixed_properties*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %16 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %15, i32 0, i32 1
  store %struct.asic_fixed_properties* %16, %struct.asic_fixed_properties** %12, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @lower_32_bits(i64 %18)
  %20 = call i32 @hl_pci_iatu_write(%struct.hl_device* %17, i32 276, i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @upper_32_bits(i64 %22)
  %24 = call i32 @hl_pci_iatu_write(%struct.hl_device* %21, i32 280, i32 %23)
  %25 = load i32, i32* %14, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %14, align 4
  %27 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %28 = call i32 @hl_pci_iatu_write(%struct.hl_device* %27, i32 256, i32 0)
  %29 = load i32, i32* %14, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %14, align 4
  %31 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %32 = call i32 @hl_pci_iatu_write(%struct.hl_device* %31, i32 260, i32 -1073217536)
  %33 = load i32, i32* %14, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %14, align 4
  %35 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %36 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64 (%struct.hl_device*, i64)*, i64 (%struct.hl_device*, i64)** %38, align 8
  %40 = icmp ne i64 (%struct.hl_device*, i64)* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %5
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %124

44:                                               ; preds = %5
  %45 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %46 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64 (%struct.hl_device*, i64)*, i64 (%struct.hl_device*, i64)** %48, align 8
  %50 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i64 %49(%struct.hl_device* %50, i64 %51)
  %53 = load i64, i64* @U64_MAX, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %124

58:                                               ; preds = %44
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = add nsw i64 %59, %60
  %62 = sub nsw i64 %61, 1
  store i64 %62, i64* %13, align 8
  %63 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @lower_32_bits(i64 %64)
  %66 = call i32 @hl_pci_iatu_write(%struct.hl_device* %63, i32 8, i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %14, align 4
  %69 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @upper_32_bits(i64 %70)
  %72 = call i32 @hl_pci_iatu_write(%struct.hl_device* %69, i32 12, i32 %71)
  %73 = load i32, i32* %14, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %14, align 4
  %75 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %76 = load i64, i64* %13, align 8
  %77 = call i32 @lower_32_bits(i64 %76)
  %78 = call i32 @hl_pci_iatu_write(%struct.hl_device* %75, i32 16, i32 %77)
  %79 = load i32, i32* %14, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %14, align 4
  %81 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %82 = call i32 @hl_pci_iatu_write(%struct.hl_device* %81, i32 20, i32 0)
  %83 = load i32, i32* %14, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %14, align 4
  %85 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %86 = call i32 @hl_pci_iatu_write(%struct.hl_device* %85, i32 24, i32 0)
  %87 = load i32, i32* %14, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %14, align 4
  %89 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %90 = load i64, i64* %13, align 8
  %91 = call i32 @upper_32_bits(i64 %90)
  %92 = call i32 @hl_pci_iatu_write(%struct.hl_device* %89, i32 32, i32 %91)
  %93 = load i32, i32* %14, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %14, align 4
  %95 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %96 = call i32 @hl_pci_iatu_write(%struct.hl_device* %95, i32 0, i32 8192)
  %97 = load i32, i32* %14, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %14, align 4
  %99 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %100 = call i32 @hl_pci_iatu_write(%struct.hl_device* %99, i32 4, i32 -2147483648)
  %101 = load i32, i32* %14, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %14, align 4
  %103 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %104 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %12, align 8
  %105 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @hl_pci_elbi_write(%struct.hl_device* %103, i64 %106, i32 0)
  %108 = load i32, i32* %14, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %14, align 4
  %110 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %111 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %12, align 8
  %112 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 4
  %115 = call i32 @hl_pci_elbi_write(%struct.hl_device* %110, i64 %114, i32 0)
  %116 = load i32, i32* %14, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %58
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  br label %124

123:                                              ; preds = %58
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %123, %120, %55, %41
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32 @hl_pci_iatu_write(%struct.hl_device*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @hl_pci_elbi_write(%struct.hl_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
