; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_rcv_netevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_rcv_netevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_local = type { i32*, i8**, i32* }
%struct.cnic_ulp_ops = type { i32 (i8*, i64, i32)* }

@MAX_CNIC_ULP_TYPE = common dso_local global i32 0, align 4
@cnic_lock = common dso_local global i32 0, align 4
@ULP_F_CALL_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_local*, i64, i32)* @cnic_rcv_netevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_rcv_netevent(%struct.cnic_local* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cnic_ulp_ops*, align 8
  %9 = alloca i8*, align 8
  store %struct.cnic_local* %0, %struct.cnic_local** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %66, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @MAX_CNIC_ULP_TYPE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %69

14:                                               ; preds = %10
  %15 = call i32 @mutex_lock(i32* @cnic_lock)
  %16 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %17 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @lockdep_is_held(i32* @cnic_lock)
  %24 = call %struct.cnic_ulp_ops* @rcu_dereference_protected(i32 %22, i32 %23)
  store %struct.cnic_ulp_ops* %24, %struct.cnic_ulp_ops** %8, align 8
  %25 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %8, align 8
  %26 = icmp ne %struct.cnic_ulp_ops* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %14
  %28 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %8, align 8
  %29 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %28, i32 0, i32 0
  %30 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %29, align 8
  %31 = icmp ne i32 (i8*, i64, i32)* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27, %14
  %33 = call i32 @mutex_unlock(i32* @cnic_lock)
  br label %66

34:                                               ; preds = %27
  %35 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %36 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %9, align 8
  %42 = load i32, i32* @ULP_F_CALL_PENDING, align 4
  %43 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %44 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @set_bit(i32 %42, i32* %48)
  %50 = call i32 @mutex_unlock(i32* @cnic_lock)
  %51 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %8, align 8
  %52 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %51, i32 0, i32 0
  %53 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %52, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 %53(i8* %54, i64 %55, i32 %56)
  %58 = load i32, i32* @ULP_F_CALL_PENDING, align 4
  %59 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %60 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @clear_bit(i32 %58, i32* %64)
  br label %66

66:                                               ; preds = %34, %32
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %10

69:                                               ; preds = %10
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.cnic_ulp_ops* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
