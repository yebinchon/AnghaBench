; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_brx.c_vsp1_brx_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_brx.c_vsp1_brx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_brx = type { %struct.TYPE_9__, %struct.TYPE_10__, i64, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.vsp1_device = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VSP1_ENTITY_BRU = common dso_local global i32 0, align 4
@VI6_BRU_BASE = common dso_local global i32 0, align 4
@VI6_BRS_BASE = common dso_local global i32 0, align 4
@brx_entity_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"bru\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"brs\00", align 1
@brx_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_PROC_VIDEO_COMPOSER = common dso_local global i32 0, align 4
@brx_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BG_COLOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: failed to initialize controls\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vsp1_brx* @vsp1_brx_create(%struct.vsp1_device* %0, i32 %1) #0 {
  %3 = alloca %struct.vsp1_brx*, align 8
  %4 = alloca %struct.vsp1_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vsp1_brx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.vsp1_device* %0, %struct.vsp1_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %11 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.vsp1_brx* @devm_kzalloc(i32 %12, i32 48, i32 %13)
  store %struct.vsp1_brx* %14, %struct.vsp1_brx** %6, align 8
  %15 = load %struct.vsp1_brx*, %struct.vsp1_brx** %6, align 8
  %16 = icmp eq %struct.vsp1_brx* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.vsp1_brx* @ERR_PTR(i32 %19)
  store %struct.vsp1_brx* %20, %struct.vsp1_brx** %3, align 8
  br label %102

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @VSP1_ENTITY_BRU, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @VI6_BRU_BASE, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @VI6_BRS_BASE, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = load %struct.vsp1_brx*, %struct.vsp1_brx** %6, align 8
  %32 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.vsp1_brx*, %struct.vsp1_brx** %6, align 8
  %34 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  store i32* @brx_entity_ops, i32** %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.vsp1_brx*, %struct.vsp1_brx** %6, align 8
  %38 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @VSP1_ENTITY_BRU, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %29
  %44 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %45 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %51

50:                                               ; preds = %29
  store i32 3, i32* %7, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %51

51:                                               ; preds = %50, %43
  %52 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %53 = load %struct.vsp1_brx*, %struct.vsp1_brx** %6, align 8
  %54 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %53, i32 0, i32 0
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_COMPOSER, align 4
  %58 = call i32 @vsp1_entity_init(%struct.vsp1_device* %52, %struct.TYPE_9__* %54, i8* %55, i32 %56, i32* @brx_ops, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i32, i32* %9, align 4
  %63 = call %struct.vsp1_brx* @ERR_PTR(i32 %62)
  store %struct.vsp1_brx* %63, %struct.vsp1_brx** %3, align 8
  br label %102

64:                                               ; preds = %51
  %65 = load %struct.vsp1_brx*, %struct.vsp1_brx** %6, align 8
  %66 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %65, i32 0, i32 1
  %67 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__* %66, i32 1)
  %68 = load %struct.vsp1_brx*, %struct.vsp1_brx** %6, align 8
  %69 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %68, i32 0, i32 1
  %70 = load i32, i32* @V4L2_CID_BG_COLOR, align 4
  %71 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_10__* %69, i32* @brx_ctrl_ops, i32 %70, i32 0, i32 16777215, i32 1, i32 0)
  %72 = load %struct.vsp1_brx*, %struct.vsp1_brx** %6, align 8
  %73 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.vsp1_brx*, %struct.vsp1_brx** %6, align 8
  %75 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %74, i32 0, i32 1
  %76 = load %struct.vsp1_brx*, %struct.vsp1_brx** %6, align 8
  %77 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %79, align 8
  %80 = load %struct.vsp1_brx*, %struct.vsp1_brx** %6, align 8
  %81 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %64
  %86 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %87 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %89)
  %91 = load %struct.vsp1_brx*, %struct.vsp1_brx** %6, align 8
  %92 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %9, align 4
  %95 = load %struct.vsp1_brx*, %struct.vsp1_brx** %6, align 8
  %96 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %95, i32 0, i32 0
  %97 = call i32 @vsp1_entity_destroy(%struct.TYPE_9__* %96)
  %98 = load i32, i32* %9, align 4
  %99 = call %struct.vsp1_brx* @ERR_PTR(i32 %98)
  store %struct.vsp1_brx* %99, %struct.vsp1_brx** %3, align 8
  br label %102

100:                                              ; preds = %64
  %101 = load %struct.vsp1_brx*, %struct.vsp1_brx** %6, align 8
  store %struct.vsp1_brx* %101, %struct.vsp1_brx** %3, align 8
  br label %102

102:                                              ; preds = %100, %85, %61, %17
  %103 = load %struct.vsp1_brx*, %struct.vsp1_brx** %3, align 8
  ret %struct.vsp1_brx* %103
}

declare dso_local %struct.vsp1_brx* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.vsp1_brx* @ERR_PTR(i32) #1

declare dso_local i32 @vsp1_entity_init(%struct.vsp1_device*, %struct.TYPE_9__*, i8*, i32, i32*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_10__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @vsp1_entity_destroy(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
