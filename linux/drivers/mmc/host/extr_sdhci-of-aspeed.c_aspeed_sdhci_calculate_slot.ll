; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-aspeed.c_aspeed_sdhci_calculate_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-aspeed.c_aspeed_sdhci_calculate_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_sdhci = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.resource = type { i64 }

@IORESOURCE_MEM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_sdhci*, %struct.resource*)* @aspeed_sdhci_calculate_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_sdhci_calculate_slot(%struct.aspeed_sdhci* %0, %struct.resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aspeed_sdhci*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.aspeed_sdhci* %0, %struct.aspeed_sdhci** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  %7 = load %struct.resource*, %struct.resource** %5, align 8
  %8 = icmp ne %struct.resource* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.resource*, %struct.resource** %5, align 8
  %11 = call i64 @resource_type(%struct.resource* %10)
  %12 = load i64, i64* @IORESOURCE_MEM, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %9, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %55

17:                                               ; preds = %9
  %18 = load %struct.resource*, %struct.resource** %5, align 8
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.aspeed_sdhci*, %struct.aspeed_sdhci** %4, align 8
  %22 = getelementptr inbounds %struct.aspeed_sdhci, %struct.aspeed_sdhci* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %20, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %55

32:                                               ; preds = %17
  %33 = load %struct.resource*, %struct.resource** %5, align 8
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.aspeed_sdhci*, %struct.aspeed_sdhci** %4, align 8
  %37 = getelementptr inbounds %struct.aspeed_sdhci, %struct.aspeed_sdhci* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %35, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 255
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %32
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %55

51:                                               ; preds = %32
  %52 = load i32, i32* %6, align 4
  %53 = sdiv i32 %52, 256
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %48, %29, %14
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @resource_type(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
