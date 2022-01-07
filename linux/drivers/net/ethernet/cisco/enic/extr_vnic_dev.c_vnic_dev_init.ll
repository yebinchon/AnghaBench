; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32 }

@CMD_INIT = common dso_local global i32 0, align 4
@CMD_INIT_v1 = common dso_local global i32 0, align 4
@CMD_INITF_DEFAULT_MAC = common dso_local global i32 0, align 4
@CMD_GET_MAC_ADDR = common dso_local global i32 0, align 4
@CMD_ADDR_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnic_dev_init(%struct.vnic_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.vnic_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vnic_dev* %0, %struct.vnic_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 1000, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %11 = load i32, i32* @CMD_INIT, align 4
  %12 = call i64 @vnic_dev_capable(%struct.vnic_dev* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %16 = load i32, i32* @CMD_INIT, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @vnic_dev_cmd(%struct.vnic_dev* %15, i32 %16, i32* %5, i32* %6, i32 %17)
  store i32 %18, i32* %8, align 4
  br label %38

19:                                               ; preds = %2
  %20 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %21 = load i32, i32* @CMD_INIT_v1, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @vnic_dev_cmd(%struct.vnic_dev* %20, i32 %21, i32* %5, i32* %6, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @CMD_INITF_DEFAULT_MAC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %30 = load i32, i32* @CMD_GET_MAC_ADDR, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @vnic_dev_cmd(%struct.vnic_dev* %29, i32 %30, i32* %5, i32* %6, i32 %31)
  %33 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %34 = load i32, i32* @CMD_ADDR_ADD, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @vnic_dev_cmd(%struct.vnic_dev* %33, i32 %34, i32* %5, i32* %6, i32 %35)
  br label %37

37:                                               ; preds = %28, %19
  br label %38

38:                                               ; preds = %37, %14
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local i64 @vnic_dev_capable(%struct.vnic_dev*, i32) #1

declare dso_local i32 @vnic_dev_cmd(%struct.vnic_dev*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
