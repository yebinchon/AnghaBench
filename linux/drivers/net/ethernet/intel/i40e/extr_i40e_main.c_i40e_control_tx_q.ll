; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_control_tx_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_control_tx_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@I40E_QTX_ENA_WAIT_COUNT = common dso_local global i32 0, align 4
@I40E_QTX_ENA_QENA_REQ_SHIFT = common dso_local global i32 0, align 4
@I40E_QTX_ENA_QENA_STAT_SHIFT = common dso_local global i32 0, align 4
@I40E_QTX_ENA_QENA_STAT_MASK = common dso_local global i32 0, align 4
@I40E_QTX_ENA_QENA_REQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*, i32, i32)* @i40e_control_tx_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_control_tx_q(%struct.i40e_pf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %11 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %10, i32 0, i32 0
  store %struct.i40e_hw* %11, %struct.i40e_hw** %7, align 8
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %13 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %12, i32 0, i32 0
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @i40e_pre_tx_queue_cfg(%struct.i40e_hw* %13, i32 %14, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = call i32 @usleep_range(i32 10, i32 20)
  br label %21

21:                                               ; preds = %19, %3
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %43, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @I40E_QTX_ENA_WAIT_COUNT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @I40E_QTX_ENA(i32 %28)
  %30 = call i32 @rd32(%struct.i40e_hw* %27, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @I40E_QTX_ENA_QENA_REQ_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = and i32 %33, 1
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @I40E_QTX_ENA_QENA_STAT_SHIFT, align 4
  %37 = ashr i32 %35, %36
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %46

41:                                               ; preds = %26
  %42 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %22

46:                                               ; preds = %40, %22
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @I40E_QTX_ENA_QENA_STAT_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = icmp eq i32 %47, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %79

57:                                               ; preds = %46
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @I40E_QTX_HEAD(i32 %62)
  %64 = call i32 @wr32(%struct.i40e_hw* %61, i32 %63, i32 0)
  %65 = load i32, i32* @I40E_QTX_ENA_QENA_REQ_MASK, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %73

68:                                               ; preds = %57
  %69 = load i32, i32* @I40E_QTX_ENA_QENA_REQ_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %68, %60
  %74 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @I40E_QTX_ENA(i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @wr32(%struct.i40e_hw* %74, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %56
  ret void
}

declare dso_local i32 @i40e_pre_tx_queue_cfg(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_QTX_ENA(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_QTX_HEAD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
