; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_ack_status_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_ack_status_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { %struct.TYPE_2__, %struct.falcon_nic_data* }
%struct.TYPE_2__ = type { i32 }
%struct.falcon_nic_data = type { i64 }

@EF4_REV_FALCON_B0 = common dso_local global i64 0, align 8
@FR_AB_XM_MGT_INT_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*)* @falcon_ack_status_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_ack_status_intr(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca %struct.falcon_nic_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %5 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %6 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %5, i32 0, i32 1
  %7 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %6, align 8
  store %struct.falcon_nic_data* %7, %struct.falcon_nic_data** %3, align 8
  %8 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %9 = call i64 @ef4_nic_rev(%struct.ef4_nic* %8)
  %10 = load i64, i64* @EF4_REV_FALCON_B0, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %14 = call i64 @LOOPBACK_INTERNAL(%struct.ef4_nic* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %1
  br label %34

17:                                               ; preds = %12
  %18 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %19 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %34

24:                                               ; preds = %17
  %25 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %26 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %34

30:                                               ; preds = %24
  %31 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %32 = load i32, i32* @FR_AB_XM_MGT_INT_MSK, align 4
  %33 = call i32 @ef4_reado(%struct.ef4_nic* %31, i32* %4, i32 %32)
  br label %34

34:                                               ; preds = %30, %29, %23, %16
  ret void
}

declare dso_local i64 @ef4_nic_rev(%struct.ef4_nic*) #1

declare dso_local i64 @LOOPBACK_INTERNAL(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_reado(%struct.ef4_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
