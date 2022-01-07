; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h_iwl_queue_used.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h_iwl_queue_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_txq = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_txq*, i32)* @iwl_queue_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_queue_used(%struct.iwl_txq* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_txq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_txq* %0, %struct.iwl_txq** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.iwl_txq*, %struct.iwl_txq** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @iwl_pcie_get_cmd_index(%struct.iwl_txq* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.iwl_txq*, %struct.iwl_txq** %3, align 8
  %12 = load %struct.iwl_txq*, %struct.iwl_txq** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @iwl_pcie_get_cmd_index(%struct.iwl_txq* %11, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.iwl_txq*, %struct.iwl_txq** %3, align 8
  %17 = load %struct.iwl_txq*, %struct.iwl_txq** %3, align 8
  %18 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @iwl_pcie_get_cmd_index(%struct.iwl_txq* %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  br label %47

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp sge i32 %40, %41
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i1 [ false, %35 ], [ %42, %39 ]
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %43, %32
  %48 = phi i32 [ %34, %32 ], [ %46, %43 ]
  ret i32 %48
}

declare dso_local i32 @iwl_pcie_get_cmd_index(%struct.iwl_txq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
