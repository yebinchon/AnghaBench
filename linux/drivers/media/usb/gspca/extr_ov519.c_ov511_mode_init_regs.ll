; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov511_mode_init_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov511_mode_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.gspca_dev = type { i32 }
%struct.usb_host_interface = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Couldn't get altsetting\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@R51x_FIFO_PSIZE = common dso_local global i32 0, align 4
@R511_CAM_UV_EN = common dso_local global i32 0, align 4
@R511_SNAP_UV_EN = common dso_local global i32 0, align 4
@R511_SNAP_OPTS = common dso_local global i32 0, align 4
@R511_CAM_PXCNT = common dso_local global i32 0, align 4
@R511_CAM_LNCNT = common dso_local global i32 0, align 4
@R511_CAM_PXDIV = common dso_local global i32 0, align 4
@R511_CAM_LNDIV = common dso_local global i32 0, align 4
@R511_CAM_OPTS = common dso_local global i32 0, align 4
@R511_SNAP_PXCNT = common dso_local global i32 0, align 4
@R511_SNAP_LNCNT = common dso_local global i32 0, align 4
@R511_SNAP_PXDIV = common dso_local global i32 0, align 4
@R511_SNAP_LNDIV = common dso_local global i32 0, align 4
@frame_rate = common dso_local global i64 0, align 8
@R511_COMP_EN = common dso_local global i32 0, align 4
@R511_COMP_LUT_EN = common dso_local global i32 0, align 4
@R51x_SYS_RESET = common dso_local global i32 0, align 4
@OV511_RESET_OMNICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov511_mode_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov511_mode_init_regs(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_host_interface*, align 8
  %11 = alloca %struct.usb_interface*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %12 = load %struct.sd*, %struct.sd** %2, align 8
  %13 = bitcast %struct.sd* %12 to %struct.gspca_dev*
  store %struct.gspca_dev* %13, %struct.gspca_dev** %3, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.sd*, %struct.sd** %2, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sd*, %struct.sd** %2, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.usb_interface* @usb_ifnum_to_if(i32 %17, i32 %21)
  store %struct.usb_interface* %22, %struct.usb_interface** %11, align 8
  %23 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %24 = load %struct.sd*, %struct.sd** %2, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface* %23, i32 %27)
  store %struct.usb_host_interface* %28, %struct.usb_host_interface** %10, align 8
  %29 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %30 = icmp ne %struct.usb_host_interface* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %1
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %33 = call i32 @gspca_err(%struct.gspca_dev* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  %36 = load %struct.sd*, %struct.sd** %2, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  br label %229

39:                                               ; preds = %1
  %40 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %41 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le16_to_cpu(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.sd*, %struct.sd** %2, align 8
  %49 = load i32, i32* @R51x_FIFO_PSIZE, align 4
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %50, 5
  %52 = call i32 @reg_w(%struct.sd* %48, i32 %49, i32 %51)
  %53 = load %struct.sd*, %struct.sd** %2, align 8
  %54 = load i32, i32* @R511_CAM_UV_EN, align 4
  %55 = call i32 @reg_w(%struct.sd* %53, i32 %54, i32 1)
  %56 = load %struct.sd*, %struct.sd** %2, align 8
  %57 = load i32, i32* @R511_SNAP_UV_EN, align 4
  %58 = call i32 @reg_w(%struct.sd* %56, i32 %57, i32 1)
  %59 = load %struct.sd*, %struct.sd** %2, align 8
  %60 = load i32, i32* @R511_SNAP_OPTS, align 4
  %61 = call i32 @reg_w(%struct.sd* %59, i32 %60, i32 3)
  %62 = load %struct.sd*, %struct.sd** %2, align 8
  %63 = getelementptr inbounds %struct.sd, %struct.sd* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = ashr i32 %66, 3
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  %69 = load %struct.sd*, %struct.sd** %2, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 3
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  %76 = load %struct.sd*, %struct.sd** %2, align 8
  %77 = load i32, i32* @R511_CAM_PXCNT, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @reg_w(%struct.sd* %76, i32 %77, i32 %78)
  %80 = load %struct.sd*, %struct.sd** %2, align 8
  %81 = load i32, i32* @R511_CAM_LNCNT, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @reg_w(%struct.sd* %80, i32 %81, i32 %82)
  %84 = load %struct.sd*, %struct.sd** %2, align 8
  %85 = load i32, i32* @R511_CAM_PXDIV, align 4
  %86 = call i32 @reg_w(%struct.sd* %84, i32 %85, i32 0)
  %87 = load %struct.sd*, %struct.sd** %2, align 8
  %88 = load i32, i32* @R511_CAM_LNDIV, align 4
  %89 = call i32 @reg_w(%struct.sd* %87, i32 %88, i32 0)
  %90 = load %struct.sd*, %struct.sd** %2, align 8
  %91 = load i32, i32* @R511_CAM_OPTS, align 4
  %92 = call i32 @reg_w(%struct.sd* %90, i32 %91, i32 3)
  %93 = load %struct.sd*, %struct.sd** %2, align 8
  %94 = load i32, i32* @R511_SNAP_PXCNT, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @reg_w(%struct.sd* %93, i32 %94, i32 %95)
  %97 = load %struct.sd*, %struct.sd** %2, align 8
  %98 = load i32, i32* @R511_SNAP_LNCNT, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @reg_w(%struct.sd* %97, i32 %98, i32 %99)
  %101 = load %struct.sd*, %struct.sd** %2, align 8
  %102 = load i32, i32* @R511_SNAP_PXDIV, align 4
  %103 = call i32 @reg_w(%struct.sd* %101, i32 %102, i32 0)
  %104 = load %struct.sd*, %struct.sd** %2, align 8
  %105 = load i32, i32* @R511_SNAP_LNDIV, align 4
  %106 = call i32 @reg_w(%struct.sd* %104, i32 %105, i32 0)
  %107 = load i64, i64* @frame_rate, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %39
  %110 = load i64, i64* @frame_rate, align 8
  %111 = load %struct.sd*, %struct.sd** %2, align 8
  %112 = getelementptr inbounds %struct.sd, %struct.sd* %111, i32 0, i32 3
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %109, %39
  %114 = load %struct.sd*, %struct.sd** %2, align 8
  %115 = getelementptr inbounds %struct.sd, %struct.sd* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  switch i32 %116, label %177 [
    i32 137, label %117
    i32 134, label %120
    i32 133, label %120
    i32 132, label %120
    i32 131, label %120
    i32 129, label %120
    i32 136, label %129
    i32 135, label %129
    i32 130, label %129
    i32 128, label %174
  ]

117:                                              ; preds = %113
  %118 = load %struct.sd*, %struct.sd** %2, align 8
  %119 = getelementptr inbounds %struct.sd, %struct.sd* %118, i32 0, i32 1
  store i32 3, i32* %119, align 4
  br label %177

120:                                              ; preds = %113, %113, %113, %113, %113
  %121 = load %struct.sd*, %struct.sd** %2, align 8
  %122 = getelementptr inbounds %struct.sd, %struct.sd* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 320
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  store i32 1, i32* %9, align 4
  br label %128

128:                                              ; preds = %127, %120
  br label %129

129:                                              ; preds = %113, %113, %113, %128
  %130 = load %struct.sd*, %struct.sd** %2, align 8
  %131 = getelementptr inbounds %struct.sd, %struct.sd* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  switch i64 %132, label %144 [
    i64 30, label %133
    i64 25, label %133
    i64 10, label %147
    i64 5, label %150
  ]

133:                                              ; preds = %129, %129
  %134 = load %struct.sd*, %struct.sd** %2, align 8
  %135 = getelementptr inbounds %struct.sd, %struct.sd* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 640
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load %struct.sd*, %struct.sd** %2, align 8
  %142 = getelementptr inbounds %struct.sd, %struct.sd* %141, i32 0, i32 1
  store i32 0, i32* %142, align 4
  br label %153

143:                                              ; preds = %133
  br label %144

144:                                              ; preds = %129, %143
  %145 = load %struct.sd*, %struct.sd** %2, align 8
  %146 = getelementptr inbounds %struct.sd, %struct.sd* %145, i32 0, i32 1
  store i32 1, i32* %146, align 4
  br label %153

147:                                              ; preds = %129
  %148 = load %struct.sd*, %struct.sd** %2, align 8
  %149 = getelementptr inbounds %struct.sd, %struct.sd* %148, i32 0, i32 1
  store i32 2, i32* %149, align 4
  br label %153

150:                                              ; preds = %129
  %151 = load %struct.sd*, %struct.sd** %2, align 8
  %152 = getelementptr inbounds %struct.sd, %struct.sd* %151, i32 0, i32 1
  store i32 5, i32* %152, align 4
  br label %153

153:                                              ; preds = %150, %147, %144, %140
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %173

156:                                              ; preds = %153
  %157 = load %struct.sd*, %struct.sd** %2, align 8
  %158 = getelementptr inbounds %struct.sd, %struct.sd* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  %161 = mul nsw i32 %160, 2
  %162 = sub nsw i32 %161, 1
  %163 = load %struct.sd*, %struct.sd** %2, align 8
  %164 = getelementptr inbounds %struct.sd, %struct.sd* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.sd*, %struct.sd** %2, align 8
  %166 = getelementptr inbounds %struct.sd, %struct.sd* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp sgt i32 %167, 10
  br i1 %168, label %169, label %172

169:                                              ; preds = %156
  %170 = load %struct.sd*, %struct.sd** %2, align 8
  %171 = getelementptr inbounds %struct.sd, %struct.sd* %170, i32 0, i32 1
  store i32 10, i32* %171, align 4
  br label %172

172:                                              ; preds = %169, %156
  br label %173

173:                                              ; preds = %172, %153
  br label %177

174:                                              ; preds = %113
  %175 = load %struct.sd*, %struct.sd** %2, align 8
  %176 = getelementptr inbounds %struct.sd, %struct.sd* %175, i32 0, i32 1
  store i32 0, i32* %176, align 4
  br label %177

177:                                              ; preds = %113, %174, %173, %117
  %178 = load i32, i32* %9, align 4
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 60, i32 30
  %182 = load %struct.sd*, %struct.sd** %2, align 8
  %183 = getelementptr inbounds %struct.sd, %struct.sd* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  %186 = sdiv i32 %181, %185
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %7, align 4
  %189 = load %struct.sd*, %struct.sd** %2, align 8
  %190 = getelementptr inbounds %struct.sd, %struct.sd* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = mul nsw i32 %188, %193
  %195 = load %struct.sd*, %struct.sd** %2, align 8
  %196 = getelementptr inbounds %struct.sd, %struct.sd* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 %194, %199
  %201 = mul nsw i32 %200, 3
  %202 = sdiv i32 %201, 2
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* %6, align 4
  %205 = mul nsw i32 1000, %204
  %206 = icmp sgt i32 %203, %205
  br i1 %206, label %207, label %214

207:                                              ; preds = %177
  %208 = load %struct.sd*, %struct.sd** %2, align 8
  %209 = load i32, i32* @R511_COMP_EN, align 4
  %210 = call i32 @reg_w(%struct.sd* %208, i32 %209, i32 7)
  %211 = load %struct.sd*, %struct.sd** %2, align 8
  %212 = load i32, i32* @R511_COMP_LUT_EN, align 4
  %213 = call i32 @reg_w(%struct.sd* %211, i32 %212, i32 3)
  br label %221

214:                                              ; preds = %177
  %215 = load %struct.sd*, %struct.sd** %2, align 8
  %216 = load i32, i32* @R511_COMP_EN, align 4
  %217 = call i32 @reg_w(%struct.sd* %215, i32 %216, i32 6)
  %218 = load %struct.sd*, %struct.sd** %2, align 8
  %219 = load i32, i32* @R511_COMP_LUT_EN, align 4
  %220 = call i32 @reg_w(%struct.sd* %218, i32 %219, i32 0)
  br label %221

221:                                              ; preds = %214, %207
  %222 = load %struct.sd*, %struct.sd** %2, align 8
  %223 = load i32, i32* @R51x_SYS_RESET, align 4
  %224 = load i32, i32* @OV511_RESET_OMNICE, align 4
  %225 = call i32 @reg_w(%struct.sd* %222, i32 %223, i32 %224)
  %226 = load %struct.sd*, %struct.sd** %2, align 8
  %227 = load i32, i32* @R51x_SYS_RESET, align 4
  %228 = call i32 @reg_w(%struct.sd* %226, i32 %227, i32 0)
  br label %229

229:                                              ; preds = %221, %31
  ret void
}

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(i32, i32) #1

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface*, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
