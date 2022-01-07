; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_configure_vhref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_configure_vhref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tda1997x_state = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_bt_timings }
%struct.v4l2_bt_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@REG_FDW_S = common dso_local global i32 0, align 4
@REG_FDW_E = common dso_local global i32 0, align 4
@REG_PXCNT_PR = common dso_local global i32 0, align 4
@REG_PXCNT_NPIX = common dso_local global i32 0, align 4
@MASK_VHREF = common dso_local global i32 0, align 4
@REG_LCNT_PR = common dso_local global i32 0, align 4
@REG_LCNT_NLIN = common dso_local global i32 0, align 4
@VHREF_STD_DET_OFF = common dso_local global i32 0, align 4
@VHREF_STD_DET_SHIFT = common dso_local global i32 0, align 4
@REG_VHREF_CTRL = common dso_local global i32 0, align 4
@REG_HREF_S = common dso_local global i32 0, align 4
@REG_HREF_E = common dso_local global i32 0, align 4
@REG_VREF_F1_S = common dso_local global i32 0, align 4
@REG_VREF_F1_WIDTH = common dso_local global i32 0, align 4
@REG_VREF_F2_S = common dso_local global i32 0, align 4
@REG_VREF_F2_WIDTH = common dso_local global i32 0, align 4
@REG_FREF_F1_S = common dso_local global i32 0, align 4
@REG_FREF_F2_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @tda1997x_configure_vhref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda1997x_configure_vhref(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.tda1997x_state*, align 8
  %4 = alloca %struct.v4l2_bt_timings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %18 = call %struct.tda1997x_state* @to_state(%struct.v4l2_subdev* %17)
  store %struct.tda1997x_state* %18, %struct.tda1997x_state** %3, align 8
  %19 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %20 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.v4l2_bt_timings* %21, %struct.v4l2_bt_timings** %4, align 8
  %22 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %39 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %37, %40
  %42 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %43 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %47 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %45, %48
  %50 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %51 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %55 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %53, %56
  store i32 %57, i32* %9, align 4
  %58 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %59 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %62 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  %65 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %66 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %64, %67
  store i32 %68, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %69 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %70 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %69, i32 0, i32 10
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %105

73:                                               ; preds = %1
  %74 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %75 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %76, 2
  %78 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %79 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %82 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %80, %83
  %85 = sub nsw i32 %84, 1
  %86 = add nsw i32 %77, %85
  store i32 %86, i32* %10, align 4
  %87 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %88 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %91 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %89, %92
  %94 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %95 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %93, %96
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %100 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %98, %101
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %73, %1
  store i32 0, i32* %13, align 4
  %106 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %107 = call i32 @V4L2_DV_BT_FRAME_WIDTH(%struct.v4l2_bt_timings* %106)
  store i32 %107, i32* %5, align 4
  %108 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %109 = call i32 @V4L2_DV_BT_FRAME_HEIGHT(%struct.v4l2_bt_timings* %108)
  store i32 %109, i32* %6, align 4
  %110 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %111 = load i32, i32* @REG_FDW_S, align 4
  %112 = call i32 @io_write16(%struct.v4l2_subdev* %110, i32 %111, i32 751)
  %113 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %114 = load i32, i32* @REG_FDW_E, align 4
  %115 = call i32 @io_write16(%struct.v4l2_subdev* %113, i32 %114, i32 321)
  %116 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %117 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %105
  %121 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %122 = load i32, i32* @REG_PXCNT_PR, align 4
  %123 = call i32 @io_write16(%struct.v4l2_subdev* %121, i32 %122, i32 4)
  br label %128

124:                                              ; preds = %105
  %125 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %126 = load i32, i32* @REG_PXCNT_PR, align 4
  %127 = call i32 @io_write16(%struct.v4l2_subdev* %125, i32 %126, i32 1)
  br label %128

128:                                              ; preds = %124, %120
  %129 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %130 = load i32, i32* @REG_PXCNT_NPIX, align 4
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @MASK_VHREF, align 4
  %133 = and i32 %131, %132
  %134 = call i32 @io_write16(%struct.v4l2_subdev* %129, i32 %130, i32 %133)
  %135 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %136 = load i32, i32* @REG_LCNT_PR, align 4
  %137 = call i32 @io_write16(%struct.v4l2_subdev* %135, i32 %136, i32 1)
  %138 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %139 = load i32, i32* @REG_LCNT_NLIN, align 4
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @MASK_VHREF, align 4
  %142 = and i32 %140, %141
  %143 = call i32 @io_write16(%struct.v4l2_subdev* %138, i32 %139, i32 %142)
  %144 = load i32, i32* @VHREF_STD_DET_OFF, align 4
  %145 = load i32, i32* @VHREF_STD_DET_SHIFT, align 4
  %146 = shl i32 %144, %145
  store i32 %146, i32* %16, align 4
  %147 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %148 = load i32, i32* @REG_VHREF_CTRL, align 4
  %149 = load i32, i32* %16, align 4
  %150 = call i32 @io_write(%struct.v4l2_subdev* %147, i32 %148, i32 %149)
  %151 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %152 = load i32, i32* @REG_HREF_S, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @MASK_VHREF, align 4
  %155 = and i32 %153, %154
  %156 = call i32 @io_write16(%struct.v4l2_subdev* %151, i32 %152, i32 %155)
  %157 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %158 = load i32, i32* @REG_HREF_E, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @MASK_VHREF, align 4
  %161 = and i32 %159, %160
  %162 = call i32 @io_write16(%struct.v4l2_subdev* %157, i32 %158, i32 %161)
  %163 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %164 = load i32, i32* @REG_VREF_F1_S, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @MASK_VHREF, align 4
  %167 = and i32 %165, %166
  %168 = call i32 @io_write16(%struct.v4l2_subdev* %163, i32 %164, i32 %167)
  %169 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %170 = load i32, i32* @REG_VREF_F1_WIDTH, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @io_write(%struct.v4l2_subdev* %169, i32 %170, i32 %171)
  %173 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %174 = load i32, i32* @REG_VREF_F2_S, align 4
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @MASK_VHREF, align 4
  %177 = and i32 %175, %176
  %178 = call i32 @io_write16(%struct.v4l2_subdev* %173, i32 %174, i32 %177)
  %179 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %180 = load i32, i32* @REG_VREF_F2_WIDTH, align 4
  %181 = load i32, i32* %12, align 4
  %182 = call i32 @io_write(%struct.v4l2_subdev* %179, i32 %180, i32 %181)
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* @MASK_VHREF, align 4
  %185 = and i32 %183, %184
  store i32 %185, i32* %16, align 4
  %186 = load i32, i32* %13, align 4
  %187 = shl i32 %186, 8
  %188 = load i32, i32* %16, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %16, align 4
  %190 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %191 = load i32, i32* @REG_FREF_F1_S, align 4
  %192 = load i32, i32* %16, align 4
  %193 = call i32 @io_write16(%struct.v4l2_subdev* %190, i32 %191, i32 %192)
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* @MASK_VHREF, align 4
  %196 = and i32 %194, %195
  store i32 %196, i32* %16, align 4
  %197 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %198 = load i32, i32* @REG_FREF_F2_S, align 4
  %199 = load i32, i32* %16, align 4
  %200 = call i32 @io_write16(%struct.v4l2_subdev* %197, i32 %198, i32 %199)
  ret void
}

declare dso_local %struct.tda1997x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @V4L2_DV_BT_FRAME_WIDTH(%struct.v4l2_bt_timings*) #1

declare dso_local i32 @V4L2_DV_BT_FRAME_HEIGHT(%struct.v4l2_bt_timings*) #1

declare dso_local i32 @io_write16(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
