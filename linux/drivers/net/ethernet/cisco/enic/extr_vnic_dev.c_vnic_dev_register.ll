; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { %struct.pci_dev*, i8* }
%struct.pci_dev = type { i32 }
%struct.vnic_dev_bar = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vnic_dev* @vnic_dev_register(%struct.vnic_dev* %0, i8* %1, %struct.pci_dev* %2, %struct.vnic_dev_bar* %3, i32 %4) #0 {
  %6 = alloca %struct.vnic_dev*, align 8
  %7 = alloca %struct.vnic_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.vnic_dev_bar*, align 8
  %11 = alloca i32, align 4
  store %struct.vnic_dev* %0, %struct.vnic_dev** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.pci_dev* %2, %struct.pci_dev** %9, align 8
  store %struct.vnic_dev_bar* %3, %struct.vnic_dev_bar** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %13 = icmp ne %struct.vnic_dev* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.vnic_dev* @kzalloc(i32 16, i32 %15)
  store %struct.vnic_dev* %16, %struct.vnic_dev** %7, align 8
  %17 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %18 = icmp ne %struct.vnic_dev* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store %struct.vnic_dev* null, %struct.vnic_dev** %6, align 8
  br label %39

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %5
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %24 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %26 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %27 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %26, i32 0, i32 0
  store %struct.pci_dev* %25, %struct.pci_dev** %27, align 8
  %28 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %29 = load %struct.vnic_dev_bar*, %struct.vnic_dev_bar** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @vnic_dev_discover_res(%struct.vnic_dev* %28, %struct.vnic_dev_bar* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %36

34:                                               ; preds = %21
  %35 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  store %struct.vnic_dev* %35, %struct.vnic_dev** %6, align 8
  br label %39

36:                                               ; preds = %33
  %37 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %38 = call i32 @vnic_dev_unregister(%struct.vnic_dev* %37)
  store %struct.vnic_dev* null, %struct.vnic_dev** %6, align 8
  br label %39

39:                                               ; preds = %36, %34, %19
  %40 = load %struct.vnic_dev*, %struct.vnic_dev** %6, align 8
  ret %struct.vnic_dev* %40
}

declare dso_local %struct.vnic_dev* @kzalloc(i32, i32) #1

declare dso_local i64 @vnic_dev_discover_res(%struct.vnic_dev*, %struct.vnic_dev_bar*, i32) #1

declare dso_local i32 @vnic_dev_unregister(%struct.vnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
