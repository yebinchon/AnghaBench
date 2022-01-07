; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_get_phys_port_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_get_phys_port_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rocker_port = type { i32 }
%struct.port_name = type { i8*, i64 }

@rocker_cmd_get_port_settings_prep = common dso_local global i32 0, align 4
@rocker_cmd_get_port_settings_phys_name_proc = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*, i64)* @rocker_port_get_phys_port_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_port_get_phys_port_name(%struct.net_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rocker_port*, align 8
  %8 = alloca %struct.port_name, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.rocker_port* @netdev_priv(%struct.net_device* %10)
  store %struct.rocker_port* %11, %struct.rocker_port** %7, align 8
  %12 = getelementptr inbounds %struct.port_name, %struct.port_name* %8, i32 0, i32 0
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.port_name, %struct.port_name* %8, i32 0, i32 1
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %14, align 8
  %16 = load %struct.rocker_port*, %struct.rocker_port** %7, align 8
  %17 = load i32, i32* @rocker_cmd_get_port_settings_prep, align 4
  %18 = load i32, i32* @rocker_cmd_get_port_settings_phys_name_proc, align 4
  %19 = call i32 @rocker_cmd_exec(%struct.rocker_port* %16, i32 0, i32 %17, i32* null, i32 %18, %struct.port_name* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i32 [ %24, %22 ], [ 0, %25 ]
  ret i32 %27
}

declare dso_local %struct.rocker_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rocker_cmd_exec(%struct.rocker_port*, i32, i32, i32*, i32, %struct.port_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
