; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_queue_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_queue_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_txq = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_queue_space(%struct.iwl_trans* %0, %struct.iwl_txq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.iwl_txq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %5, align 8
  %8 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %9 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ult i32 %10, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %21 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  br label %32

23:                                               ; preds = %2
  %24 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %25 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %23, %19
  %33 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %34 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %37 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  %40 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %41 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub i32 %46, 1
  %48 = and i32 %39, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ugt i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @WARN_ON(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %60

56:                                               ; preds = %32
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub i32 %57, %58
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %55
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
