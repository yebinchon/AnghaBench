; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mlxsw_reg_trans = type { i32, i32, i32 }
%struct.sk_buff = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*, %struct.mlxsw_reg_trans*)* @mlxsw_emad_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_emad_transmit(%struct.mlxsw_core* %0, %struct.mlxsw_reg_trans* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_core*, align 8
  %5 = alloca %struct.mlxsw_reg_trans*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %4, align 8
  store %struct.mlxsw_reg_trans* %1, %struct.mlxsw_reg_trans** %5, align 8
  %8 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %5, align 8
  %9 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sk_buff* @skb_copy(i32 %10, i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %57

18:                                               ; preds = %2
  %19 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %20 = call i32 @priv_to_devlink(%struct.mlxsw_core* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %25 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %23, %28
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %34 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %32, %37
  %39 = call i32 @trace_devlink_hwmsg(i32 %20, i32 0, i32 0, i64 %29, i64 %38)
  %40 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %5, align 8
  %41 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %40, i32 0, i32 1
  %42 = call i32 @atomic_set(i32* %41, i32 1)
  %43 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %5, align 8
  %46 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %45, i32 0, i32 0
  %47 = call i32 @mlxsw_core_skb_transmit(%struct.mlxsw_core* %43, %struct.sk_buff* %44, i32* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %18
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call i32 @dev_kfree_skb(%struct.sk_buff* %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %57

54:                                               ; preds = %18
  %55 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %5, align 8
  %56 = call i32 @mlxsw_emad_trans_timeout_schedule(%struct.mlxsw_reg_trans* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %50, %15
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.sk_buff* @skb_copy(i32, i32) #1

declare dso_local i32 @trace_devlink_hwmsg(i32, i32, i32, i64, i64) #1

declare dso_local i32 @priv_to_devlink(%struct.mlxsw_core*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mlxsw_core_skb_transmit(%struct.mlxsw_core*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @mlxsw_emad_trans_timeout_schedule(%struct.mlxsw_reg_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
