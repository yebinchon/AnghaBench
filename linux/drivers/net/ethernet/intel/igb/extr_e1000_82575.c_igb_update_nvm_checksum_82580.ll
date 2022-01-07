; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_update_nvm_checksum_82580.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_update_nvm_checksum_82580.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@NVM_COMPATIBILITY_REG_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"NVM Read Error while updating checksum compatibility bit.\0A\00", align 1
@NVM_COMPATIBILITY_BIT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"NVM Write Error while updating checksum compatibility bit.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @igb_update_nvm_checksum_82580 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_update_nvm_checksum_82580(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64 (%struct.e1000_hw.1*, i32, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32, i32*)** %10, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = bitcast %struct.e1000_hw* %12 to %struct.e1000_hw.1*
  %14 = load i32, i32* @NVM_COMPATIBILITY_REG_3, align 4
  %15 = call i64 %11(%struct.e1000_hw.1* %13, i32 %14, i32 1, i32* %5)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @hw_dbg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %61

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @NVM_COMPATIBILITY_BIT_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @NVM_COMPATIBILITY_BIT_MASK, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32, i32*)** %32, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = bitcast %struct.e1000_hw* %34 to %struct.e1000_hw.0*
  %36 = load i32, i32* @NVM_COMPATIBILITY_REG_3, align 4
  %37 = call i64 %33(%struct.e1000_hw.0* %35, i32 %36, i32 1, i32* %5)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = call i32 @hw_dbg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  br label %61

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42, %20
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %57, %43
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @NVM_82580_LAN_FUNC_OFFSET(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @igb_update_nvm_checksum_with_offset(%struct.e1000_hw* %50, i32 %51)
  store i64 %52, i64* %3, align 8
  %53 = load i64, i64* %3, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %61

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %44

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60, %55, %40, %18
  %62 = load i64, i64* %3, align 8
  ret i64 %62
}

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @NVM_82580_LAN_FUNC_OFFSET(i32) #1

declare dso_local i64 @igb_update_nvm_checksum_with_offset(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
