; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_force_mac_fc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_force_mac_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_hw = type { %struct.TYPE_2__*, %struct.pch_gbe_mac_info }
%struct.TYPE_2__ = type { i32 }
%struct.pch_gbe_mac_info = type { i32, i32, i64 }
%struct.pch_gbe_adapter = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"mac->fc = %u\0A\00", align 1
@PCH_GBE_FL_CTRL_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"RX_FCTRL reg : 0x%08x  mac->tx_fc_enable : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pch_gbe_mac_force_mac_fc(%struct.pch_gbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pch_gbe_hw*, align 8
  %4 = alloca %struct.pch_gbe_adapter*, align 8
  %5 = alloca %struct.pch_gbe_mac_info*, align 8
  %6 = alloca i32, align 4
  store %struct.pch_gbe_hw* %0, %struct.pch_gbe_hw** %3, align 8
  %7 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %8 = call %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw* %7)
  store %struct.pch_gbe_adapter* %8, %struct.pch_gbe_adapter** %4, align 8
  %9 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %10 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %9, i32 0, i32 1
  store %struct.pch_gbe_mac_info* %10, %struct.pch_gbe_mac_info** %5, align 8
  %11 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pch_gbe_mac_info*, %struct.pch_gbe_mac_info** %5, align 8
  %15 = getelementptr inbounds %struct.pch_gbe_mac_info, %struct.pch_gbe_mac_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %19 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @ioread32(i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.pch_gbe_mac_info*, %struct.pch_gbe_mac_info** %5, align 8
  %24 = getelementptr inbounds %struct.pch_gbe_mac_info, %struct.pch_gbe_mac_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %52 [
    i32 130, label %26
    i32 129, label %33
    i32 128, label %39
    i32 131, label %46
  ]

26:                                               ; preds = %1
  %27 = load i32, i32* @PCH_GBE_FL_CTRL_EN, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct.pch_gbe_mac_info*, %struct.pch_gbe_mac_info** %5, align 8
  %32 = getelementptr inbounds %struct.pch_gbe_mac_info, %struct.pch_gbe_mac_info* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  br label %59

33:                                               ; preds = %1
  %34 = load i32, i32* @PCH_GBE_FL_CTRL_EN, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.pch_gbe_mac_info*, %struct.pch_gbe_mac_info** %5, align 8
  %38 = getelementptr inbounds %struct.pch_gbe_mac_info, %struct.pch_gbe_mac_info* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  br label %59

39:                                               ; preds = %1
  %40 = load i32, i32* @PCH_GBE_FL_CTRL_EN, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.pch_gbe_mac_info*, %struct.pch_gbe_mac_info** %5, align 8
  %45 = getelementptr inbounds %struct.pch_gbe_mac_info, %struct.pch_gbe_mac_info* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  br label %59

46:                                               ; preds = %1
  %47 = load i32, i32* @PCH_GBE_FL_CTRL_EN, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load %struct.pch_gbe_mac_info*, %struct.pch_gbe_mac_info** %5, align 8
  %51 = getelementptr inbounds %struct.pch_gbe_mac_info, %struct.pch_gbe_mac_info* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  br label %59

52:                                               ; preds = %1
  %53 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %54 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @netdev_err(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %89

59:                                               ; preds = %46, %39, %33, %26
  %60 = load %struct.pch_gbe_mac_info*, %struct.pch_gbe_mac_info** %5, align 8
  %61 = getelementptr inbounds %struct.pch_gbe_mac_info, %struct.pch_gbe_mac_info* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DUPLEX_HALF, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i32, i32* @PCH_GBE_FL_CTRL_EN, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %65, %59
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %73 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @iowrite32(i32 %71, i32* %75)
  %77 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %78 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %81 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = call i32 @ioread32(i32* %83)
  %85 = load %struct.pch_gbe_mac_info*, %struct.pch_gbe_mac_info** %5, align 8
  %86 = getelementptr inbounds %struct.pch_gbe_mac_info, %struct.pch_gbe_mac_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %79, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %70, %52
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
