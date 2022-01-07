; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_reconfigure_mac_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_reconfigure_mac_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, i32, %struct.ef4_link_state }
%struct.ef4_link_state = type { i32, i32 }

@FRF_AB_MAC_XOFF_VAL = common dso_local global i32 0, align 4
@FRF_AB_MAC_BCAD_ACPT = common dso_local global i32 0, align 4
@FRF_AB_MAC_UC_PROM = common dso_local global i32 0, align 4
@FRF_AB_MAC_LINK_STATUS = common dso_local global i32 0, align 4
@FRF_AB_MAC_SPEED = common dso_local global i32 0, align 4
@EF4_REV_FALCON_B0 = common dso_local global i64 0, align 8
@FRF_BB_TXFIFO_DRAIN_EN = common dso_local global i32 0, align 4
@FR_AB_MAC_CTRL = common dso_local global i32 0, align 4
@FR_AZ_RX_CFG = common dso_local global i32 0, align 4
@FRF_AZ_RX_XOFF_MAC_EN = common dso_local global i32 0, align 4
@FRF_BZ_RX_INGR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*)* @falcon_reconfigure_mac_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_reconfigure_mac_wrapper(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca %struct.ef4_link_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %7 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %8 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %7, i32 0, i32 2
  store %struct.ef4_link_state* %8, %struct.ef4_link_state** %3, align 8
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %10 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @READ_ONCE(i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load %struct.ef4_link_state*, %struct.ef4_link_state** %3, align 8
  %18 = getelementptr inbounds %struct.ef4_link_state, %struct.ef4_link_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %23 [
    i32 10000, label %20
    i32 1000, label %21
    i32 100, label %22
  ]

20:                                               ; preds = %1
  store i32 3, i32* %5, align 4
  br label %24

21:                                               ; preds = %1
  store i32 2, i32* %5, align 4
  br label %24

22:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %22, %21, %20
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @FRF_AB_MAC_XOFF_VAL, align 4
  %27 = load i32, i32* @FRF_AB_MAC_BCAD_ACPT, align 4
  %28 = load i32, i32* @FRF_AB_MAC_UC_PROM, align 4
  %29 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %30 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* @FRF_AB_MAC_LINK_STATUS, align 4
  %36 = load i32, i32* @FRF_AB_MAC_SPEED, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @EF4_POPULATE_OWORD_5(i32 %25, i32 %26, i32 65535, i32 %27, i32 1, i32 %28, i32 %34, i32 %35, i32 1, i32 %36, i32 %37)
  %39 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %40 = call i64 @ef4_nic_rev(%struct.ef4_nic* %39)
  %41 = load i64, i64* @EF4_REV_FALCON_B0, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %24
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @FRF_BB_TXFIFO_DRAIN_EN, align 4
  %46 = load %struct.ef4_link_state*, %struct.ef4_link_state** %3, align 8
  %47 = getelementptr inbounds %struct.ef4_link_state, %struct.ef4_link_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %50, %43
  %54 = phi i1 [ true, %43 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @EF4_SET_OWORD_FIELD(i32 %44, i32 %45, i32 %55)
  br label %57

57:                                               ; preds = %53, %24
  %58 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %59 = load i32, i32* @FR_AB_MAC_CTRL, align 4
  %60 = call i32 @ef4_writeo(%struct.ef4_nic* %58, i32* %4, i32 %59)
  %61 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %62 = call i32 @falcon_push_multicast_hash(%struct.ef4_nic* %61)
  %63 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %64 = load i32, i32* @FR_AZ_RX_CFG, align 4
  %65 = call i32 @ef4_reado(%struct.ef4_nic* %63, i32* %4, i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @FRF_AZ_RX_XOFF_MAC_EN, align 4
  %68 = call i32 @EF4_SET_OWORD_FIELD(i32 %66, i32 %67, i32 1)
  %69 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %70 = call i64 @ef4_nic_rev(%struct.ef4_nic* %69)
  %71 = load i64, i64* @EF4_REV_FALCON_B0, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %57
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @FRF_BZ_RX_INGR_EN, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @EF4_SET_OWORD_FIELD(i32 %74, i32 %75, i32 %79)
  br label %81

81:                                               ; preds = %73, %57
  %82 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %83 = load i32, i32* @FR_AZ_RX_CFG, align 4
  %84 = call i32 @ef4_writeo(%struct.ef4_nic* %82, i32* %4, i32 %83)
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @EF4_POPULATE_OWORD_5(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ef4_nic_rev(%struct.ef4_nic*) #1

declare dso_local i32 @EF4_SET_OWORD_FIELD(i32, i32, i32) #1

declare dso_local i32 @ef4_writeo(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @falcon_push_multicast_hash(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_reado(%struct.ef4_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
