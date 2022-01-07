; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_reply_bnx2x_kcqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_reply_bnx2x_kcqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32*, i32* }
%struct.kcqe = type { i32 }
%struct.cnic_ulp_ops = type { i32 (i32, %struct.kcqe**, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, i32, %struct.kcqe**, i32)* @cnic_reply_bnx2x_kcqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_reply_bnx2x_kcqes(%struct.cnic_dev* %0, i32 %1, %struct.kcqe** %2, i32 %3) #0 {
  %5 = alloca %struct.cnic_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kcqe**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cnic_local*, align 8
  %10 = alloca %struct.cnic_ulp_ops*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.kcqe** %2, %struct.kcqe*** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %12 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %11, i32 0, i32 0
  %13 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  store %struct.cnic_local* %13, %struct.cnic_local** %9, align 8
  %14 = call i32 (...) @rcu_read_lock()
  %15 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %16 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.cnic_ulp_ops* @rcu_dereference(i32 %21)
  store %struct.cnic_ulp_ops* %22, %struct.cnic_ulp_ops** %10, align 8
  %23 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %10, align 8
  %24 = call i64 @likely(%struct.cnic_ulp_ops* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %4
  %27 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %10, align 8
  %28 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %27, i32 0, i32 0
  %29 = load i32 (i32, %struct.kcqe**, i32)*, i32 (i32, %struct.kcqe**, i32)** %28, align 8
  %30 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %31 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.kcqe**, %struct.kcqe*** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 %29(i32 %36, %struct.kcqe** %37, i32 %38)
  br label %40

40:                                               ; preds = %26, %4
  %41 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cnic_ulp_ops* @rcu_dereference(i32) #1

declare dso_local i64 @likely(%struct.cnic_ulp_ops*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
