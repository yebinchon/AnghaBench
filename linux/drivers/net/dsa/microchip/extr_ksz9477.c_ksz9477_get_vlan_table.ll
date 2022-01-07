; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_get_vlan_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_get_vlan_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32, i32 }

@REG_SW_VLAN_ENTRY_INDEX__2 = common dso_local global i32 0, align 4
@VLAN_INDEX_M = common dso_local global i32 0, align 4
@REG_SW_VLAN_CTRL = common dso_local global i32 0, align 4
@VLAN_READ = common dso_local global i32 0, align 4
@VLAN_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to read vlan table\0A\00", align 1
@REG_SW_VLAN_ENTRY__4 = common dso_local global i32 0, align 4
@REG_SW_VLAN_ENTRY_UNTAG__4 = common dso_local global i32 0, align 4
@REG_SW_VLAN_ENTRY_PORTS__4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_device*, i32, i32*)* @ksz9477_get_vlan_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9477_get_vlan_table(%struct.ksz_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ksz_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %9 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %12 = load i32, i32* @REG_SW_VLAN_ENTRY_INDEX__2, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @VLAN_INDEX_M, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @ksz_write16(%struct.ksz_device* %11, i32 %12, i32 %15)
  %17 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %18 = load i32, i32* @REG_SW_VLAN_CTRL, align 4
  %19 = load i32, i32* @VLAN_READ, align 4
  %20 = load i32, i32* @VLAN_START, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @ksz_write8(%struct.ksz_device* %17, i32 %18, i32 %21)
  %23 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %24 = call i32 @ksz9477_wait_vlan_ctrl_ready(%struct.ksz_device* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %29 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %51

32:                                               ; preds = %3
  %33 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %34 = load i32, i32* @REG_SW_VLAN_ENTRY__4, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = call i32 @ksz_read32(%struct.ksz_device* %33, i32 %34, i32* %36)
  %38 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %39 = load i32, i32* @REG_SW_VLAN_ENTRY_UNTAG__4, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = call i32 @ksz_read32(%struct.ksz_device* %38, i32 %39, i32* %41)
  %43 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %44 = load i32, i32* @REG_SW_VLAN_ENTRY_PORTS__4, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = call i32 @ksz_read32(%struct.ksz_device* %43, i32 %44, i32* %46)
  %48 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %49 = load i32, i32* @REG_SW_VLAN_CTRL, align 4
  %50 = call i32 @ksz_write8(%struct.ksz_device* %48, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %32, %27
  %52 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %53 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ksz_write16(%struct.ksz_device*, i32, i32) #1

declare dso_local i32 @ksz_write8(%struct.ksz_device*, i32, i32) #1

declare dso_local i32 @ksz9477_wait_vlan_ctrl_ready(%struct.ksz_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @ksz_read32(%struct.ksz_device*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
