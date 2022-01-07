; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_rxnfc_write_vlan_prio_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_rxnfc_write_vlan_prio_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.TYPE_4__*, %struct.e1000_hw }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_hw = type { i32 }
%struct.igb_nfc_filter = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@E1000_VLAPQF = common dso_local global i32 0, align 4
@VLAN_PRIO_MASK = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@E1000_VLAPQF_QUEUE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ethtool rxnfc set vlan prio filter failed.\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, %struct.igb_nfc_filter*)* @igb_rxnfc_write_vlan_prio_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_rxnfc_write_vlan_prio_filter(%struct.igb_adapter* %0, %struct.igb_nfc_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.igb_adapter*, align 8
  %5 = alloca %struct.igb_nfc_filter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %4, align 8
  store %struct.igb_nfc_filter* %1, %struct.igb_nfc_filter** %5, align 8
  %10 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %10, i32 0, i32 1
  store %struct.e1000_hw* %11, %struct.e1000_hw** %6, align 8
  %12 = load i32, i32* @E1000_VLAPQF, align 4
  %13 = call i32 @rd32(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.igb_nfc_filter*, %struct.igb_nfc_filter** %5, align 8
  %15 = getelementptr inbounds %struct.igb_nfc_filter, %struct.igb_nfc_filter* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ntohs(i32 %17)
  %19 = load i32, i32* @VLAN_PRIO_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %24, 4
  %26 = ashr i32 %23, %25
  %27 = load i32, i32* @E1000_VLAPQF_QUEUE_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @E1000_VLAPQF_P_VALID(i32 %30)
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %2
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.igb_nfc_filter*, %struct.igb_nfc_filter** %5, align 8
  %37 = getelementptr inbounds %struct.igb_nfc_filter, %struct.igb_nfc_filter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EEXIST, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %63

48:                                               ; preds = %34, %2
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @E1000_VLAPQF_P_VALID(i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.igb_nfc_filter*, %struct.igb_nfc_filter** %5, align 8
  %55 = getelementptr inbounds %struct.igb_nfc_filter, %struct.igb_nfc_filter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @E1000_VLAPQF_QUEUE_SEL(i32 %53, i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @E1000_VLAPQF, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @wr32(i32 %60, i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %48, %40
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @E1000_VLAPQF_P_VALID(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @E1000_VLAPQF_QUEUE_SEL(i32, i32) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
