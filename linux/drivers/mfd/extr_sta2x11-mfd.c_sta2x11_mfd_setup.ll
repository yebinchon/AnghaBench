; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_sta2x11-mfd.c_sta2x11_mfd_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_sta2x11-mfd.c_sta2x11_mfd_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.sta2x11_mfd_setup_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.pci_dev** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.sta2x11_mfd_setup_data*)* @sta2x11_mfd_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sta2x11_mfd_setup(%struct.pci_dev* %0, %struct.sta2x11_mfd_setup_data* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.sta2x11_mfd_setup_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.sta2x11_mfd_setup_data* %1, %struct.sta2x11_mfd_setup_data** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %55, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.sta2x11_mfd_setup_data*, %struct.sta2x11_mfd_setup_data** %4, align 8
  %10 = getelementptr inbounds %struct.sta2x11_mfd_setup_data, %struct.sta2x11_mfd_setup_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %51, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.sta2x11_mfd_setup_data*, %struct.sta2x11_mfd_setup_data** %4, align 8
  %18 = getelementptr inbounds %struct.sta2x11_mfd_setup_data, %struct.sta2x11_mfd_setup_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %16, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %15
  %27 = load %struct.sta2x11_mfd_setup_data*, %struct.sta2x11_mfd_setup_data** %4, align 8
  %28 = getelementptr inbounds %struct.sta2x11_mfd_setup_data, %struct.sta2x11_mfd_setup_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 8, i32* %38, align 8
  %39 = load %struct.sta2x11_mfd_setup_data*, %struct.sta2x11_mfd_setup_data** %4, align 8
  %40 = getelementptr inbounds %struct.sta2x11_mfd_setup_data, %struct.sta2x11_mfd_setup_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store %struct.pci_dev** %3, %struct.pci_dev*** %50, align 8
  br label %51

51:                                               ; preds = %26
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %15

54:                                               ; preds = %15
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %7

58:                                               ; preds = %7
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
