; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_process_fcoe_term_conn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_process_fcoe_term_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_context* }
%struct.cnic_context = type { i32, i32, i32 }
%struct.kcqe = type { i32 }
%struct.fcoe_kcqe = type { i64 }

@BNX2X_FCOE_L5_CID_BASE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, %struct.kcqe*)* @cnic_process_fcoe_term_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_process_fcoe_term_conn(%struct.cnic_dev* %0, %struct.kcqe* %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.kcqe*, align 8
  %5 = alloca %struct.cnic_local*, align 8
  %6 = alloca %struct.fcoe_kcqe*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cnic_context*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store %struct.kcqe* %1, %struct.kcqe** %4, align 8
  %9 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %10 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %9, i32 0, i32 0
  %11 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  store %struct.cnic_local* %11, %struct.cnic_local** %5, align 8
  %12 = load %struct.kcqe*, %struct.kcqe** %4, align 8
  %13 = bitcast %struct.kcqe* %12 to %struct.fcoe_kcqe*
  store %struct.fcoe_kcqe* %13, %struct.fcoe_kcqe** %6, align 8
  %14 = load %struct.fcoe_kcqe*, %struct.fcoe_kcqe** %6, align 8
  %15 = getelementptr inbounds %struct.fcoe_kcqe, %struct.fcoe_kcqe* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BNX2X_FCOE_L5_CID_BASE, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %7, align 8
  %19 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %20 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %19, i32 0, i32 0
  %21 = load %struct.cnic_context*, %struct.cnic_context** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %21, i64 %22
  store %struct.cnic_context* %23, %struct.cnic_context** %8, align 8
  %24 = load i32, i32* @jiffies, align 4
  %25 = load %struct.cnic_context*, %struct.cnic_context** %8, align 8
  %26 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.cnic_context*, %struct.cnic_context** %8, align 8
  %28 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.cnic_context*, %struct.cnic_context** %8, align 8
  %30 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %29, i32 0, i32 1
  %31 = call i32 @wake_up(i32* %30)
  ret void
}

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
