; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_engine_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_engine_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r852_device = type { i32 }

@R852_HW = common dso_local global i32 0, align 4
@R852_HW_UNKNOWN = common dso_local global i32 0, align 4
@R852_CTL = common dso_local global i32 0, align 4
@R852_CTL_RESET = common dso_local global i32 0, align 4
@R852_CTL_ON = common dso_local global i32 0, align 4
@R852_HW_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r852_device*)* @r852_engine_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r852_engine_enable(%struct.r852_device* %0) #0 {
  %2 = alloca %struct.r852_device*, align 8
  store %struct.r852_device* %0, %struct.r852_device** %2, align 8
  %3 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %4 = load i32, i32* @R852_HW, align 4
  %5 = call i32 @r852_read_reg_dword(%struct.r852_device* %3, i32 %4)
  %6 = load i32, i32* @R852_HW_UNKNOWN, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %11 = load i32, i32* @R852_CTL, align 4
  %12 = load i32, i32* @R852_CTL_RESET, align 4
  %13 = load i32, i32* @R852_CTL_ON, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @r852_write_reg(%struct.r852_device* %10, i32 %11, i32 %14)
  %16 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %17 = load i32, i32* @R852_HW, align 4
  %18 = load i32, i32* @R852_HW_ENABLED, align 4
  %19 = call i32 @r852_write_reg_dword(%struct.r852_device* %16, i32 %17, i32 %18)
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %22 = load i32, i32* @R852_HW, align 4
  %23 = load i32, i32* @R852_HW_ENABLED, align 4
  %24 = call i32 @r852_write_reg_dword(%struct.r852_device* %21, i32 %22, i32 %23)
  %25 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %26 = load i32, i32* @R852_CTL, align 4
  %27 = load i32, i32* @R852_CTL_RESET, align 4
  %28 = load i32, i32* @R852_CTL_ON, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @r852_write_reg(%struct.r852_device* %25, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %20, %9
  %32 = call i32 @msleep(i32 300)
  %33 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %34 = load i32, i32* @R852_CTL, align 4
  %35 = call i32 @r852_write_reg(%struct.r852_device* %33, i32 %34, i32 0)
  ret void
}

declare dso_local i32 @r852_read_reg_dword(%struct.r852_device*, i32) #1

declare dso_local i32 @r852_write_reg(%struct.r852_device*, i32, i32) #1

declare dso_local i32 @r852_write_reg_dword(%struct.r852_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
