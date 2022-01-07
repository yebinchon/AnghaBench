; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_write_ee_hostif_data_X550.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_write_ee_hostif_data_X550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }
%struct.ixgbe_hic_write_shadow_ram = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i32 }

@FW_WRITE_SHADOW_RAM_CMD = common dso_local global i32 0, align 4
@FW_WRITE_SHADOW_RAM_LEN = common dso_local global i32 0, align 4
@FW_DEFAULT_CHECKSUM = common dso_local global i32 0, align 4
@IXGBE_HI_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32, i32)* @ixgbe_write_ee_hostif_data_X550 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_write_ee_hostif_data_X550(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ixgbe_hic_write_shadow_ram, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @FW_WRITE_SHADOW_RAM_CMD, align 4
  %10 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, %struct.ixgbe_hic_write_shadow_ram* %8, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i32 %9, i32* %12, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, %struct.ixgbe_hic_write_shadow_ram* %8, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @FW_WRITE_SHADOW_RAM_LEN, align 4
  %17 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, %struct.ixgbe_hic_write_shadow_ram* %8, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @FW_DEFAULT_CHECKSUM, align 4
  %21 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, %struct.ixgbe_hic_write_shadow_ram* %8, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = call i32 @cpu_to_be16(i32 4)
  %25 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, %struct.ixgbe_hic_write_shadow_ram* %8, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, %struct.ixgbe_hic_write_shadow_ram* %8, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 %28, 2
  %30 = call i32 @cpu_to_be32(i32 %29)
  %31 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, %struct.ixgbe_hic_write_shadow_ram* %8, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %33 = load i32, i32* @IXGBE_HI_COMMAND_TIMEOUT, align 4
  %34 = call i32 @ixgbe_host_interface_command(%struct.ixgbe_hw* %32, %struct.ixgbe_hic_write_shadow_ram* %8, i32 40, i32 %33, i32 0)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ixgbe_host_interface_command(%struct.ixgbe_hw*, %struct.ixgbe_hic_write_shadow_ram*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
