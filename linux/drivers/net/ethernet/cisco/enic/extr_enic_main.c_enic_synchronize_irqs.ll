; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_synchronize_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_synchronize_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enic*)* @enic_synchronize_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_synchronize_irqs(%struct.enic* %0) #0 {
  %2 = alloca %struct.enic*, align 8
  %3 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %2, align 8
  %4 = load %struct.enic*, %struct.enic** %2, align 8
  %5 = getelementptr inbounds %struct.enic, %struct.enic* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @vnic_dev_get_intr_mode(i32 %6)
  switch i32 %7, label %36 [
    i32 130, label %8
    i32 129, label %8
    i32 128, label %15
  ]

8:                                                ; preds = %1, %1
  %9 = load %struct.enic*, %struct.enic** %2, align 8
  %10 = getelementptr inbounds %struct.enic, %struct.enic* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @synchronize_irq(i32 %13)
  br label %37

15:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %32, %15
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.enic*, %struct.enic** %2, align 8
  %19 = getelementptr inbounds %struct.enic, %struct.enic* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.enic*, %struct.enic** %2, align 8
  %24 = getelementptr inbounds %struct.enic, %struct.enic* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @synchronize_irq(i32 %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %3, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %16

35:                                               ; preds = %16
  br label %37

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %36, %35, %8
  ret void
}

declare dso_local i32 @vnic_dev_get_intr_mode(i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
