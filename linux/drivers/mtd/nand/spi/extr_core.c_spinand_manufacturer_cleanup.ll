; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_manufacturer_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_manufacturer_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinand_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spinand_device*)* @spinand_manufacturer_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spinand_manufacturer_cleanup(%struct.spinand_device* %0) #0 {
  %2 = alloca %struct.spinand_device*, align 8
  store %struct.spinand_device* %0, %struct.spinand_device** %2, align 8
  %3 = load %struct.spinand_device*, %struct.spinand_device** %2, align 8
  %4 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to void (%struct.spinand_device*)**
  %10 = load void (%struct.spinand_device*)*, void (%struct.spinand_device*)** %9, align 8
  %11 = icmp ne void (%struct.spinand_device*)* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.spinand_device*, %struct.spinand_device** %2, align 8
  %14 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to void (%struct.spinand_device*)**
  %20 = load void (%struct.spinand_device*)*, void (%struct.spinand_device*)** %19, align 8
  %21 = load %struct.spinand_device*, %struct.spinand_device** %2, align 8
  call void %20(%struct.spinand_device* %21)
  br label %22

22:                                               ; preds = %12, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
