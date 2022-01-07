; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_hsit.c_vsp1_hsit_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_hsit.c_vsp1_hsit_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_hsit = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.vsp1_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hsit_entity_ops = common dso_local global i32 0, align 4
@VSP1_ENTITY_HSI = common dso_local global i32 0, align 4
@VSP1_ENTITY_HST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"hsi\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"hst\00", align 1
@hsit_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_PROC_VIDEO_PIXEL_ENC_CONV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vsp1_hsit* @vsp1_hsit_create(%struct.vsp1_device* %0, i32 %1) #0 {
  %3 = alloca %struct.vsp1_hsit*, align 8
  %4 = alloca %struct.vsp1_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vsp1_hsit*, align 8
  %7 = alloca i32, align 4
  store %struct.vsp1_device* %0, %struct.vsp1_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %9 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.vsp1_hsit* @devm_kzalloc(i32 %10, i32 24, i32 %11)
  store %struct.vsp1_hsit* %12, %struct.vsp1_hsit** %6, align 8
  %13 = load %struct.vsp1_hsit*, %struct.vsp1_hsit** %6, align 8
  %14 = icmp eq %struct.vsp1_hsit* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.vsp1_hsit* @ERR_PTR(i32 %17)
  store %struct.vsp1_hsit* %18, %struct.vsp1_hsit** %3, align 8
  br label %55

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.vsp1_hsit*, %struct.vsp1_hsit** %6, align 8
  %22 = getelementptr inbounds %struct.vsp1_hsit, %struct.vsp1_hsit* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.vsp1_hsit*, %struct.vsp1_hsit** %6, align 8
  %24 = getelementptr inbounds %struct.vsp1_hsit, %struct.vsp1_hsit* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32* @hsit_entity_ops, i32** %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load i32, i32* @VSP1_ENTITY_HSI, align 4
  %30 = load %struct.vsp1_hsit*, %struct.vsp1_hsit** %6, align 8
  %31 = getelementptr inbounds %struct.vsp1_hsit, %struct.vsp1_hsit* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  br label %38

33:                                               ; preds = %19
  %34 = load i32, i32* @VSP1_ENTITY_HST, align 4
  %35 = load %struct.vsp1_hsit*, %struct.vsp1_hsit** %6, align 8
  %36 = getelementptr inbounds %struct.vsp1_hsit, %struct.vsp1_hsit* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %40 = load %struct.vsp1_hsit*, %struct.vsp1_hsit** %6, align 8
  %41 = getelementptr inbounds %struct.vsp1_hsit, %struct.vsp1_hsit* %40, i32 0, i32 1
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %46 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_PIXEL_ENC_CONV, align 4
  %47 = call i32 @vsp1_entity_init(%struct.vsp1_device* %39, %struct.TYPE_2__* %41, i8* %45, i32 2, i32* @hsit_ops, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  %52 = call %struct.vsp1_hsit* @ERR_PTR(i32 %51)
  store %struct.vsp1_hsit* %52, %struct.vsp1_hsit** %3, align 8
  br label %55

53:                                               ; preds = %38
  %54 = load %struct.vsp1_hsit*, %struct.vsp1_hsit** %6, align 8
  store %struct.vsp1_hsit* %54, %struct.vsp1_hsit** %3, align 8
  br label %55

55:                                               ; preds = %53, %50, %15
  %56 = load %struct.vsp1_hsit*, %struct.vsp1_hsit** %3, align 8
  ret %struct.vsp1_hsit* %56
}

declare dso_local %struct.vsp1_hsit* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.vsp1_hsit* @ERR_PTR(i32) #1

declare dso_local i32 @vsp1_entity_init(%struct.vsp1_device*, %struct.TYPE_2__*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
