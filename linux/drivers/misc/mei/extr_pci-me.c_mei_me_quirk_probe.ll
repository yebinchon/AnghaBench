; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_pci-me.c_mei_me_quirk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_pci-me.c_mei_me_quirk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mei_cfg = type { i64 (%struct.pci_dev*)* }

@.str = private unnamed_addr constant [40 x i8] c"Device doesn't have valid ME Interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.mei_cfg*)* @mei_me_quirk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_me_quirk_probe(%struct.pci_dev* %0, %struct.mei_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.mei_cfg*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.mei_cfg* %1, %struct.mei_cfg** %5, align 8
  %6 = load %struct.mei_cfg*, %struct.mei_cfg** %5, align 8
  %7 = getelementptr inbounds %struct.mei_cfg, %struct.mei_cfg* %6, i32 0, i32 0
  %8 = load i64 (%struct.pci_dev*)*, i64 (%struct.pci_dev*)** %7, align 8
  %9 = icmp ne i64 (%struct.pci_dev*)* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.mei_cfg*, %struct.mei_cfg** %5, align 8
  %12 = getelementptr inbounds %struct.mei_cfg, %struct.mei_cfg* %11, i32 0, i32 0
  %13 = load i64 (%struct.pci_dev*)*, i64 (%struct.pci_dev*)** %12, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i64 %13(%struct.pci_dev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = call i32 @dev_info(i32* %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %22

21:                                               ; preds = %10, %2
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
