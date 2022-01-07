; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_apply_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_apply_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipid02_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mipid02_dev*)* @mipid02_apply_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mipid02_apply_reset(%struct.mipid02_dev* %0) #0 {
  %2 = alloca %struct.mipid02_dev*, align 8
  store %struct.mipid02_dev* %0, %struct.mipid02_dev** %2, align 8
  %3 = load %struct.mipid02_dev*, %struct.mipid02_dev** %2, align 8
  %4 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @gpiod_set_value_cansleep(i32 %5, i32 0)
  %7 = call i32 @usleep_range(i32 5000, i32 10000)
  %8 = load %struct.mipid02_dev*, %struct.mipid02_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @gpiod_set_value_cansleep(i32 %10, i32 1)
  %12 = call i32 @usleep_range(i32 5000, i32 10000)
  %13 = load %struct.mipid02_dev*, %struct.mipid02_dev** %2, align 8
  %14 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gpiod_set_value_cansleep(i32 %15, i32 0)
  %17 = call i32 @usleep_range(i32 5000, i32 10000)
  ret void
}

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
