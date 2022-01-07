; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_update_irq_mod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_update_irq_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ef4_channel*)* }
%struct.ef4_channel = type { i64, i32, i64 }

@irq_adapt_low_thresh = common dso_local global i64 0, align 8
@irq_adapt_high_thresh = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*, %struct.ef4_channel*)* @ef4_update_irq_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_update_irq_mod(%struct.ef4_nic* %0, %struct.ef4_channel* %1) #0 {
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca %struct.ef4_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  store %struct.ef4_channel* %1, %struct.ef4_channel** %4, align 8
  %6 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %7 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %10 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @irq_adapt_low_thresh, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  %15 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %16 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %23 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %27 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.ef4_channel*)*, i32 (%struct.ef4_channel*)** %29, align 8
  %31 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %32 = call i32 %30(%struct.ef4_channel* %31)
  br label %33

33:                                               ; preds = %20, %14
  br label %63

34:                                               ; preds = %2
  %35 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %36 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @irq_adapt_high_thresh, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %34
  %41 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %42 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %45 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %40
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %51 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %55 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.ef4_channel*)*, i32 (%struct.ef4_channel*)** %57, align 8
  %59 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %60 = call i32 %58(%struct.ef4_channel* %59)
  br label %61

61:                                               ; preds = %48, %40
  br label %62

62:                                               ; preds = %61, %34
  br label %63

63:                                               ; preds = %62, %33
  %64 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %65 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %67 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
