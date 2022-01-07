; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_stop_bnx2x_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_stop_bnx2x_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { i32, i32, i32 }

@cnic_wq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%d iSCSI connections not destroyed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_cm_stop_bnx2x_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_cm_stop_bnx2x_hw(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.cnic_local*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %4 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %5 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %4, i32 0, i32 1
  %6 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  store %struct.cnic_local* %6, %struct.cnic_local** %3, align 8
  %7 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %8 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @netif_running(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %39

19:                                               ; preds = %12
  %20 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %21 = call i32 @cnic_bnx2x_delete_wait(%struct.cnic_dev* %20, i32 0)
  %22 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %23 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %22, i32 0, i32 1
  %24 = call i32 @cancel_delayed_work(i32* %23)
  %25 = load i32, i32* @cnic_wq, align 4
  %26 = call i32 @flush_workqueue(i32 %25)
  %27 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %28 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %27, i32 0, i32 0
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %19
  %32 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %33 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %36 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %35, i32 0, i32 0
  %37 = call i64 @atomic_read(i32* %36)
  %38 = call i32 @netdev_warn(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %11, %18, %31, %19
  ret void
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @cnic_bnx2x_delete_wait(%struct.cnic_dev*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
