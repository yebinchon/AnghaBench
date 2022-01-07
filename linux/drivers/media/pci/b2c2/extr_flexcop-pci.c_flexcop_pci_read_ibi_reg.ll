; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/b2c2/extr_flexcop-pci.c_flexcop_pci_read_ibi_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/b2c2/extr_flexcop-pci.c_flexcop_pci_read_ibi_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { %struct.flexcop_pci* }
%struct.flexcop_pci = type { i64 }
%struct.TYPE_3__ = type { i64 }

@lastrreg = common dso_local global i64 0, align 8
@lastrval = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"new rd: %3x: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.flexcop_device*, i64)* @flexcop_pci_read_ibi_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @flexcop_pci_read_ibi_reg(%struct.flexcop_device* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca %struct.flexcop_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.flexcop_pci*, align 8
  store %struct.flexcop_device* %0, %struct.flexcop_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %8 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %7, i32 0, i32 0
  %9 = load %struct.flexcop_pci*, %struct.flexcop_pci** %8, align 8
  store %struct.flexcop_pci* %9, %struct.flexcop_pci** %6, align 8
  %10 = load %struct.flexcop_pci*, %struct.flexcop_pci** %6, align 8
  %11 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @readl(i64 %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = load i64, i64* @lastrreg, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* @lastrval, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %21, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %20, %2
  %26 = load i64, i64* %5, align 8
  store i64 %26, i64* @lastrreg, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* @lastrval, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @deb_reg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %31)
  br label %33

33:                                               ; preds = %25, %20
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  ret i64 %35
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @deb_reg(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
