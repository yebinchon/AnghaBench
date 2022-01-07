; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_set_video_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_set_video_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { i64, i32 }

@V4L2_MBUS_CSI2_DPHY = common dso_local global i64 0, align 8
@EN_PACKETS_CSI2 = common dso_local global i64 0, align 8
@REG_OIF_EN_MIPI_LANES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k5baf*)* @s5k5baf_hw_set_video_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_hw_set_video_bus(%struct.s5k5baf* %0) #0 {
  %2 = alloca %struct.s5k5baf*, align 8
  %3 = alloca i64, align 8
  store %struct.s5k5baf* %0, %struct.s5k5baf** %2, align 8
  %4 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %5 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @V4L2_MBUS_CSI2_DPHY, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i64, i64* @EN_PACKETS_CSI2, align 8
  store i64 %10, i64* %3, align 8
  br label %12

11:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %11, %9
  %13 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %14 = load i32, i32* @REG_OIF_EN_MIPI_LANES, align 4
  %15 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %16 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @s5k5baf_write_seq(%struct.s5k5baf* %13, i32 %14, i32 %17, i64 %18, i32 1)
  %20 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %21 = call i32 @s5k5baf_clear_error(%struct.s5k5baf* %20)
  ret i32 %21
}

declare dso_local i32 @s5k5baf_write_seq(%struct.s5k5baf*, i32, i32, i64, i32) #1

declare dso_local i32 @s5k5baf_clear_error(%struct.s5k5baf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
