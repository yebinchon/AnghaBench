; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_ulp_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_ulp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32*, i32*, i32* }
%struct.cnic_ulp_ops = type { i32 (i32)* }

@MAX_CNIC_ULP_TYPE = common dso_local global i32 0, align 4
@cnic_lock = common dso_local global i32 0, align 4
@ULP_F_CALL_PENDING = common dso_local global i32 0, align 4
@ULP_F_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_ulp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_ulp_start(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.cnic_local*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cnic_ulp_ops*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %6 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %7 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %6, i32 0, i32 0
  %8 = load %struct.cnic_local*, %struct.cnic_local** %7, align 8
  store %struct.cnic_local* %8, %struct.cnic_local** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %73, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MAX_CNIC_ULP_TYPE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %76

13:                                               ; preds = %9
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
  br i1 %25, label %26, label %31

26:                                               ; preds = %13
  %27 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %5, align 8
  %28 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %27, i32 0, i32 0
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = icmp ne i32 (i32)* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26, %13
  %32 = call i32 @mutex_unlock(i32* @cnic_lock)
  br label %73

33:                                               ; preds = %26
  %34 = load i32, i32* @ULP_F_CALL_PENDING, align 4
  %35 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %36 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @set_bit(i32 %34, i32* %40)
  %42 = call i32 @mutex_unlock(i32* @cnic_lock)
  %43 = load i32, i32* @ULP_F_START, align 4
  %44 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %45 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @test_and_set_bit(i32 %43, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %33
  %53 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %5, align 8
  %54 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %53, i32 0, i32 0
  %55 = load i32 (i32)*, i32 (i32)** %54, align 8
  %56 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %57 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 %55(i32 %62)
  br label %64

64:                                               ; preds = %52, %33
  %65 = load i32, i32* @ULP_F_CALL_PENDING, align 4
  %66 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %67 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i32 @clear_bit(i32 %65, i32* %71)
  br label %73

73:                                               ; preds = %64, %31
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %9

76:                                               ; preds = %9
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.cnic_ulp_ops* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
