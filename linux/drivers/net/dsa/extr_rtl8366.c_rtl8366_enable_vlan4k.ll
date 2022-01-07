; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366.c_rtl8366_enable_vlan4k.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366.c_rtl8366_enable_vlan4k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_smi = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366_enable_vlan4k(%struct.realtek_smi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.realtek_smi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.realtek_smi* %0, %struct.realtek_smi** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %11 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.realtek_smi*, i32)**
  %15 = load i32 (%struct.realtek_smi*, i32)*, i32 (%struct.realtek_smi*, i32)** %14, align 8
  %16 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %17 = call i32 %15(%struct.realtek_smi* %16, i32 1)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %9
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %43

22:                                               ; preds = %9
  %23 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %24 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %27 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = bitcast {}** %29 to i32 (%struct.realtek_smi*, i32)**
  %31 = load i32 (%struct.realtek_smi*, i32)*, i32 (%struct.realtek_smi*, i32)** %30, align 8
  %32 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 %31(%struct.realtek_smi* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %25
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %42 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %37, %20
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
