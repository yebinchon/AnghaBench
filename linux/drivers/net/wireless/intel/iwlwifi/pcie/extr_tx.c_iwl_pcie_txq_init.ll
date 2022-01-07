; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type { i32 }
%struct.iwl_trans = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_txq = type { i32, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"Max tfd queue size must be a power of two, but is %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@iwl_pcie_txq_init.iwl_pcie_cmd_queue_lock_class = internal global %struct.lock_class_key zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_txq_init(%struct.iwl_trans* %0, %struct.iwl_txq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca %struct.iwl_txq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %6, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %13 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %21, %23
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @WARN_ONCE(i32 %24, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %53

31:                                               ; preds = %4
  %32 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @iwl_queue_init(%struct.iwl_txq* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %53

39:                                               ; preds = %31
  %40 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %41 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %40, i32 0, i32 2
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %47 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %46, i32 0, i32 2
  %48 = call i32 @lockdep_set_class(i32* %47, %struct.lock_class_key* @iwl_pcie_txq_init.iwl_pcie_cmd_queue_lock_class)
  br label %49

49:                                               ; preds = %45, %39
  %50 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %51 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %50, i32 0, i32 1
  %52 = call i32 @__skb_queue_head_init(i32* %51)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %37, %28
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @iwl_queue_init(%struct.iwl_txq*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @lockdep_set_class(i32*, %struct.lock_class_key*) #1

declare dso_local i32 @__skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
