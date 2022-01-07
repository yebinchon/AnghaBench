; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_reset_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_reset_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)* }
%struct.TYPE_3__ = type { i32 (%struct.efx_nic*)* }

@RESET_TYPE_MCDI_TIMEOUT = common dso_local global i32 0, align 4
@RESET_TYPE_INVISIBLE = common dso_local global i32 0, align 4
@RESET_TYPE_DATAPATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_reset_down(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %6 = call i32 @EFX_ASSERT_RESET_SERIALISED(%struct.efx_nic* %5)
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @RESET_TYPE_MCDI_TIMEOUT, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %14, align 8
  %16 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %17 = call i32 %15(%struct.efx_nic* %16)
  br label %18

18:                                               ; preds = %10, %2
  %19 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %20 = call i32 @efx_stop_all(%struct.efx_nic* %19)
  %21 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %22 = call i32 @efx_disable_interrupts(%struct.efx_nic* %21)
  %23 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 5
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 4
  %28 = call i32 @down_write(i32* %27)
  %29 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %30 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %29, i32 0, i32 3
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %18
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @RESET_TYPE_INVISIBLE, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @RESET_TYPE_DATAPATH, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %46 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %48, align 8
  %50 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %51 = call i32 %49(%struct.efx_nic* %50)
  br label %52

52:                                               ; preds = %44, %40, %36, %18
  %53 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %54 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %56, align 8
  %58 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %59 = call i32 %57(%struct.efx_nic* %58)
  ret void
}

declare dso_local i32 @EFX_ASSERT_RESET_SERIALISED(%struct.efx_nic*) #1

declare dso_local i32 @efx_stop_all(%struct.efx_nic*) #1

declare dso_local i32 @efx_disable_interrupts(%struct.efx_nic*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @down_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
