; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_init_ocr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_init_ocr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxamci_host = type { %struct.TYPE_4__*, %struct.mmc_host* }
%struct.TYPE_4__ = type { i32 }
%struct.mmc_host = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MMC_VDD_32_33 = common dso_local global i32 0, align 4
@MMC_VDD_33_34 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxamci_host*)* @pxamci_init_ocr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxamci_init_ocr(%struct.pxamci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pxamci_host*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  store %struct.pxamci_host* %0, %struct.pxamci_host** %3, align 8
  %6 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %7 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %6, i32 0, i32 1
  %8 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  store %struct.mmc_host* %8, %struct.mmc_host** %4, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %10 = call i32 @mmc_regulator_get_supply(%struct.mmc_host* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @IS_ERR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %15
  %23 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %24 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %29 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  br label %37

33:                                               ; preds = %22
  %34 = load i32, i32* @MMC_VDD_32_33, align 4
  %35 = load i32, i32* @MMC_VDD_33_34, align 4
  %36 = or i32 %34, %35
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i32 [ %32, %27 ], [ %36, %33 ]
  %39 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %40 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %15
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %13
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @mmc_regulator_get_supply(%struct.mmc_host*) #1

declare dso_local i64 @IS_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
