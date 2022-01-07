; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_check_hang_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_check_hang_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, i32, %struct.fm10k_q_vector**, i32*, i32, i64, i32 }
%struct.fm10k_q_vector = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@__FM10K_DOWN = common dso_local global i32 0, align 4
@__FM10K_RESETTING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@FM10K_ITR_ENABLE = common dso_local global i32 0, align 4
@FM10K_ITR_PENDING2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_intfc*)* @fm10k_check_hang_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_check_hang_subtask(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca %struct.fm10k_intfc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fm10k_q_vector*, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %2, align 8
  %5 = load i32, i32* @__FM10K_DOWN, align 4
  %6 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %7 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @test_bit(i32 %5, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @__FM10K_RESETTING, align 4
  %13 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %14 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @test_bit(i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %1
  br label %97

19:                                               ; preds = %11
  %20 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %21 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @time_is_after_eq_jiffies(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %97

26:                                               ; preds = %19
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i32, i32* @HZ, align 4
  %29 = mul nsw i32 2, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  %32 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %33 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %32, i32 0, i32 5
  store i64 %31, i64* %33, align 8
  %34 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %35 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @netif_carrier_ok(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %97

39:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %55, %39
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %43 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %48 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @set_check_for_tx_hang(i32 %53)
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %40

58:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %93, %58
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %62 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %59
  %66 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %67 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %66, i32 0, i32 2
  %68 = load %struct.fm10k_q_vector**, %struct.fm10k_q_vector*** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %68, i64 %70
  %72 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %71, align 8
  store %struct.fm10k_q_vector* %72, %struct.fm10k_q_vector** %4, align 8
  %73 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %4, align 8
  %74 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %65
  %79 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %4, align 8
  %80 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  br label %93

85:                                               ; preds = %78, %65
  %86 = load i32, i32* @FM10K_ITR_ENABLE, align 4
  %87 = load i32, i32* @FM10K_ITR_PENDING2, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %4, align 8
  %90 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @writel(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %85, %84
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %59

96:                                               ; preds = %59
  br label %97

97:                                               ; preds = %18, %25, %96, %26
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @time_is_after_eq_jiffies(i64) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @set_check_for_tx_hang(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
