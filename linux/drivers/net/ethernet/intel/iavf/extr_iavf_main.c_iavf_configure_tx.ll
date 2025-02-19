; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_configure_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_configure_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, %struct.TYPE_2__*, %struct.iavf_hw }
%struct.TYPE_2__ = type { i64 }
%struct.iavf_hw = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_adapter*)* @iavf_configure_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_configure_tx(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca %struct.iavf_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %5 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %5, i32 0, i32 2
  store %struct.iavf_hw* %6, %struct.iavf_hw** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %27, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %7
  %14 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %15 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @IAVF_QTX_TAIL1(i32 %17)
  %19 = add nsw i64 %16, %18
  %20 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %19, i64* %26, align 8
  br label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %7

30:                                               ; preds = %7
  ret void
}

declare dso_local i64 @IAVF_QTX_TAIL1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
