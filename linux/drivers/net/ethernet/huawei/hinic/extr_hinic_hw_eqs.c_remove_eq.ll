; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_remove_eq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_remove_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_eq = type { i64, i32, %struct.hinic_eq_work, %struct.msix_entry }
%struct.hinic_eq_work = type { i32 }
%struct.msix_entry = type { i32 }

@HINIC_AEQ = common dso_local global i64 0, align 8
@HINIC_CEQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_eq*)* @remove_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_eq(%struct.hinic_eq* %0) #0 {
  %2 = alloca %struct.hinic_eq*, align 8
  %3 = alloca %struct.msix_entry*, align 8
  %4 = alloca %struct.hinic_eq_work*, align 8
  store %struct.hinic_eq* %0, %struct.hinic_eq** %2, align 8
  %5 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %6 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %5, i32 0, i32 3
  store %struct.msix_entry* %6, %struct.msix_entry** %3, align 8
  %7 = load %struct.msix_entry*, %struct.msix_entry** %3, align 8
  %8 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %11 = call i32 @free_irq(i32 %9, %struct.hinic_eq* %10)
  %12 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %13 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HINIC_AEQ, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %19 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %18, i32 0, i32 2
  store %struct.hinic_eq_work* %19, %struct.hinic_eq_work** %4, align 8
  %20 = load %struct.hinic_eq_work*, %struct.hinic_eq_work** %4, align 8
  %21 = getelementptr inbounds %struct.hinic_eq_work, %struct.hinic_eq_work* %20, i32 0, i32 0
  %22 = call i32 @cancel_work_sync(i32* %21)
  br label %34

23:                                               ; preds = %1
  %24 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %25 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HINIC_CEQ, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %31 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %30, i32 0, i32 1
  %32 = call i32 @tasklet_kill(i32* %31)
  br label %33

33:                                               ; preds = %29, %23
  br label %34

34:                                               ; preds = %33, %17
  %35 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %36 = call i32 @free_eq_pages(%struct.hinic_eq* %35)
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.hinic_eq*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @free_eq_pages(%struct.hinic_eq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
