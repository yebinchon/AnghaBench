; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_reset_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_reset_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ef4_nic*)* }
%struct.TYPE_3__ = type { i32 (%struct.ef4_nic*)* }

@RESET_TYPE_INVISIBLE = common dso_local global i32 0, align 4
@RESET_TYPE_DATAPATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ef4_reset_down(%struct.ef4_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %6 = call i32 @EF4_ASSERT_RESET_SERIALISED(%struct.ef4_nic* %5)
  %7 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %8 = call i32 @ef4_stop_all(%struct.ef4_nic* %7)
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %10 = call i32 @ef4_disable_interrupts(%struct.ef4_nic* %9)
  %11 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %12 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %11, i32 0, i32 3
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %15 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @RESET_TYPE_INVISIBLE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @RESET_TYPE_DATAPATH, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %28 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %30, align 8
  %32 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %33 = call i32 %31(%struct.ef4_nic* %32)
  br label %34

34:                                               ; preds = %26, %22, %18, %2
  %35 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %36 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %38, align 8
  %40 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %41 = call i32 %39(%struct.ef4_nic* %40)
  ret void
}

declare dso_local i32 @EF4_ASSERT_RESET_SERIALISED(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_stop_all(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_disable_interrupts(%struct.ef4_nic*) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
