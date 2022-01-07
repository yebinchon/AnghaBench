; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_exposure_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_exposure_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov2680_dev = type { %struct.ov2680_ctrls }
%struct.ov2680_ctrls = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@OV2680_REG_R_MANUAL = common dso_local global i32 0, align 4
@OV2680_REG_EXPOSURE_PK_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov2680_dev*, i32)* @ov2680_exposure_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2680_exposure_set(%struct.ov2680_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov2680_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ov2680_ctrls*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ov2680_dev* %0, %struct.ov2680_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ov2680_dev*, %struct.ov2680_dev** %4, align 8
  %10 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %9, i32 0, i32 0
  store %struct.ov2680_ctrls* %10, %struct.ov2680_ctrls** %6, align 8
  %11 = load %struct.ov2680_dev*, %struct.ov2680_dev** %4, align 8
  %12 = load i32, i32* @OV2680_REG_R_MANUAL, align 4
  %13 = call i32 @BIT(i32 0)
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %19

17:                                               ; preds = %2
  %18 = call i32 @BIT(i32 0)
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i32 [ 0, %16 ], [ %18, %17 ]
  %21 = call i32 @ov2680_mod_reg(%struct.ov2680_dev* %11, i32 %12, i32 %13, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %50

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %6, align 8
  %31 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29, %26
  store i32 0, i32* %3, align 4
  br label %50

37:                                               ; preds = %29
  %38 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %6, align 8
  %39 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %44, 4
  store i32 %45, i32* %7, align 4
  %46 = load %struct.ov2680_dev*, %struct.ov2680_dev** %4, align 8
  %47 = load i32, i32* @OV2680_REG_EXPOSURE_PK_HIGH, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @ov2680_write_reg24(%struct.ov2680_dev* %46, i32 %47, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %37, %36, %24
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @ov2680_mod_reg(%struct.ov2680_dev*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ov2680_write_reg24(%struct.ov2680_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
