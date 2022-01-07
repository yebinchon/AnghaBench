; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_set_auto_exposure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_set_auto_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@AALG_AE_EN = common dso_local global i32 0, align 4
@AALG_DIVLEI_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5k5baf*, i32)* @s5k5baf_hw_set_auto_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5k5baf_hw_set_auto_exposure(%struct.s5k5baf* %0, i32 %1) #0 {
  %3 = alloca %struct.s5k5baf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s5k5baf* %0, %struct.s5k5baf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %11 = load i32, i32* @AALG_AE_EN, align 4
  %12 = load i32, i32* @AALG_DIVLEI_EN, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @s5k5baf_hw_set_alg(%struct.s5k5baf* %10, i32 %13, i32 1)
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %17 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @s5k5baf_hw_set_user_exposure(%struct.s5k5baf* %22, i32 %23)
  %25 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %26 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %27 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @s5k5baf_hw_set_user_gain(%struct.s5k5baf* %25, i32 %31)
  %33 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %34 = load i32, i32* @AALG_AE_EN, align 4
  %35 = load i32, i32* @AALG_DIVLEI_EN, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @s5k5baf_hw_set_alg(%struct.s5k5baf* %33, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %15, %9
  ret void
}

declare dso_local i32 @s5k5baf_hw_set_alg(%struct.s5k5baf*, i32, i32) #1

declare dso_local i32 @s5k5baf_hw_set_user_exposure(%struct.s5k5baf*, i32) #1

declare dso_local i32 @s5k5baf_hw_set_user_gain(%struct.s5k5baf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
