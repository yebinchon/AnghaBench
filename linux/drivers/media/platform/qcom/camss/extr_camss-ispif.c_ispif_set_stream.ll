; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ispif_line = type { i32, i32, i32, %struct.TYPE_3__*, i32*, %struct.ispif_device* }
%struct.TYPE_3__ = type { i32 }
%struct.ispif_device = type { i32 }
%struct.TYPE_4__ = type { i64 }

@MSM_ISPIF_PAD_SINK = common dso_local global i64 0, align 8
@ENOLINK = common dso_local global i32 0, align 4
@CAMSS_8x96 = common dso_local global i64 0, align 8
@CMD_ENABLE_FRAME_BOUNDARY = common dso_local global i32 0, align 4
@CMD_DISABLE_FRAME_BOUNDARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ispif_set_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ispif_set_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ispif_line*, align 8
  %7 = alloca %struct.ispif_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = call %struct.ispif_line* @v4l2_get_subdevdata(%struct.v4l2_subdev* %14)
  store %struct.ispif_line* %15, %struct.ispif_line** %6, align 8
  %16 = load %struct.ispif_line*, %struct.ispif_line** %6, align 8
  %17 = getelementptr inbounds %struct.ispif_line, %struct.ispif_line* %16, i32 0, i32 5
  %18 = load %struct.ispif_device*, %struct.ispif_device** %17, align 8
  store %struct.ispif_device* %18, %struct.ispif_device** %7, align 8
  %19 = load %struct.ispif_line*, %struct.ispif_line** %6, align 8
  %20 = getelementptr inbounds %struct.ispif_line, %struct.ispif_line* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.ispif_line*, %struct.ispif_line** %6, align 8
  %23 = getelementptr inbounds %struct.ispif_line, %struct.ispif_line* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.ispif_line*, %struct.ispif_line** %6, align 8
  %26 = getelementptr inbounds %struct.ispif_line, %struct.ispif_line* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = mul nsw i32 %28, 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %104

32:                                               ; preds = %2
  %33 = load %struct.ispif_line*, %struct.ispif_line** %6, align 8
  %34 = getelementptr inbounds %struct.ispif_line, %struct.ispif_line* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @MSM_ISPIF_PAD_SINK, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = call i32 @media_entity_remote_pad(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOLINK, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %172

43:                                               ; preds = %32
  %44 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %45 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @ispif_select_clk_mux(%struct.ispif_device* %47, i32 %48, i32 %49, i32 %50, i32 1)
  %52 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @ispif_validate_intf_status(%struct.ispif_device* %52, i32 %53, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %60 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %3, align 4
  br label %172

63:                                               ; preds = %43
  %64 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @ispif_select_csid(%struct.ispif_device* %64, i32 %65, i32 %66, i32 %67, i32 1)
  %69 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @ispif_select_cid(%struct.ispif_device* %69, i32 %70, i32 %71, i32 %72, i32 1)
  %74 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @ispif_config_irq(%struct.ispif_device* %74, i32 %75, i32 %76, i32 1)
  %78 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %79 = call %struct.TYPE_4__* @to_camss(%struct.ispif_device* %78)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CAMSS_8x96, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %63
  %85 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %86 = load %struct.ispif_line*, %struct.ispif_line** %6, align 8
  %87 = getelementptr inbounds %struct.ispif_line, %struct.ispif_line* %86, i32 0, i32 3
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i64, i64* @MSM_ISPIF_PAD_SINK, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @ispif_config_pack(%struct.ispif_device* %85, i32 %92, i32 %93, i32 %94, i32 %95, i32 1)
  br label %97

97:                                               ; preds = %84, %63
  %98 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %99 = load i32, i32* @CMD_ENABLE_FRAME_BOUNDARY, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @ispif_set_intf_cmd(%struct.ispif_device* %98, i32 %99, i32 %100, i32 %101, i32 %102)
  br label %168

104:                                              ; preds = %2
  %105 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %106 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %105, i32 0, i32 0
  %107 = call i32 @mutex_lock(i32* %106)
  %108 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %109 = load i32, i32* @CMD_DISABLE_FRAME_BOUNDARY, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @ispif_set_intf_cmd(%struct.ispif_device* %108, i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %115 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %114, i32 0, i32 0
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @ispif_wait_for_stop(%struct.ispif_device* %117, i32 %118, i32 %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %104
  %124 = load i32, i32* %13, align 4
  store i32 %124, i32* %3, align 4
  br label %172

125:                                              ; preds = %104
  %126 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %127 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %126, i32 0, i32 0
  %128 = call i32 @mutex_lock(i32* %127)
  %129 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %130 = call %struct.TYPE_4__* @to_camss(%struct.ispif_device* %129)
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @CAMSS_8x96, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %125
  %136 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %137 = load %struct.ispif_line*, %struct.ispif_line** %6, align 8
  %138 = getelementptr inbounds %struct.ispif_line, %struct.ispif_line* %137, i32 0, i32 3
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = load i64, i64* @MSM_ISPIF_PAD_SINK, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @ispif_config_pack(%struct.ispif_device* %136, i32 %143, i32 %144, i32 %145, i32 %146, i32 0)
  br label %148

148:                                              ; preds = %135, %125
  %149 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @ispif_config_irq(%struct.ispif_device* %149, i32 %150, i32 %151, i32 0)
  %153 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @ispif_select_cid(%struct.ispif_device* %153, i32 %154, i32 %155, i32 %156, i32 0)
  %158 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @ispif_select_csid(%struct.ispif_device* %158, i32 %159, i32 %160, i32 %161, i32 0)
  %163 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @ispif_select_clk_mux(%struct.ispif_device* %163, i32 %164, i32 %165, i32 %166, i32 0)
  br label %168

168:                                              ; preds = %148, %97
  %169 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %170 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %169, i32 0, i32 0
  %171 = call i32 @mutex_unlock(i32* %170)
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %168, %123, %58, %40
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.ispif_line* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @media_entity_remote_pad(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ispif_select_clk_mux(%struct.ispif_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ispif_validate_intf_status(%struct.ispif_device*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ispif_select_csid(%struct.ispif_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ispif_select_cid(%struct.ispif_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ispif_config_irq(%struct.ispif_device*, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @to_camss(%struct.ispif_device*) #1

declare dso_local i32 @ispif_config_pack(%struct.ispif_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ispif_set_intf_cmd(%struct.ispif_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ispif_wait_for_stop(%struct.ispif_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
