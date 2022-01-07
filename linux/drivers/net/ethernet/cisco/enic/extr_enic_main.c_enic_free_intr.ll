; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_free_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_free_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.TYPE_5__*, i32, %struct.enic* }
%struct.TYPE_6__ = type { %struct.net_device*, i32 }
%struct.net_device = type { %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.TYPE_5__*, i32, %struct.net_device* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enic*)* @enic_free_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_free_intr(%struct.enic* %0) #0 {
  %2 = alloca %struct.enic*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %2, align 8
  %5 = load %struct.enic*, %struct.enic** %2, align 8
  %6 = getelementptr inbounds %struct.enic, %struct.enic* %5, i32 0, i32 4
  %7 = load %struct.enic*, %struct.enic** %6, align 8
  %8 = bitcast %struct.enic* %7 to %struct.net_device*
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.enic*, %struct.enic** %2, align 8
  %10 = bitcast %struct.enic* %9 to %struct.net_device*
  %11 = call i32 @enic_free_rx_cpu_rmap(%struct.net_device* %10)
  %12 = load %struct.enic*, %struct.enic** %2, align 8
  %13 = getelementptr inbounds %struct.enic, %struct.enic* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @vnic_dev_get_intr_mode(i32 %14)
  switch i32 %15, label %74 [
    i32 130, label %16
    i32 129, label %24
    i32 128, label %33
  ]

16:                                               ; preds = %1
  %17 = load %struct.enic*, %struct.enic** %2, align 8
  %18 = getelementptr inbounds %struct.enic, %struct.enic* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @free_irq(i32 %21, %struct.net_device* %22)
  br label %75

24:                                               ; preds = %1
  %25 = load %struct.enic*, %struct.enic** %2, align 8
  %26 = getelementptr inbounds %struct.enic, %struct.enic* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.enic*, %struct.enic** %2, align 8
  %31 = bitcast %struct.enic* %30 to %struct.net_device*
  %32 = call i32 @free_irq(i32 %29, %struct.net_device* %31)
  br label %75

33:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %70, %33
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.enic*, %struct.enic** %2, align 8
  %37 = getelementptr inbounds %struct.enic, %struct.enic* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %38)
  %40 = icmp ult i32 %35, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %34
  %42 = load %struct.enic*, %struct.enic** %2, align 8
  %43 = getelementptr inbounds %struct.enic, %struct.enic* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %41
  %52 = load %struct.enic*, %struct.enic** %2, align 8
  %53 = getelementptr inbounds %struct.enic, %struct.enic* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.enic*, %struct.enic** %2, align 8
  %61 = getelementptr inbounds %struct.enic, %struct.enic* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.net_device*, %struct.net_device** %66, align 8
  %68 = call i32 @free_irq(i32 %59, %struct.net_device* %67)
  br label %69

69:                                               ; preds = %51, %41
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %34

73:                                               ; preds = %34
  br label %75

74:                                               ; preds = %1
  br label %75

75:                                               ; preds = %74, %73, %24, %16
  ret void
}

declare dso_local i32 @enic_free_rx_cpu_rmap(%struct.net_device*) #1

declare dso_local i32 @vnic_dev_get_intr_mode(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
