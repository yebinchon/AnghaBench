; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mv88e6060.c_mv88e6060_setup_global.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mv88e6060.c_mv88e6060_setup_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6060_priv = type { i32 }

@REG_GLOBAL = common dso_local global i32 0, align 4
@GLOBAL_CONTROL = common dso_local global i32 0, align 4
@GLOBAL_CONTROL_MAX_FRAME_1536 = common dso_local global i32 0, align 4
@GLOBAL_ATU_CONTROL = common dso_local global i32 0, align 4
@GLOBAL_ATU_CONTROL_LEARNDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6060_priv*)* @mv88e6060_setup_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6060_setup_global(%struct.mv88e6060_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv88e6060_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.mv88e6060_priv* %0, %struct.mv88e6060_priv** %3, align 8
  %5 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %3, align 8
  %6 = load i32, i32* @REG_GLOBAL, align 4
  %7 = load i32, i32* @GLOBAL_CONTROL, align 4
  %8 = load i32, i32* @GLOBAL_CONTROL_MAX_FRAME_1536, align 4
  %9 = call i32 @reg_write(%struct.mv88e6060_priv* %5, i32 %6, i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %3, align 8
  %16 = load i32, i32* @REG_GLOBAL, align 4
  %17 = load i32, i32* @GLOBAL_ATU_CONTROL, align 4
  %18 = load i32, i32* @GLOBAL_ATU_CONTROL_LEARNDIS, align 4
  %19 = call i32 @reg_write(%struct.mv88e6060_priv* %15, i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %14, %12
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @reg_write(%struct.mv88e6060_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
