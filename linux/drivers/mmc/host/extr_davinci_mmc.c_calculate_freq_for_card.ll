; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_calculate_freq_for_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_calculate_freq_for_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_davinci_host = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_davinci_host*, i32)* @calculate_freq_for_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_freq_for_card(%struct.mmc_davinci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_davinci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_davinci_host* %0, %struct.mmc_davinci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = mul i32 2, %15
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = mul i32 2, %20
  %22 = udiv i32 %19, %21
  %23 = sub i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %25

24:                                               ; preds = %13, %2
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %27, 1
  %29 = mul i32 2, %28
  %30 = udiv i32 %26, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %34, %25
  %38 = load i32, i32* %4, align 4
  %39 = icmp ule i32 %38, 400000
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, 1
  %44 = mul i32 2, %43
  %45 = udiv i32 %41, %44
  %46 = udiv i32 %45, 1000
  %47 = udiv i32 1000000, %46
  %48 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %49 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %60

50:                                               ; preds = %37
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, 1
  %54 = mul i32 2, %53
  %55 = udiv i32 %51, %54
  %56 = udiv i32 %55, 1000000
  %57 = udiv i32 1000000, %56
  %58 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %59 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %50, %40
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
