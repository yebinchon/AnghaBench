; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_registered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_registered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.s5k6aa = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @s5k6aa_registered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_registered(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.s5k6aa*, align 8
  %4 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %6 = call %struct.s5k6aa* @to_s5k6aa(%struct.v4l2_subdev* %5)
  store %struct.s5k6aa* %6, %struct.s5k6aa** %3, align 8
  %7 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %8 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %11 = call i32 @__s5k6aa_power_on(%struct.s5k6aa* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = call i32 @msleep(i32 100)
  %16 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %17 = call i32 @s5k6aa_check_fw_revision(%struct.s5k6aa* %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %19 = call i32 @__s5k6aa_power_off(%struct.s5k6aa* %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %22 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.s5k6aa* @to_s5k6aa(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__s5k6aa_power_on(%struct.s5k6aa*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @s5k6aa_check_fw_revision(%struct.s5k6aa*) #1

declare dso_local i32 @__s5k6aa_power_off(%struct.s5k6aa*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
