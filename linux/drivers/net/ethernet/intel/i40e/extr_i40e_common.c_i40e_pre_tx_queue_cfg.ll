; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_pre_tx_queue_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_pre_tx_queue_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@I40E_GLLAN_TXPRE_QDIS_QINDX_MASK = common dso_local global i32 0, align 4
@I40E_GLLAN_TXPRE_QDIS_QINDX_SHIFT = common dso_local global i32 0, align 4
@I40E_GLLAN_TXPRE_QDIS_CLEAR_QDIS_MASK = common dso_local global i32 0, align 4
@I40E_GLLAN_TXPRE_QDIS_SET_QDIS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_pre_tx_queue_cfg(%struct.i40e_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %11 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %16, 128
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = sdiv i32 %19, 128
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = srem i32 %21, 128
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %18, %3
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @I40E_GLLAN_TXPRE_QDIS(i32 %25)
  %27 = call i32 @rd32(%struct.i40e_hw* %24, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @I40E_GLLAN_TXPRE_QDIS_QINDX_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @I40E_GLLAN_TXPRE_QDIS_QINDX_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = load i32, i32* @I40E_GLLAN_TXPRE_QDIS_CLEAR_QDIS_MASK, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %47

43:                                               ; preds = %23
  %44 = load i32, i32* @I40E_GLLAN_TXPRE_QDIS_SET_QDIS_MASK, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @I40E_GLLAN_TXPRE_QDIS(i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @wr32(%struct.i40e_hw* %48, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_GLLAN_TXPRE_QDIS(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
