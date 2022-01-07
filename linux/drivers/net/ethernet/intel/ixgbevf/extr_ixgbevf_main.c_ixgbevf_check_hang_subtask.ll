; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_check_hang_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_check_hang_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32, i32, %struct.ixgbevf_q_vector**, i32*, i32*, i32, i32, %struct.ixgbe_hw }
%struct.ixgbevf_q_vector = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.ixgbe_hw = type { i32 }

@__IXGBEVF_DOWN = common dso_local global i32 0, align 4
@__IXGBEVF_RESETTING = common dso_local global i32 0, align 4
@NON_Q_VECTORS = common dso_local global i32 0, align 4
@IXGBE_VTEICS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*)* @ixgbevf_check_hang_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_check_hang_subtask(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbevf_q_vector*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %7 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %7, i32 0, i32 8
  store %struct.ixgbe_hw* %8, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* @__IXGBEVF_DOWN, align 4
  %10 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %10, i32 0, i32 7
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @__IXGBEVF_RESETTING, align 4
  %16 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %16, i32 0, i32 7
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %1
  br label %108

21:                                               ; preds = %14
  %22 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @netif_carrier_ok(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %43, %27
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @set_check_for_tx_hang(i32 %41)
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %28

46:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %62, %46
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @set_check_for_tx_hang(i32 %60)
  br label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %47

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %65, %21
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %100, %66
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %70 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @NON_Q_VECTORS, align 4
  %73 = sub nsw i32 %71, %72
  %74 = icmp slt i32 %68, %73
  br i1 %74, label %75, label %103

75:                                               ; preds = %67
  %76 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %76, i32 0, i32 3
  %78 = load %struct.ixgbevf_q_vector**, %struct.ixgbevf_q_vector*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %78, i64 %80
  %82 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %81, align 8
  store %struct.ixgbevf_q_vector* %82, %struct.ixgbevf_q_vector** %6, align 8
  %83 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %6, align 8
  %84 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %75
  %89 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %6, align 8
  %90 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %88, %75
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @BIT(i32 %95)
  %97 = load i32, i32* %4, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %94, %88
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %67

103:                                              ; preds = %67
  %104 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %105 = load i32, i32* @IXGBE_VTEICS, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %20
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @set_check_for_tx_hang(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
