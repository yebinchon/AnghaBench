; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_check_hang_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_check_hang_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, i32, %struct.ixgbe_q_vector**, i32*, i32*, i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_q_vector = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.ixgbe_hw = type { i32 }

@__IXGBE_DOWN = common dso_local global i32 0, align 4
@__IXGBE_REMOVING = common dso_local global i32 0, align 4
@__IXGBE_RESETTING = common dso_local global i32 0, align 4
@IXGBE_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@IXGBE_EICS = common dso_local global i32 0, align 4
@IXGBE_EICS_TCP_TIMER = common dso_local global i32 0, align 4
@IXGBE_EICS_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_check_hang_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_check_hang_subtask(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_q_vector*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 9
  store %struct.ixgbe_hw* %8, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* @__IXGBE_DOWN, align 4
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 8
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @__IXGBE_REMOVING, align 4
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 8
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @__IXGBE_RESETTING, align 4
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %22, i32 0, i32 8
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %14, %1
  br label %126

27:                                               ; preds = %20
  %28 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @netif_carrier_ok(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @set_check_for_tx_hang(i32 %47)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %34

52:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %68, %52
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @set_check_for_tx_hang(i32 %66)
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %53

71:                                               ; preds = %53
  br label %72

72:                                               ; preds = %71, %27
  %73 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IXGBE_FLAG_MSIX_ENABLED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %72
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %81 = load i32, i32* @IXGBE_EICS, align 4
  %82 = load i32, i32* @IXGBE_EICS_TCP_TIMER, align 4
  %83 = load i32, i32* @IXGBE_EICS_OTHER, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %80, i32 %81, i32 %84)
  br label %122

86:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %118, %86
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %121

93:                                               ; preds = %87
  %94 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %95 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %94, i32 0, i32 4
  %96 = load %struct.ixgbe_q_vector**, %struct.ixgbe_q_vector*** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %96, i64 %98
  %100 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %99, align 8
  store %struct.ixgbe_q_vector* %100, %struct.ixgbe_q_vector** %6, align 8
  %101 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %6, align 8
  %102 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %93
  %107 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %6, align 8
  %108 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106, %93
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @BIT_ULL(i32 %113)
  %115 = load i32, i32* %4, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %112, %106
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %87

121:                                              ; preds = %87
  br label %122

122:                                              ; preds = %121, %79
  %123 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @ixgbe_irq_rearm_queues(%struct.ixgbe_adapter* %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %26
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @set_check_for_tx_hang(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @ixgbe_irq_rearm_queues(%struct.ixgbe_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
