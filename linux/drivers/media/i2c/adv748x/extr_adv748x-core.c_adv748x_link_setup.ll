; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_link_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_link_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_pad = type { %struct.media_entity* }
%struct.v4l2_subdev = type { i32 }
%struct.adv748x_state = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.adv748x_csi2* }
%struct.adv748x_csi2 = type { %struct.v4l2_subdev* }
%struct.TYPE_3__ = type { %struct.adv748x_csi2*, %struct.v4l2_subdev }

@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@ADV748X_IO_10_CSI1_EN = common dso_local global i32 0, align 4
@ADV748X_IO_10_CSI4_EN = common dso_local global i32 0, align 4
@ADV748X_IO_10_CSI4_IN_SEL_AFE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADV748X_IO_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*, %struct.media_pad*, %struct.media_pad*, i32)* @adv748x_link_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_link_setup(%struct.media_entity* %0, %struct.media_pad* %1, %struct.media_pad* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca %struct.media_pad*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_subdev*, align 8
  %11 = alloca %struct.v4l2_subdev*, align 8
  %12 = alloca %struct.adv748x_state*, align 8
  %13 = alloca %struct.adv748x_csi2*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.media_entity* %0, %struct.media_entity** %6, align 8
  store %struct.media_pad* %1, %struct.media_pad** %7, align 8
  store %struct.media_pad* %2, %struct.media_pad** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %18 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %17, i32 0, i32 0
  %19 = load %struct.media_entity*, %struct.media_entity** %18, align 8
  %20 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %19)
  store %struct.v4l2_subdev* %20, %struct.v4l2_subdev** %10, align 8
  %21 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %22 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %21)
  store %struct.v4l2_subdev* %22, %struct.v4l2_subdev** %11, align 8
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %24 = call %struct.adv748x_state* @v4l2_get_subdevdata(%struct.v4l2_subdev* %23)
  store %struct.adv748x_state* %24, %struct.adv748x_state** %12, align 8
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %26 = call %struct.adv748x_csi2* @adv748x_sd_to_csi2(%struct.v4l2_subdev* %25)
  store %struct.adv748x_csi2* %26, %struct.adv748x_csi2** %13, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* @ADV748X_IO_10_CSI1_EN, align 4
  %31 = load i32, i32* @ADV748X_IO_10_CSI4_EN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @ADV748X_IO_10_CSI4_IN_SEL_AFE, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %4
  %38 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %13, align 8
  %39 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %38, i32 0, i32 0
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %39, align 8
  %41 = icmp ne %struct.v4l2_subdev* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %120

45:                                               ; preds = %37, %4
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %47 = load %struct.adv748x_state*, %struct.adv748x_state** %12, align 8
  %48 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = icmp eq %struct.v4l2_subdev* %46, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %13, align 8
  br label %57

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi %struct.adv748x_csi2* [ %55, %54 ], [ null, %56 ]
  %59 = load %struct.adv748x_state*, %struct.adv748x_state** %12, align 8
  %60 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store %struct.adv748x_csi2* %58, %struct.adv748x_csi2** %61, align 8
  br label %73

62:                                               ; preds = %45
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %13, align 8
  br label %68

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi %struct.adv748x_csi2* [ %66, %65 ], [ null, %67 ]
  %70 = load %struct.adv748x_state*, %struct.adv748x_state** %12, align 8
  %71 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store %struct.adv748x_csi2* %69, %struct.adv748x_csi2** %72, align 8
  br label %73

73:                                               ; preds = %68, %57
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  br label %79

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi %struct.v4l2_subdev* [ %77, %76 ], [ null, %78 ]
  %81 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %13, align 8
  %82 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %81, i32 0, i32 0
  store %struct.v4l2_subdev* %80, %struct.v4l2_subdev** %82, align 8
  %83 = load %struct.adv748x_state*, %struct.adv748x_state** %12, align 8
  %84 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %85, align 8
  %87 = icmp ne %struct.adv748x_csi2* %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %79
  %89 = load i32, i32* @ADV748X_IO_10_CSI4_EN, align 4
  %90 = load i32, i32* %16, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %16, align 4
  %92 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %13, align 8
  %93 = call i64 @is_txa(%struct.adv748x_csi2* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32, i32* @ADV748X_IO_10_CSI4_IN_SEL_AFE, align 4
  %97 = load i32, i32* %16, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %16, align 4
  br label %103

99:                                               ; preds = %88
  %100 = load i32, i32* @ADV748X_IO_10_CSI1_EN, align 4
  %101 = load i32, i32* %16, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %16, align 4
  br label %103

103:                                              ; preds = %99, %95
  br label %104

104:                                              ; preds = %103, %79
  %105 = load %struct.adv748x_state*, %struct.adv748x_state** %12, align 8
  %106 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %107, align 8
  %109 = icmp ne %struct.adv748x_csi2* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i32, i32* @ADV748X_IO_10_CSI4_EN, align 4
  %112 = load i32, i32* %16, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %16, align 4
  br label %114

114:                                              ; preds = %110, %104
  %115 = load %struct.adv748x_state*, %struct.adv748x_state** %12, align 8
  %116 = load i32, i32* @ADV748X_IO_10, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %16, align 4
  %119 = call i32 @io_clrset(%struct.adv748x_state* %115, i32 %116, i32 %117, i32 %118)
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %114, %42
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.adv748x_state* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.adv748x_csi2* @adv748x_sd_to_csi2(%struct.v4l2_subdev*) #1

declare dso_local i64 @is_txa(%struct.adv748x_csi2*) #1

declare dso_local i32 @io_clrset(%struct.adv748x_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
