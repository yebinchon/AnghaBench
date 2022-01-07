; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_free_traffic_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_free_traffic_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NONQ_VECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_adapter*)* @iavf_free_traffic_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_free_traffic_irqs(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %6 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @NONQ_VECS, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %44, %11
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @NONQ_VECS, align 4
  %27 = add nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @irq_set_affinity_notifier(i32 %32, i32* null)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @irq_set_affinity_hint(i32 %34, i32* null)
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @free_irq(i32 %36, i32* %42)
  br label %44

44:                                               ; preds = %21
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %17

47:                                               ; preds = %10, %17
  ret void
}

declare dso_local i32 @irq_set_affinity_notifier(i32, i32*) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_irq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
