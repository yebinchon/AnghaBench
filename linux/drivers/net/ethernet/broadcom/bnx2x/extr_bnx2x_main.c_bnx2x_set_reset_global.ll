; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_reset_global.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_reset_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@HW_LOCK_RESOURCE_RECOVERY_REG = common dso_local global i32 0, align 4
@BNX2X_RECOVERY_GLOB_REG = common dso_local global i32 0, align 4
@BNX2X_GLOBAL_RESET_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_set_reset_global(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %4 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %5 = load i32, i32* @HW_LOCK_RESOURCE_RECOVERY_REG, align 4
  %6 = call i32 @bnx2x_acquire_hw_lock(%struct.bnx2x* %4, i32 %5)
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = load i32, i32* @BNX2X_RECOVERY_GLOB_REG, align 4
  %9 = call i32 @REG_RD(%struct.bnx2x* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = load i32, i32* @BNX2X_RECOVERY_GLOB_REG, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @BNX2X_GLOBAL_RESET_BIT, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @REG_WR(%struct.bnx2x* %10, i32 %11, i32 %14)
  %16 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %17 = load i32, i32* @HW_LOCK_RESOURCE_RECOVERY_REG, align 4
  %18 = call i32 @bnx2x_release_hw_lock(%struct.bnx2x* %16, i32 %17)
  ret void
}

declare dso_local i32 @bnx2x_acquire_hw_lock(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_release_hw_lock(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
