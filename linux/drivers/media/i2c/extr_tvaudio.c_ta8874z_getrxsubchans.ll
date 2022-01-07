; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_ta8874z_getrxsubchans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_ta8874z_getrxsubchans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { i32 }

@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@TA8874Z_B1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@TA8874Z_B0 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.CHIPSTATE*)* @ta8874z_getrxsubchans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta8874z_getrxsubchans(%struct.CHIPSTATE* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.CHIPSTATE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %3, align 8
  %6 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %8 = call i32 @chip_read(%struct.CHIPSTATE* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %34

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @TA8874Z_B1, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %20 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %32

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @TA8874Z_B0, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %24
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @chip_read(%struct.CHIPSTATE*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
