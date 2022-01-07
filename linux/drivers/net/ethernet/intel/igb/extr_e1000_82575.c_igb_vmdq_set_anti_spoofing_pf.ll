; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_vmdq_set_anti_spoofing_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_vmdq_set_anti_spoofing_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@E1000_DTXSWC = common dso_local global i32 0, align 4
@E1000_TXSWC = common dso_local global i32 0, align 4
@E1000_DTXSWC_MAC_SPOOF_MASK = common dso_local global i32 0, align 4
@E1000_DTXSWC_VLAN_SPOOF_MASK = common dso_local global i32 0, align 4
@MAX_NUM_VFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_vmdq_set_anti_spoofing_pf(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %17 [
    i32 130, label %13
    i32 129, label %15
    i32 128, label %15
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @E1000_DTXSWC, align 4
  store i32 %14, i32* %8, align 4
  br label %18

15:                                               ; preds = %3, %3
  %16 = load i32, i32* @E1000_TXSWC, align 4
  store i32 %16, i32* %8, align 4
  br label %18

17:                                               ; preds = %3
  br label %49

18:                                               ; preds = %15, %13
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @rd32(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load i32, i32* @E1000_DTXSWC_MAC_SPOOF_MASK, align 4
  %25 = load i32, i32* @E1000_DTXSWC_VLAN_SPOOF_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MAX_NUM_VFS, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 @BIT(i32 %33)
  %35 = or i32 %30, %34
  %36 = load i32, i32* %7, align 4
  %37 = xor i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %45

38:                                               ; preds = %18
  %39 = load i32, i32* @E1000_DTXSWC_MAC_SPOOF_MASK, align 4
  %40 = load i32, i32* @E1000_DTXSWC_VLAN_SPOOF_MASK, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %38, %23
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @wr32(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %17
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
