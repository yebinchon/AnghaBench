; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_irq_enable_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_irq_enable_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, %struct.iavf_hw }
%struct.iavf_hw = type { i32 }

@IAVF_VFINT_DYN_CTLN1_INTENA_MASK = common dso_local global i32 0, align 4
@IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_irq_enable_queues(%struct.iavf_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.iavf_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iavf_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %7, i32 0, i32 1
  store %struct.iavf_hw* %8, %struct.iavf_hw** %5, align 8
  store i32 1, i32* %6, align 4
  br label %9

9:                                                ; preds = %32, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 1
  %19 = call i32 @BIT(i32 %18)
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load %struct.iavf_hw*, %struct.iavf_hw** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 1
  %26 = call i32 @IAVF_VFINT_DYN_CTLN1(i32 %25)
  %27 = load i32, i32* @IAVF_VFINT_DYN_CTLN1_INTENA_MASK, align 4
  %28 = load i32, i32* @IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @wr32(%struct.iavf_hw* %23, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %22, %15
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %9

35:                                               ; preds = %9
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wr32(%struct.iavf_hw*, i32, i32) #1

declare dso_local i32 @IAVF_VFINT_DYN_CTLN1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
