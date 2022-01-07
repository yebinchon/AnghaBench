; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_hang_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_hang_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32 }

@CMD_HANG_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnic_dev_hang_reset(%struct.vnic_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnic_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vnic_dev* %0, %struct.vnic_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1000, i32* %8, align 4
  %11 = load %struct.vnic_dev*, %struct.vnic_dev** %4, align 8
  %12 = load i32, i32* @CMD_HANG_RESET, align 4
  %13 = call i64 @vnic_dev_capable(%struct.vnic_dev* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.vnic_dev*, %struct.vnic_dev** %4, align 8
  %17 = load i32, i32* @CMD_HANG_RESET, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @vnic_dev_cmd(%struct.vnic_dev* %16, i32 %17, i32* %6, i32* %7, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %31

20:                                               ; preds = %2
  %21 = load %struct.vnic_dev*, %struct.vnic_dev** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @vnic_dev_soft_reset(%struct.vnic_dev* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load %struct.vnic_dev*, %struct.vnic_dev** %4, align 8
  %30 = call i32 @vnic_dev_init(%struct.vnic_dev* %29, i32 0)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %26, %15
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @vnic_dev_capable(%struct.vnic_dev*, i32) #1

declare dso_local i32 @vnic_dev_cmd(%struct.vnic_dev*, i32, i32*, i32*, i32) #1

declare dso_local i32 @vnic_dev_soft_reset(%struct.vnic_dev*, i32) #1

declare dso_local i32 @vnic_dev_init(%struct.vnic_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
