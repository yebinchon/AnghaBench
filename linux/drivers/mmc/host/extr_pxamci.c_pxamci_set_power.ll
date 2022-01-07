; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxamci_host = type { %struct.mmc_host*, %struct.TYPE_3__*, i64 }
%struct.mmc_host = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.regulator* }
%struct.regulator = type { i32 }
%struct.TYPE_3__ = type { i32, i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxamci_host*, i8, i32)* @pxamci_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxamci_set_power(%struct.pxamci_host* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pxamci_host*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmc_host*, align 8
  %9 = alloca %struct.regulator*, align 8
  %10 = alloca i32, align 4
  store %struct.pxamci_host* %0, %struct.pxamci_host** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  %11 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %12 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %11, i32 0, i32 0
  %13 = load %struct.mmc_host*, %struct.mmc_host** %12, align 8
  store %struct.mmc_host* %13, %struct.mmc_host** %8, align 8
  %14 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %15 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.regulator*, %struct.regulator** %16, align 8
  store %struct.regulator* %17, %struct.regulator** %9, align 8
  %18 = load %struct.regulator*, %struct.regulator** %9, align 8
  %19 = call i32 @IS_ERR(%struct.regulator* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %23 = load %struct.regulator*, %struct.regulator** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @mmc_regulator_set_ocr(%struct.mmc_host* %22, %struct.regulator* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %74

26:                                               ; preds = %3
  %27 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %28 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 1, %32
  %34 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %35 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %33, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %45 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @gpiod_set_value(i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %31, %26
  %50 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %51 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = icmp ne %struct.TYPE_3__* %52, null
  br i1 %53, label %54, label %73

54:                                               ; preds = %49
  %55 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %56 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32 (i32, i32)*, i32 (i32, i32)** %58, align 8
  %60 = icmp ne i32 (i32, i32)* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %54
  %62 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %63 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32 (i32, i32)*, i32 (i32, i32)** %65, align 8
  %67 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %68 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %67, i32 0, i32 0
  %69 = load %struct.mmc_host*, %struct.mmc_host** %68, align 8
  %70 = call i32 @mmc_dev(%struct.mmc_host* %69)
  %71 = load i32, i32* %7, align 4
  %72 = call i32 %66(i32 %70, i32 %71)
  store i32 %72, i32* %4, align 4
  br label %74

73:                                               ; preds = %54, %49
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %61, %21
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @mmc_regulator_set_ocr(%struct.mmc_host*, %struct.regulator*, i32) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
