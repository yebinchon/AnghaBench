; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dlm_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dlm_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VI6_DL_CTRL_AR_WAIT_SHIFT = common dso_local global i32 0, align 4
@VI6_DL_CTRL_DC2 = common dso_local global i32 0, align 4
@VI6_DL_CTRL_DC1 = common dso_local global i32 0, align 4
@VI6_DL_CTRL_DC0 = common dso_local global i32 0, align 4
@VI6_DL_CTRL_DLE = common dso_local global i32 0, align 4
@VI6_DL_EXT_CTRL_POLINT_SHIFT = common dso_local global i32 0, align 4
@VI6_DL_EXT_CTRL_DLPRI = common dso_local global i32 0, align 4
@VI6_DL_EXT_CTRL_EXT = common dso_local global i32 0, align 4
@VSP1_HAS_EXT_DL = common dso_local global i32 0, align 4
@VI6_DL_CTRL = common dso_local global i32 0, align 4
@VI6_DL_SWAP = common dso_local global i32 0, align 4
@VI6_DL_SWAP_LWS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsp1_dlm_setup(%struct.vsp1_device* %0) #0 {
  %2 = alloca %struct.vsp1_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vsp1_device* %0, %struct.vsp1_device** %2, align 8
  %6 = load i32, i32* @VI6_DL_CTRL_AR_WAIT_SHIFT, align 4
  %7 = shl i32 256, %6
  %8 = load i32, i32* @VI6_DL_CTRL_DC2, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @VI6_DL_CTRL_DC1, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @VI6_DL_CTRL_DC0, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @VI6_DL_CTRL_DLE, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @VI6_DL_EXT_CTRL_POLINT_SHIFT, align 4
  %17 = shl i32 2, %16
  %18 = load i32, i32* @VI6_DL_EXT_CTRL_DLPRI, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @VI6_DL_EXT_CTRL_EXT, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.vsp1_device*, %struct.vsp1_device** %2, align 8
  %23 = load i32, i32* @VSP1_HAS_EXT_DL, align 4
  %24 = call i64 @vsp1_feature(%struct.vsp1_device* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.vsp1_device*, %struct.vsp1_device** %2, align 8
  %30 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ult i32 %28, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load %struct.vsp1_device*, %struct.vsp1_device** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @VI6_DL_EXT_CTRL(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @vsp1_write(%struct.vsp1_device* %36, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %3, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %27

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.vsp1_device*, %struct.vsp1_device** %2, align 8
  %47 = load i32, i32* @VI6_DL_CTRL, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @vsp1_write(%struct.vsp1_device* %46, i32 %47, i32 %48)
  %50 = load %struct.vsp1_device*, %struct.vsp1_device** %2, align 8
  %51 = load i32, i32* @VI6_DL_SWAP, align 4
  %52 = load i32, i32* @VI6_DL_SWAP_LWS, align 4
  %53 = call i32 @vsp1_write(%struct.vsp1_device* %50, i32 %51, i32 %52)
  ret void
}

declare dso_local i64 @vsp1_feature(%struct.vsp1_device*, i32) #1

declare dso_local i32 @vsp1_write(%struct.vsp1_device*, i32, i32) #1

declare dso_local i32 @VI6_DL_EXT_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
