; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vip.h_xvip_print_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vip.h_xvip_print_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvip_device = type { i32 }

@XVIP_CTRL_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"device found, version %u.%02x%x\0A\00", align 1
@XVIP_CTRL_VERSION_MAJOR_MASK = common dso_local global i32 0, align 4
@XVIP_CTRL_VERSION_MAJOR_SHIFT = common dso_local global i32 0, align 4
@XVIP_CTRL_VERSION_MINOR_MASK = common dso_local global i32 0, align 4
@XVIP_CTRL_VERSION_MINOR_SHIFT = common dso_local global i32 0, align 4
@XVIP_CTRL_VERSION_REVISION_MASK = common dso_local global i32 0, align 4
@XVIP_CTRL_VERSION_REVISION_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xvip_device*)* @xvip_print_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xvip_print_version(%struct.xvip_device* %0) #0 {
  %2 = alloca %struct.xvip_device*, align 8
  %3 = alloca i32, align 4
  store %struct.xvip_device* %0, %struct.xvip_device** %2, align 8
  %4 = load %struct.xvip_device*, %struct.xvip_device** %2, align 8
  %5 = load i32, i32* @XVIP_CTRL_VERSION, align 4
  %6 = call i32 @xvip_read(%struct.xvip_device* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.xvip_device*, %struct.xvip_device** %2, align 8
  %8 = getelementptr inbounds %struct.xvip_device, %struct.xvip_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @XVIP_CTRL_VERSION_MAJOR_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @XVIP_CTRL_VERSION_MAJOR_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @XVIP_CTRL_VERSION_MINOR_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @XVIP_CTRL_VERSION_MINOR_SHIFT, align 4
  %19 = ashr i32 %17, %18
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @XVIP_CTRL_VERSION_REVISION_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @XVIP_CTRL_VERSION_REVISION_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = call i32 @dev_info(i32 %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %19, i32 %24)
  ret void
}

declare dso_local i32 @xvip_read(%struct.xvip_device*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
