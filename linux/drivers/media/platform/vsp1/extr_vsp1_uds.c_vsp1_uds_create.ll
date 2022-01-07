; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_uds.c_vsp1_uds_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_uds.c_vsp1_uds_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_uds = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.vsp1_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uds_entity_ops = common dso_local global i32 0, align 4
@VSP1_ENTITY_UDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"uds.%u\00", align 1
@uds_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_PROC_VIDEO_SCALER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vsp1_uds* @vsp1_uds_create(%struct.vsp1_device* %0, i32 %1) #0 {
  %3 = alloca %struct.vsp1_uds*, align 8
  %4 = alloca %struct.vsp1_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vsp1_uds*, align 8
  %7 = alloca [6 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.vsp1_device* %0, %struct.vsp1_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %10 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.vsp1_uds* @devm_kzalloc(i32 %11, i32 16, i32 %12)
  store %struct.vsp1_uds* %13, %struct.vsp1_uds** %6, align 8
  %14 = load %struct.vsp1_uds*, %struct.vsp1_uds** %6, align 8
  %15 = icmp eq %struct.vsp1_uds* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.vsp1_uds* @ERR_PTR(i32 %18)
  store %struct.vsp1_uds* %19, %struct.vsp1_uds** %3, align 8
  br label %48

20:                                               ; preds = %2
  %21 = load %struct.vsp1_uds*, %struct.vsp1_uds** %6, align 8
  %22 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32* @uds_entity_ops, i32** %23, align 8
  %24 = load i32, i32* @VSP1_ENTITY_UDS, align 4
  %25 = load %struct.vsp1_uds*, %struct.vsp1_uds** %6, align 8
  %26 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.vsp1_uds*, %struct.vsp1_uds** %6, align 8
  %30 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %36 = load %struct.vsp1_uds*, %struct.vsp1_uds** %6, align 8
  %37 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %36, i32 0, i32 0
  %38 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %39 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_SCALER, align 4
  %40 = call i32 @vsp1_entity_init(%struct.vsp1_device* %35, %struct.TYPE_2__* %37, i8* %38, i32 2, i32* @uds_ops, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %20
  %44 = load i32, i32* %8, align 4
  %45 = call %struct.vsp1_uds* @ERR_PTR(i32 %44)
  store %struct.vsp1_uds* %45, %struct.vsp1_uds** %3, align 8
  br label %48

46:                                               ; preds = %20
  %47 = load %struct.vsp1_uds*, %struct.vsp1_uds** %6, align 8
  store %struct.vsp1_uds* %47, %struct.vsp1_uds** %3, align 8
  br label %48

48:                                               ; preds = %46, %43, %16
  %49 = load %struct.vsp1_uds*, %struct.vsp1_uds** %3, align 8
  ret %struct.vsp1_uds* %49
}

declare dso_local %struct.vsp1_uds* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.vsp1_uds* @ERR_PTR(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @vsp1_entity_init(%struct.vsp1_device*, %struct.TYPE_2__*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
