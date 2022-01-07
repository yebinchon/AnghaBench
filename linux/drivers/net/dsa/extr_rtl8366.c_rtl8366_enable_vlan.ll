; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366.c_rtl8366_enable_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366.c_rtl8366_enable_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_smi = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366_enable_vlan(%struct.realtek_smi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.realtek_smi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.realtek_smi* %0, %struct.realtek_smi** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %8 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.realtek_smi*, i32)**
  %12 = load i32 (%struct.realtek_smi*, i32)*, i32 (%struct.realtek_smi*, i32)** %11, align 8
  %13 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 %12(%struct.realtek_smi* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %39

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %23 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %20
  %27 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %28 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %30 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = bitcast {}** %32 to i32 (%struct.realtek_smi*, i32)**
  %34 = load i32 (%struct.realtek_smi*, i32)*, i32 (%struct.realtek_smi*, i32)** %33, align 8
  %35 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %36 = call i32 %34(%struct.realtek_smi* %35, i32 0)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %26, %20
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %18
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
