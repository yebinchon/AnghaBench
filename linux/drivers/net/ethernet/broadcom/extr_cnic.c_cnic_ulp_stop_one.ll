; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_ulp_stop_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_ulp_stop_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_local = type { i32*, i32*, i32* }
%struct.cnic_ulp_ops = type { i32 (i32)* }

@CNIC_ULP_ISCSI = common dso_local global i32 0, align 4
@ISCSI_KEVENT_IF_DOWN = common dso_local global i32 0, align 4
@cnic_lock = common dso_local global i32 0, align 4
@ULP_F_CALL_PENDING = common dso_local global i32 0, align 4
@ULP_F_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_local*, i32)* @cnic_ulp_stop_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_ulp_stop_one(%struct.cnic_local* %0, i32 %1) #0 {
  %3 = alloca %struct.cnic_local*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cnic_ulp_ops*, align 8
  store %struct.cnic_local* %0, %struct.cnic_local** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @CNIC_ULP_ISCSI, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %11 = load i32, i32* @ISCSI_KEVENT_IF_DOWN, align 4
  %12 = call i32 @cnic_send_nlmsg(%struct.cnic_local* %10, i32 %11, i32* null)
  br label %13

13:                                               ; preds = %9, %2
  %14 = call i32 @mutex_lock(i32* @cnic_lock)
  %15 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %16 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @lockdep_is_held(i32* @cnic_lock)
  %23 = call %struct.cnic_ulp_ops* @rcu_dereference_protected(i32 %21, i32 %22)
  store %struct.cnic_ulp_ops* %23, %struct.cnic_ulp_ops** %5, align 8
  %24 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %5, align 8
  %25 = icmp ne %struct.cnic_ulp_ops* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %13
  %27 = call i32 @mutex_unlock(i32* @cnic_lock)
  br label %68

28:                                               ; preds = %13
  %29 = load i32, i32* @ULP_F_CALL_PENDING, align 4
  %30 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %31 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @set_bit(i32 %29, i32* %35)
  %37 = call i32 @mutex_unlock(i32* @cnic_lock)
  %38 = load i32, i32* @ULP_F_START, align 4
  %39 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %40 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i64 @test_and_clear_bit(i32 %38, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %28
  %48 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %5, align 8
  %49 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %48, i32 0, i32 0
  %50 = load i32 (i32)*, i32 (i32)** %49, align 8
  %51 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %52 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 %50(i32 %57)
  br label %59

59:                                               ; preds = %47, %28
  %60 = load i32, i32* @ULP_F_CALL_PENDING, align 4
  %61 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %62 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @clear_bit(i32 %60, i32* %66)
  br label %68

68:                                               ; preds = %59, %26
  ret void
}

declare dso_local i32 @cnic_send_nlmsg(%struct.cnic_local*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.cnic_ulp_ops* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
