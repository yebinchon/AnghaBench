; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, %struct.TYPE_2__*, %struct.iavf_hw }
%struct.TYPE_2__ = type { i32 }
%struct.iavf_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_adapter*)* @iavf_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_irq_disable(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iavf_hw*, align 8
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %5 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %5, i32 0, i32 2
  store %struct.iavf_hw* %6, %struct.iavf_hw** %4, align 8
  %7 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %40

12:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %13

13:                                               ; preds = %34, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load %struct.iavf_hw*, %struct.iavf_hw** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sub nsw i32 %21, 1
  %23 = call i32 @IAVF_VFINT_DYN_CTLN1(i32 %22)
  %24 = call i32 @wr32(%struct.iavf_hw* %20, i32 %23, i32 0)
  %25 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @synchronize_irq(i32 %32)
  br label %34

34:                                               ; preds = %19
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %13

37:                                               ; preds = %13
  %38 = load %struct.iavf_hw*, %struct.iavf_hw** %4, align 8
  %39 = call i32 @iavf_flush(%struct.iavf_hw* %38)
  br label %40

40:                                               ; preds = %37, %11
  ret void
}

declare dso_local i32 @wr32(%struct.iavf_hw*, i32, i32) #1

declare dso_local i32 @IAVF_VFINT_DYN_CTLN1(i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @iavf_flush(%struct.iavf_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
