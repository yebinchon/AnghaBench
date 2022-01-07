; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_copy_ulp_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_copy_ulp_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32*, i32* }
%struct.cnic_ulp_ops = type { i32 (i32)* }

@cnic_lock = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, i32)* @cnic_copy_ulp_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_copy_ulp_stats(%struct.cnic_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cnic_local*, align 8
  %6 = alloca %struct.cnic_ulp_ops*, align 8
  %7 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %9 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %8, i32 0, i32 0
  %10 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  store %struct.cnic_local* %10, %struct.cnic_local** %5, align 8
  %11 = call i32 @mutex_lock(i32* @cnic_lock)
  %12 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %13 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @lockdep_is_held(i32* @cnic_lock)
  %20 = call %struct.cnic_ulp_ops* @rcu_dereference_protected(i32 %18, i32 %19)
  store %struct.cnic_ulp_ops* %20, %struct.cnic_ulp_ops** %6, align 8
  %21 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %6, align 8
  %22 = icmp ne %struct.cnic_ulp_ops* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %2
  %24 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %6, align 8
  %25 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %24, i32 0, i32 0
  %26 = load i32 (i32)*, i32 (i32)** %25, align 8
  %27 = icmp ne i32 (i32)* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %6, align 8
  %30 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %29, i32 0, i32 0
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %33 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %31(i32 %38)
  store i32 %39, i32* %7, align 4
  br label %43

40:                                               ; preds = %23, %2
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %28
  %44 = call i32 @mutex_unlock(i32* @cnic_lock)
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.cnic_ulp_ops* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
