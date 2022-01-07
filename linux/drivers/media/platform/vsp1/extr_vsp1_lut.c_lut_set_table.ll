; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_lut.c_lut_set_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_lut.c_lut_set_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_lut = type { i32, i32, i32 }
%struct.v4l2_ctrl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.vsp1_dl_body = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@LUT_SIZE = common dso_local global i32 0, align 4
@VI6_LUT_TABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsp1_lut*, %struct.v4l2_ctrl*)* @lut_set_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lut_set_table(%struct.vsp1_lut* %0, %struct.v4l2_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vsp1_lut*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca %struct.vsp1_dl_body*, align 8
  %7 = alloca i32, align 4
  store %struct.vsp1_lut* %0, %struct.vsp1_lut** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  %8 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  %9 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.vsp1_dl_body* @vsp1_dl_body_get(i32 %10)
  store %struct.vsp1_dl_body* %11, %struct.vsp1_dl_body** %6, align 8
  %12 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %6, align 8
  %13 = icmp ne %struct.vsp1_dl_body* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %55

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %38, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @LUT_SIZE, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %6, align 8
  %24 = load i64, i64* @VI6_LUT_TABLE, align 8
  %25 = load i32, i32* %7, align 4
  %26 = mul i32 4, %25
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @vsp1_dl_body_write(%struct.vsp1_dl_body* %23, i64 %28, i32 %36)
  br label %38

38:                                               ; preds = %22
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %18

41:                                               ; preds = %18
  %42 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  %43 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %42, i32 0, i32 0
  %44 = call i32 @spin_lock_irq(i32* %43)
  %45 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  %46 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %6, align 8
  %49 = call i32 @swap(i32 %47, %struct.vsp1_dl_body* %48)
  %50 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  %51 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_irq(i32* %51)
  %53 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %6, align 8
  %54 = call i32 @vsp1_dl_body_put(%struct.vsp1_dl_body* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %41, %14
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.vsp1_dl_body* @vsp1_dl_body_get(i32) #1

declare dso_local i32 @vsp1_dl_body_write(%struct.vsp1_dl_body*, i64, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @swap(i32, %struct.vsp1_dl_body*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @vsp1_dl_body_put(%struct.vsp1_dl_body*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
