; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_irq_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_irq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_irq = type { void (i8*)*, i8* }
%struct.ddb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ddb_irq* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ddb_irq* @ddb_irq_set(%struct.ddb* %0, i64 %1, i64 %2, void (i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.ddb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca void (i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ddb_irq*, align 8
  store %struct.ddb* %0, %struct.ddb** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store void (i8*)* %3, void (i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load %struct.ddb*, %struct.ddb** %6, align 8
  %13 = getelementptr inbounds %struct.ddb, %struct.ddb* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ddb_irq*, %struct.ddb_irq** %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.ddb_irq, %struct.ddb_irq* %18, i64 %19
  store %struct.ddb_irq* %20, %struct.ddb_irq** %11, align 8
  %21 = load void (i8*)*, void (i8*)** %9, align 8
  %22 = load %struct.ddb_irq*, %struct.ddb_irq** %11, align 8
  %23 = getelementptr inbounds %struct.ddb_irq, %struct.ddb_irq* %22, i32 0, i32 0
  store void (i8*)* %21, void (i8*)** %23, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load %struct.ddb_irq*, %struct.ddb_irq** %11, align 8
  %26 = getelementptr inbounds %struct.ddb_irq, %struct.ddb_irq* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.ddb_irq*, %struct.ddb_irq** %11, align 8
  ret %struct.ddb_irq* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
