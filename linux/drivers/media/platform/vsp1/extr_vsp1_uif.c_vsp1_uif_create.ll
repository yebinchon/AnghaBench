; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_uif.c_vsp1_uif_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_uif.c_vsp1_uif_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_uif = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.vsp1_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vsp1_r8a7796 = common dso_local global i32 0, align 4
@uif_entity_ops = common dso_local global i32 0, align 4
@VSP1_ENTITY_UIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"uif.%u\00", align 1
@uif_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_PROC_VIDEO_STATISTICS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vsp1_uif* @vsp1_uif_create(%struct.vsp1_device* %0, i32 %1) #0 {
  %3 = alloca %struct.vsp1_uif*, align 8
  %4 = alloca %struct.vsp1_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vsp1_uif*, align 8
  %7 = alloca [6 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.vsp1_device* %0, %struct.vsp1_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %10 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.vsp1_uif* @devm_kzalloc(i32 %11, i32 24, i32 %12)
  store %struct.vsp1_uif* %13, %struct.vsp1_uif** %6, align 8
  %14 = load %struct.vsp1_uif*, %struct.vsp1_uif** %6, align 8
  %15 = icmp ne %struct.vsp1_uif* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.vsp1_uif* @ERR_PTR(i32 %18)
  store %struct.vsp1_uif* %19, %struct.vsp1_uif** %3, align 8
  br label %56

20:                                               ; preds = %2
  %21 = load i32, i32* @vsp1_r8a7796, align 4
  %22 = call i64 @soc_device_match(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.vsp1_uif*, %struct.vsp1_uif** %6, align 8
  %26 = getelementptr inbounds %struct.vsp1_uif, %struct.vsp1_uif* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %20
  %28 = load %struct.vsp1_uif*, %struct.vsp1_uif** %6, align 8
  %29 = getelementptr inbounds %struct.vsp1_uif, %struct.vsp1_uif* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32* @uif_entity_ops, i32** %30, align 8
  %31 = load i32, i32* @VSP1_ENTITY_UIF, align 4
  %32 = load %struct.vsp1_uif*, %struct.vsp1_uif** %6, align 8
  %33 = getelementptr inbounds %struct.vsp1_uif, %struct.vsp1_uif* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.vsp1_uif*, %struct.vsp1_uif** %6, align 8
  %37 = getelementptr inbounds %struct.vsp1_uif, %struct.vsp1_uif* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, 4
  %42 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %44 = load %struct.vsp1_uif*, %struct.vsp1_uif** %6, align 8
  %45 = getelementptr inbounds %struct.vsp1_uif, %struct.vsp1_uif* %44, i32 0, i32 1
  %46 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %47 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_STATISTICS, align 4
  %48 = call i32 @vsp1_entity_init(%struct.vsp1_device* %43, %struct.TYPE_2__* %45, i8* %46, i32 2, i32* @uif_ops, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %27
  %52 = load i32, i32* %8, align 4
  %53 = call %struct.vsp1_uif* @ERR_PTR(i32 %52)
  store %struct.vsp1_uif* %53, %struct.vsp1_uif** %3, align 8
  br label %56

54:                                               ; preds = %27
  %55 = load %struct.vsp1_uif*, %struct.vsp1_uif** %6, align 8
  store %struct.vsp1_uif* %55, %struct.vsp1_uif** %3, align 8
  br label %56

56:                                               ; preds = %54, %51, %16
  %57 = load %struct.vsp1_uif*, %struct.vsp1_uif** %3, align 8
  ret %struct.vsp1_uif* %57
}

declare dso_local %struct.vsp1_uif* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.vsp1_uif* @ERR_PTR(i32) #1

declare dso_local i64 @soc_device_match(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @vsp1_entity_init(%struct.vsp1_device*, %struct.TYPE_2__*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
