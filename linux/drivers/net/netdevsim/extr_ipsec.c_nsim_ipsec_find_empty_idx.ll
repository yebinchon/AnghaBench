; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_ipsec.c_nsim_ipsec_find_empty_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_ipsec.c_nsim_ipsec_find_empty_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsim_ipsec = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NSIM_IPSEC_MAX_SA_COUNT = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nsim_ipsec*)* @nsim_ipsec_find_empty_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_ipsec_find_empty_idx(%struct.nsim_ipsec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nsim_ipsec*, align 8
  %4 = alloca i64, align 8
  store %struct.nsim_ipsec* %0, %struct.nsim_ipsec** %3, align 8
  %5 = load %struct.nsim_ipsec*, %struct.nsim_ipsec** %3, align 8
  %6 = getelementptr inbounds %struct.nsim_ipsec, %struct.nsim_ipsec* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NSIM_IPSEC_MAX_SA_COUNT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOSPC, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @NSIM_IPSEC_MAX_SA_COUNT, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load %struct.nsim_ipsec*, %struct.nsim_ipsec** %3, align 8
  %20 = getelementptr inbounds %struct.nsim_ipsec, %struct.nsim_ipsec* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i64, i64* %4, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %37

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %4, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %14

34:                                               ; preds = %14
  %35 = load i32, i32* @ENOSPC, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %27, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
