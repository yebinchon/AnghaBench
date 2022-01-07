; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_free_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_free_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i64, i64, i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_dev*)* @qed_free_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_free_pci(%struct.qed_dev* %0) #0 {
  %2 = alloca %struct.qed_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %2, align 8
  %4 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %5 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %4, i32 0, i32 3
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %8 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %13 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %18 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @iounmap(i64 %19)
  br label %21

21:                                               ; preds = %16, %11, %1
  %22 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %23 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %28 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @iounmap(i64 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = call i32 @atomic_read(i32* %33)
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = call i32 @pci_release_regions(%struct.pci_dev* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = call i32 @pci_disable_device(%struct.pci_dev* %40)
  ret void
}

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
