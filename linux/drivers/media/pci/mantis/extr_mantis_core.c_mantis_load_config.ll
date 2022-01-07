; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_core.c_mantis_load_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_core.c_mantis_load_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { i32, i32* }

@vp1033_mantis_config = common dso_local global i32 0, align 4
@vp1034_mantis_config = common dso_local global i32 0, align 4
@vp1041_mantis_config = common dso_local global i32 0, align 4
@vp2033_mantis_config = common dso_local global i32 0, align 4
@vp2040_mantis_config = common dso_local global i32 0, align 4
@vp3030_mantis_config = common dso_local global i32 0, align 4
@unknown_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mantis_pci*)* @mantis_load_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mantis_load_config(%struct.mantis_pci* %0) #0 {
  %2 = alloca %struct.mantis_pci*, align 8
  store %struct.mantis_pci* %0, %struct.mantis_pci** %2, align 8
  %3 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %4 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %24 [
    i32 135, label %6
    i32 134, label %9
    i32 133, label %12
    i32 128, label %12
    i32 132, label %15
    i32 131, label %18
    i32 136, label %18
    i32 129, label %18
    i32 130, label %21
  ]

6:                                                ; preds = %1
  %7 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %8 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %7, i32 0, i32 1
  store i32* @vp1033_mantis_config, i32** %8, align 8
  br label %27

9:                                                ; preds = %1
  %10 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %11 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %10, i32 0, i32 1
  store i32* @vp1034_mantis_config, i32** %11, align 8
  br label %27

12:                                               ; preds = %1, %1
  %13 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %14 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %13, i32 0, i32 1
  store i32* @vp1041_mantis_config, i32** %14, align 8
  br label %27

15:                                               ; preds = %1
  %16 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %17 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %16, i32 0, i32 1
  store i32* @vp2033_mantis_config, i32** %17, align 8
  br label %27

18:                                               ; preds = %1, %1, %1
  %19 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %20 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %19, i32 0, i32 1
  store i32* @vp2040_mantis_config, i32** %20, align 8
  br label %27

21:                                               ; preds = %1
  %22 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %23 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %22, i32 0, i32 1
  store i32* @vp3030_mantis_config, i32** %23, align 8
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %26 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %25, i32 0, i32 1
  store i32* @unknown_device, i32** %26, align 8
  br label %27

27:                                               ; preds = %24, %21, %18, %15, %12, %9, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
