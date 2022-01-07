; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_freeze_mib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_freeze_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32 }

@REG_SW_CTRL_6 = common dso_local global i32 0, align 4
@SW_MIB_COUNTER_FREEZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_device*, i32, i32)* @ksz8795_freeze_mib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz8795_freeze_mib(%struct.ksz_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ksz_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %11 = load i32, i32* @REG_SW_CTRL_6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = call i32 @ksz_cfg(%struct.ksz_device* %10, i32 %11, i32 %13, i32 1)
  br label %15

15:                                               ; preds = %9, %3
  %16 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %17 = load i32, i32* @REG_SW_CTRL_6, align 4
  %18 = load i32, i32* @SW_MIB_COUNTER_FREEZE, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ksz_cfg(%struct.ksz_device* %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %15
  %24 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %25 = load i32, i32* @REG_SW_CTRL_6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = call i32 @ksz_cfg(%struct.ksz_device* %24, i32 %25, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %23, %15
  ret void
}

declare dso_local i32 @ksz_cfg(%struct.ksz_device*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
