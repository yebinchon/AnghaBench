; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_flush_dyn_mac_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_flush_dyn_mac_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32, i32* }

@REG_SW_LUE_CTRL_2 = common dso_local global i32 0, align 4
@SW_FLUSH_OPTION_M = common dso_local global i32 0, align 4
@SW_FLUSH_OPTION_S = common dso_local global i32 0, align 4
@SW_FLUSH_OPTION_DYN_MAC = common dso_local global i32 0, align 4
@P_STP_CTRL = common dso_local global i32 0, align 4
@PORT_LEARN_DISABLE = common dso_local global i32 0, align 4
@S_FLUSH_TABLE_CTRL = common dso_local global i32 0, align 4
@SW_FLUSH_DYN_MAC_TABLE = common dso_local global i32 0, align 4
@SW_FLUSH_STP_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_device*, i32)* @ksz9477_flush_dyn_mac_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz9477_flush_dyn_mac_table(%struct.ksz_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ksz_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %7 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @REG_SW_LUE_CTRL_2, align 4
  %12 = load i32, i32* @SW_FLUSH_OPTION_M, align 4
  %13 = load i32, i32* @SW_FLUSH_OPTION_S, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* @SW_FLUSH_OPTION_DYN_MAC, align 4
  %16 = load i32, i32* @SW_FLUSH_OPTION_S, align 4
  %17 = shl i32 %15, %16
  %18 = call i32 @regmap_update_bits(i32 %10, i32 %11, i32 %14, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %21 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %2
  %25 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @P_STP_CTRL, align 4
  %28 = call i32 @ksz_pread8(%struct.ksz_device* %25, i32 %26, i32 %27, i32* %5)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @PORT_LEARN_DISABLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %24
  %34 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @P_STP_CTRL, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PORT_LEARN_DISABLE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @ksz_pwrite8(%struct.ksz_device* %34, i32 %35, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %33, %24
  %42 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %43 = load i32, i32* @S_FLUSH_TABLE_CTRL, align 4
  %44 = load i32, i32* @SW_FLUSH_DYN_MAC_TABLE, align 4
  %45 = call i32 @ksz_cfg(%struct.ksz_device* %42, i32 %43, i32 %44, i32 1)
  %46 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @P_STP_CTRL, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @ksz_pwrite8(%struct.ksz_device* %46, i32 %47, i32 %48, i32 %49)
  br label %56

51:                                               ; preds = %2
  %52 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %53 = load i32, i32* @S_FLUSH_TABLE_CTRL, align 4
  %54 = load i32, i32* @SW_FLUSH_STP_TABLE, align 4
  %55 = call i32 @ksz_cfg(%struct.ksz_device* %52, i32 %53, i32 %54, i32 1)
  br label %56

56:                                               ; preds = %51, %41
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ksz_pread8(%struct.ksz_device*, i32, i32, i32*) #1

declare dso_local i32 @ksz_pwrite8(%struct.ksz_device*, i32, i32, i32) #1

declare dso_local i32 @ksz_cfg(%struct.ksz_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
