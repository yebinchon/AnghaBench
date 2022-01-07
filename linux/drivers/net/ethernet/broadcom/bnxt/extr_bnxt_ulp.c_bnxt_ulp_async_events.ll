; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_ulp_async_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_ulp_async_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.bnxt_en_dev* }
%struct.bnxt_en_dev = type { %struct.bnxt_ulp* }
%struct.bnxt_ulp = type { i64, i32, i32, i32 }
%struct.hwrm_async_event_cmpl = type { i32 }
%struct.bnxt_ulp_ops = type { i32 (i32, %struct.hwrm_async_event_cmpl*)* }

@BNXT_MAX_ULP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_ulp_async_events(%struct.bnxt* %0, %struct.hwrm_async_event_cmpl* %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.hwrm_async_event_cmpl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bnxt_en_dev*, align 8
  %7 = alloca %struct.bnxt_ulp_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnxt_ulp*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store %struct.hwrm_async_event_cmpl* %1, %struct.hwrm_async_event_cmpl** %4, align 8
  %10 = load %struct.hwrm_async_event_cmpl*, %struct.hwrm_async_event_cmpl** %4, align 8
  %11 = getelementptr inbounds %struct.hwrm_async_event_cmpl, %struct.hwrm_async_event_cmpl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @le16_to_cpu(i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %15 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %14, i32 0, i32 0
  %16 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %15, align 8
  store %struct.bnxt_en_dev* %16, %struct.bnxt_en_dev** %6, align 8
  %17 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %6, align 8
  %18 = icmp ne %struct.bnxt_en_dev* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %80

20:                                               ; preds = %2
  %21 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %75, %20
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @BNXT_MAX_ULP, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %78

26:                                               ; preds = %22
  %27 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %6, align 8
  %28 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %27, i32 0, i32 0
  %29 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %29, i64 %31
  store %struct.bnxt_ulp* %32, %struct.bnxt_ulp** %9, align 8
  %33 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %9, align 8
  %34 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.bnxt_ulp_ops* @rcu_dereference(i32 %35)
  store %struct.bnxt_ulp_ops* %36, %struct.bnxt_ulp_ops** %7, align 8
  %37 = load %struct.bnxt_ulp_ops*, %struct.bnxt_ulp_ops** %7, align 8
  %38 = icmp ne %struct.bnxt_ulp_ops* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %26
  %40 = load %struct.bnxt_ulp_ops*, %struct.bnxt_ulp_ops** %7, align 8
  %41 = getelementptr inbounds %struct.bnxt_ulp_ops, %struct.bnxt_ulp_ops* %40, i32 0, i32 0
  %42 = load i32 (i32, %struct.hwrm_async_event_cmpl*)*, i32 (i32, %struct.hwrm_async_event_cmpl*)** %41, align 8
  %43 = icmp ne i32 (i32, %struct.hwrm_async_event_cmpl*)* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39, %26
  br label %75

45:                                               ; preds = %39
  %46 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %9, align 8
  %47 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %9, align 8
  %53 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %45
  br label %75

57:                                               ; preds = %50
  %58 = call i32 (...) @smp_rmb()
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %9, align 8
  %61 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @test_bit(i64 %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load %struct.bnxt_ulp_ops*, %struct.bnxt_ulp_ops** %7, align 8
  %67 = getelementptr inbounds %struct.bnxt_ulp_ops, %struct.bnxt_ulp_ops* %66, i32 0, i32 0
  %68 = load i32 (i32, %struct.hwrm_async_event_cmpl*)*, i32 (i32, %struct.hwrm_async_event_cmpl*)** %67, align 8
  %69 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %9, align 8
  %70 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.hwrm_async_event_cmpl*, %struct.hwrm_async_event_cmpl** %4, align 8
  %73 = call i32 %68(i32 %71, %struct.hwrm_async_event_cmpl* %72)
  br label %74

74:                                               ; preds = %65, %57
  br label %75

75:                                               ; preds = %74, %56, %44
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %22

78:                                               ; preds = %22
  %79 = call i32 (...) @rcu_read_unlock()
  br label %80

80:                                               ; preds = %78, %19
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bnxt_ulp_ops* @rcu_dereference(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
