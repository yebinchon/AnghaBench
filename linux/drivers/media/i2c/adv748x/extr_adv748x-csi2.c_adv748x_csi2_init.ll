; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-csi2.c_adv748x_csi2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-csi2.c_adv748x_csi2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_state = type { i32* }
%struct.adv748x_csi2 = type { i64, %struct.TYPE_4__, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, i32*, i32 }
%struct.TYPE_5__ = type { i32 }

@adv748x_csi2_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_VID_IF_BRIDGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"txa\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"txb\00", align 1
@adv748x_csi2_internal_ops = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@ADV748X_CSI2_SINK = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@ADV748X_CSI2_SOURCE = common dso_local global i64 0, align 8
@ADV748X_CSI2_NR_PADS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adv748x_csi2_init(%struct.adv748x_state* %0, %struct.adv748x_csi2* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adv748x_state*, align 8
  %5 = alloca %struct.adv748x_csi2*, align 8
  %6 = alloca i32, align 4
  store %struct.adv748x_state* %0, %struct.adv748x_state** %4, align 8
  store %struct.adv748x_csi2* %1, %struct.adv748x_csi2** %5, align 8
  %7 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %5, align 8
  %8 = call i32 @is_tx_enabled(%struct.adv748x_csi2* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %89

11:                                               ; preds = %2
  %12 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %5, align 8
  %13 = call i32 @adv748x_csi2_set_virtual_channel(%struct.adv748x_csi2* %12, i32 0)
  %14 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %5, align 8
  %15 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %14, i32 0, i32 1
  %16 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %17 = load i32, i32* @MEDIA_ENT_F_VID_IF_BRIDGE, align 4
  %18 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %5, align 8
  %19 = call i64 @is_txa(%struct.adv748x_csi2* %18)
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %23 = call i32 @adv748x_subdev_init(%struct.TYPE_4__* %15, %struct.adv748x_state* %16, i32* @adv748x_csi2_ops, i32 %17, i8* %22)
  %24 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %25 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %5, align 8
  %28 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @of_fwnode_handle(i32 %31)
  %33 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %5, align 8
  %34 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 8
  %36 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %5, align 8
  %37 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32* @adv748x_csi2_internal_ops, i32** %38, align 8
  %39 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %40 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %5, align 8
  %41 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i64, i64* @ADV748X_CSI2_SINK, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %39, i32* %45, align 4
  %46 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %47 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %5, align 8
  %48 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %47, i32 0, i32 3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i64, i64* @ADV748X_CSI2_SOURCE, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %46, i32* %52, align 4
  %53 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %5, align 8
  %54 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* @ADV748X_CSI2_NR_PADS, align 4
  %57 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %5, align 8
  %58 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %57, i32 0, i32 3
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call i32 @media_entity_pads_init(i32* %55, i32 %56, %struct.TYPE_5__* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %11
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %89

65:                                               ; preds = %11
  %66 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %5, align 8
  %67 = call i32 @adv748x_csi2_init_controls(%struct.adv748x_csi2* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %83

71:                                               ; preds = %65
  %72 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %5, align 8
  %73 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %72, i32 0, i32 1
  %74 = call i32 @v4l2_async_register_subdev(%struct.TYPE_4__* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %79

78:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %89

79:                                               ; preds = %77
  %80 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %5, align 8
  %81 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %80, i32 0, i32 2
  %82 = call i32 @v4l2_ctrl_handler_free(i32* %81)
  br label %83

83:                                               ; preds = %79, %70
  %84 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %5, align 8
  %85 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = call i32 @media_entity_cleanup(i32* %86)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %83, %78, %63, %10
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @is_tx_enabled(%struct.adv748x_csi2*) #1

declare dso_local i32 @adv748x_csi2_set_virtual_channel(%struct.adv748x_csi2*, i32) #1

declare dso_local i32 @adv748x_subdev_init(%struct.TYPE_4__*, %struct.adv748x_state*, i32*, i32, i8*) #1

declare dso_local i64 @is_txa(%struct.adv748x_csi2*) #1

declare dso_local i32 @of_fwnode_handle(i32) #1

declare dso_local i32 @media_entity_pads_init(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @adv748x_csi2_init_controls(%struct.adv748x_csi2*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.TYPE_4__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
