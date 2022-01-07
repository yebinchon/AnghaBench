; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_ipsec.c_nsim_ipsec_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_ipsec.c_nsim_ipsec_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdevsim = type { i32, %struct.nsim_ipsec }
%struct.nsim_ipsec = type { i32, i64 }

@.str = private unnamed_addr constant [45 x i8] c"tearing down IPsec offload with %d SAs left\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nsim_ipsec_teardown(%struct.netdevsim* %0) #0 {
  %2 = alloca %struct.netdevsim*, align 8
  %3 = alloca %struct.nsim_ipsec*, align 8
  store %struct.netdevsim* %0, %struct.netdevsim** %2, align 8
  %4 = load %struct.netdevsim*, %struct.netdevsim** %2, align 8
  %5 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %4, i32 0, i32 1
  store %struct.nsim_ipsec* %5, %struct.nsim_ipsec** %3, align 8
  %6 = load %struct.nsim_ipsec*, %struct.nsim_ipsec** %3, align 8
  %7 = getelementptr inbounds %struct.nsim_ipsec, %struct.nsim_ipsec* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.netdevsim*, %struct.netdevsim** %2, align 8
  %12 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.nsim_ipsec*, %struct.nsim_ipsec** %3, align 8
  %15 = getelementptr inbounds %struct.nsim_ipsec, %struct.nsim_ipsec* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @netdev_err(i32 %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %16)
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.nsim_ipsec*, %struct.nsim_ipsec** %3, align 8
  %20 = getelementptr inbounds %struct.nsim_ipsec, %struct.nsim_ipsec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @debugfs_remove_recursive(i32 %21)
  ret void
}

declare dso_local i32 @netdev_err(i32, i8*, i64) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
