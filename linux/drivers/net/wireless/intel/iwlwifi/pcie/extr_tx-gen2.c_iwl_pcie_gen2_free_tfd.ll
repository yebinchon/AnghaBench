; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_free_tfd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_free_tfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_txq = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_txq*)* @iwl_pcie_gen2_free_tfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_gen2_free_tfd(%struct.iwl_trans* %0, %struct.iwl_txq* %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_txq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %4, align 8
  %7 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %8 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @iwl_pcie_get_cmd_index(%struct.iwl_txq* %7, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %12, i32 0, i32 1
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %16 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %17 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %24 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @iwl_pcie_get_tfd(%struct.iwl_trans* %23, %struct.iwl_txq* %24, i32 %25)
  %27 = call i32 @iwl_pcie_gen2_tfd_unmap(%struct.iwl_trans* %15, i32* %22, i32 %26)
  %28 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %29 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %57

32:                                               ; preds = %2
  %33 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %34 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.sk_buff*, %struct.sk_buff** %39, align 8
  store %struct.sk_buff* %40, %struct.sk_buff** %6, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %32
  %44 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %45 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call i32 @iwl_op_mode_free_skb(i32 %46, %struct.sk_buff* %47)
  %49 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %50 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %55, align 8
  br label %56

56:                                               ; preds = %43, %32
  br label %57

57:                                               ; preds = %56, %2
  ret void
}

declare dso_local i32 @iwl_pcie_get_cmd_index(%struct.iwl_txq*, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_pcie_gen2_tfd_unmap(%struct.iwl_trans*, i32*, i32) #1

declare dso_local i32 @iwl_pcie_get_tfd(%struct.iwl_trans*, %struct.iwl_txq*, i32) #1

declare dso_local i32 @iwl_op_mode_free_skb(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
