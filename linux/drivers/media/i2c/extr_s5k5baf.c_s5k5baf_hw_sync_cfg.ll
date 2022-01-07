; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_sync_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_sync_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { i64 }

@REG_G_PREV_CFG_CHG = common dso_local global i32 0, align 4
@REG_G_INPUTS_CHANGE_REQ = common dso_local global i32 0, align 4
@REG_G_PREV_CFG_BYPASS_CHANGED = common dso_local global i32 0, align 4
@REG_G_NEW_CFG_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5k5baf*)* @s5k5baf_hw_sync_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5k5baf_hw_sync_cfg(%struct.s5k5baf* %0) #0 {
  %2 = alloca %struct.s5k5baf*, align 8
  store %struct.s5k5baf* %0, %struct.s5k5baf** %2, align 8
  %3 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %4 = load i32, i32* @REG_G_PREV_CFG_CHG, align 4
  %5 = call i32 @s5k5baf_write(%struct.s5k5baf* %3, i32 %4, i32 1)
  %6 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %7 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %12 = load i32, i32* @REG_G_INPUTS_CHANGE_REQ, align 4
  %13 = call i32 @s5k5baf_write(%struct.s5k5baf* %11, i32 %12, i32 1)
  %14 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %15 = load i32, i32* @REG_G_PREV_CFG_BYPASS_CHANGED, align 4
  %16 = call i32 @s5k5baf_write(%struct.s5k5baf* %14, i32 %15, i32 1)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %19 = load i32, i32* @REG_G_NEW_CFG_SYNC, align 4
  %20 = call i32 @s5k5baf_synchronize(%struct.s5k5baf* %18, i32 500, i32 %19)
  ret void
}

declare dso_local i32 @s5k5baf_write(%struct.s5k5baf*, i32, i32) #1

declare dso_local i32 @s5k5baf_synchronize(%struct.s5k5baf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
