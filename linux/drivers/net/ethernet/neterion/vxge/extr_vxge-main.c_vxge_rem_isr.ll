; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_rem_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_rem_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@MSI_X = common dso_local global i64 0, align 8
@INTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxgedev*)* @vxge_rem_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxge_rem_isr(%struct.vxgedev* %0) #0 {
  %2 = alloca %struct.vxgedev*, align 8
  store %struct.vxgedev* %0, %struct.vxgedev** %2, align 8
  %3 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %4 = call i64 @IS_ENABLED(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %8 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MSI_X, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %15 = call i32 @vxge_rem_msix_isr(%struct.vxgedev* %14)
  br label %38

16:                                               ; preds = %6, %1
  %17 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %18 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INTA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %16
  %24 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %25 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @synchronize_irq(i32 %28)
  %30 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %31 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %36 = call i32 @free_irq(i32 %34, %struct.vxgedev* %35)
  br label %37

37:                                               ; preds = %23, %16
  br label %38

38:                                               ; preds = %37, %13
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @vxge_rem_msix_isr(%struct.vxgedev*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @free_irq(i32, %struct.vxgedev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
