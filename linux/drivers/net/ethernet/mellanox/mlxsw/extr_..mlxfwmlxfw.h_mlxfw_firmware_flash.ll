; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_..mlxfwmlxfw.h_mlxfw_firmware_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_..mlxfwmlxfw.h_mlxfw_firmware_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxfw_dev = type { i32 }
%struct.firmware = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxfw_dev*, %struct.firmware*, %struct.netlink_ext_ack*)* @mlxfw_firmware_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxfw_firmware_flash(%struct.mlxfw_dev* %0, %struct.firmware* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.mlxfw_dev*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.mlxfw_dev* %0, %struct.mlxfw_dev** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %7 = load i32, i32* @EOPNOTSUPP, align 4
  %8 = sub nsw i32 0, %7
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
