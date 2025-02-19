; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_link_status_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_link_status_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { %struct.TYPE_6__*, i32, %struct.ef4_link_state }
%struct.TYPE_6__ = type { i32 }
%struct.ef4_link_state = type { i64, i64, i32 }

@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"link up at %uMbps %s-duplex (MTU %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ef4_link_status_changed(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca %struct.ef4_link_state*, align 8
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %4 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %5 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %4, i32 0, i32 2
  store %struct.ef4_link_state* %5, %struct.ef4_link_state** %3, align 8
  %6 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %7 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = call i32 @netif_running(%struct.TYPE_6__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %74

12:                                               ; preds = %1
  %13 = load %struct.ef4_link_state*, %struct.ef4_link_state** %3, align 8
  %14 = getelementptr inbounds %struct.ef4_link_state, %struct.ef4_link_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %17 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = call i64 @netif_carrier_ok(%struct.TYPE_6__* %18)
  %20 = icmp ne i64 %15, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %12
  %22 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %23 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.ef4_link_state*, %struct.ef4_link_state** %3, align 8
  %27 = getelementptr inbounds %struct.ef4_link_state, %struct.ef4_link_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %32 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = call i32 @netif_carrier_on(%struct.TYPE_6__* %33)
  br label %40

35:                                               ; preds = %21
  %36 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %37 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call i32 @netif_carrier_off(%struct.TYPE_6__* %38)
  br label %40

40:                                               ; preds = %35, %30
  br label %41

41:                                               ; preds = %40, %12
  %42 = load %struct.ef4_link_state*, %struct.ef4_link_state** %3, align 8
  %43 = getelementptr inbounds %struct.ef4_link_state, %struct.ef4_link_state* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  %47 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %48 = load i32, i32* @link, align 4
  %49 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %50 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load %struct.ef4_link_state*, %struct.ef4_link_state** %3, align 8
  %53 = getelementptr inbounds %struct.ef4_link_state, %struct.ef4_link_state* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ef4_link_state*, %struct.ef4_link_state** %3, align 8
  %56 = getelementptr inbounds %struct.ef4_link_state, %struct.ef4_link_state* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %61 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %62 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (%struct.ef4_nic*, i32, %struct.TYPE_6__*, i8*, ...) @netif_info(%struct.ef4_nic* %47, i32 %48, %struct.TYPE_6__* %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %54, i8* %60, i32 %65)
  br label %74

67:                                               ; preds = %41
  %68 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %69 = load i32, i32* @link, align 4
  %70 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %71 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = call i32 (%struct.ef4_nic*, i32, %struct.TYPE_6__*, i8*, ...) @netif_info(%struct.ef4_nic* %68, i32 %69, %struct.TYPE_6__* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %11, %67, %46
  ret void
}

declare dso_local i32 @netif_running(%struct.TYPE_6__*) #1

declare dso_local i64 @netif_carrier_ok(%struct.TYPE_6__*) #1

declare dso_local i32 @netif_carrier_on(%struct.TYPE_6__*) #1

declare dso_local i32 @netif_carrier_off(%struct.TYPE_6__*) #1

declare dso_local i32 @netif_info(%struct.ef4_nic*, i32, %struct.TYPE_6__*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
