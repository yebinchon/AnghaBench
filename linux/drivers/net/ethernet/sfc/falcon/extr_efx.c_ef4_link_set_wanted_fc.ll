; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_link_set_wanted_fc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_link_set_wanted_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, i32 }

@EF4_FC_RX = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@EF4_FC_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ef4_link_set_wanted_fc(%struct.ef4_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %7 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %9 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @EF4_FC_RX, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load i32, i32* @ADVERTISED_Pause, align 4
  %19 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %22 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %34

25:                                               ; preds = %12
  %26 = load i32, i32* @ADVERTISED_Pause, align 4
  %27 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %31 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %25, %17
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @EF4_FC_TX, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %41 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %42 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %34
  br label %46

46:                                               ; preds = %45, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
