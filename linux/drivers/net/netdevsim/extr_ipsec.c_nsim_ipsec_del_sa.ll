; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_ipsec.c_nsim_ipsec_del_sa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_ipsec.c_nsim_ipsec_del_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.netdevsim = type { i32, %struct.nsim_ipsec }
%struct.nsim_ipsec = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@NSIM_IPSEC_VALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Invalid SA for delete sa_idx=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*)* @nsim_ipsec_del_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsim_ipsec_del_sa(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.netdevsim*, align 8
  %4 = alloca %struct.nsim_ipsec*, align 8
  %5 = alloca i64, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %6 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %7 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.netdevsim* @netdev_priv(i32 %9)
  store %struct.netdevsim* %10, %struct.netdevsim** %3, align 8
  %11 = load %struct.netdevsim*, %struct.netdevsim** %3, align 8
  %12 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %11, i32 0, i32 1
  store %struct.nsim_ipsec* %12, %struct.nsim_ipsec** %4, align 8
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %14 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NSIM_IPSEC_VALID, align 8
  %18 = xor i64 %17, -1
  %19 = and i64 %16, %18
  store i64 %19, i64* %5, align 8
  %20 = load %struct.nsim_ipsec*, %struct.nsim_ipsec** %4, align 8
  %21 = getelementptr inbounds %struct.nsim_ipsec, %struct.nsim_ipsec* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load %struct.netdevsim*, %struct.netdevsim** %3, align 8
  %30 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @netdev_err(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %45

34:                                               ; preds = %1
  %35 = load %struct.nsim_ipsec*, %struct.nsim_ipsec** %4, align 8
  %36 = getelementptr inbounds %struct.nsim_ipsec, %struct.nsim_ipsec* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = call i32 @memset(%struct.TYPE_4__* %39, i32 0, i32 4)
  %41 = load %struct.nsim_ipsec*, %struct.nsim_ipsec** %4, align 8
  %42 = getelementptr inbounds %struct.nsim_ipsec, %struct.nsim_ipsec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %34, %28
  ret void
}

declare dso_local %struct.netdevsim* @netdev_priv(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
