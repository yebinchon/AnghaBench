; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov518_mode_init_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov518_mode_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i64, i64, i32, i32, %struct.TYPE_8__ }
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
@BRIDGE_OV518 = common dso_local global i64 0, align 8
@BRIDGE_OV518PLUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov518_mode_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov518_mode_init_regs(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_interface*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %9 = load %struct.sd*, %struct.sd** %2, align 8
  %10 = bitcast %struct.sd* %9 to %struct.gspca_dev*
  store %struct.gspca_dev* %10, %struct.gspca_dev** %3, align 8
  %11 = load %struct.sd*, %struct.sd** %2, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sd*, %struct.sd** %2, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.usb_interface* @usb_ifnum_to_if(i32 %14, i32 %18)
  store %struct.usb_interface* %19, %struct.usb_interface** %8, align 8
  %20 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %21 = load %struct.sd*, %struct.sd** %2, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface* %20, i32 %24)
  store %struct.usb_host_interface* %25, %struct.usb_host_interface** %7, align 8
  %26 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %27 = icmp ne %struct.usb_host_interface* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %1
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = call i32 @gspca_err(%struct.gspca_dev* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  %33 = load %struct.sd*, %struct.sd** %2, align 8
  %34 = getelementptr inbounds %struct.sd, %struct.sd* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 8
  br label %241

36:                                               ; preds = %1
  %37 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %38 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le16_to_cpu(i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.sd*, %struct.sd** %2, align 8
  %46 = load i32, i32* @R51x_FIFO_PSIZE, align 4
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, -8
  %49 = call i32 @ov518_reg_w32(%struct.sd* %45, i32 %46, i32 %48, i32 2)
  %50 = load %struct.sd*, %struct.sd** %2, align 8
  %51 = call i32 @reg_w(%struct.sd* %50, i32 43, i32 0)
  %52 = load %struct.sd*, %struct.sd** %2, align 8
  %53 = call i32 @reg_w(%struct.sd* %52, i32 44, i32 0)
  %54 = load %struct.sd*, %struct.sd** %2, align 8
  %55 = call i32 @reg_w(%struct.sd* %54, i32 45, i32 0)
  %56 = load %struct.sd*, %struct.sd** %2, align 8
  %57 = call i32 @reg_w(%struct.sd* %56, i32 46, i32 0)
  %58 = load %struct.sd*, %struct.sd** %2, align 8
  %59 = call i32 @reg_w(%struct.sd* %58, i32 59, i32 0)
  %60 = load %struct.sd*, %struct.sd** %2, align 8
  %61 = call i32 @reg_w(%struct.sd* %60, i32 60, i32 0)
  %62 = load %struct.sd*, %struct.sd** %2, align 8
  %63 = call i32 @reg_w(%struct.sd* %62, i32 61, i32 0)
  %64 = load %struct.sd*, %struct.sd** %2, align 8
  %65 = call i32 @reg_w(%struct.sd* %64, i32 62, i32 0)
  %66 = load %struct.sd*, %struct.sd** %2, align 8
  %67 = getelementptr inbounds %struct.sd, %struct.sd* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BRIDGE_OV518, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %36
  %72 = load %struct.sd*, %struct.sd** %2, align 8
  %73 = call i32 @reg_w_mask(%struct.sd* %72, i32 32, i32 8, i32 8)
  %74 = load %struct.sd*, %struct.sd** %2, align 8
  %75 = call i32 @reg_w_mask(%struct.sd* %74, i32 40, i32 128, i32 240)
  %76 = load %struct.sd*, %struct.sd** %2, align 8
  %77 = call i32 @reg_w_mask(%struct.sd* %76, i32 56, i32 128, i32 240)
  br label %83

78:                                               ; preds = %36
  %79 = load %struct.sd*, %struct.sd** %2, align 8
  %80 = call i32 @reg_w(%struct.sd* %79, i32 40, i32 128)
  %81 = load %struct.sd*, %struct.sd** %2, align 8
  %82 = call i32 @reg_w(%struct.sd* %81, i32 56, i32 128)
  br label %83

83:                                               ; preds = %78, %71
  %84 = load %struct.sd*, %struct.sd** %2, align 8
  %85 = getelementptr inbounds %struct.sd, %struct.sd* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sdiv i32 %88, 16
  store i32 %89, i32* %4, align 4
  %90 = load %struct.sd*, %struct.sd** %2, align 8
  %91 = getelementptr inbounds %struct.sd, %struct.sd* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %94, 4
  store i32 %95, i32* %5, align 4
  %96 = load %struct.sd*, %struct.sd** %2, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @reg_w(%struct.sd* %96, i32 41, i32 %97)
  %99 = load %struct.sd*, %struct.sd** %2, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @reg_w(%struct.sd* %99, i32 42, i32 %100)
  %102 = load %struct.sd*, %struct.sd** %2, align 8
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @reg_w(%struct.sd* %102, i32 57, i32 %103)
  %105 = load %struct.sd*, %struct.sd** %2, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @reg_w(%struct.sd* %105, i32 58, i32 %106)
  %108 = load %struct.sd*, %struct.sd** %2, align 8
  %109 = call i32 @reg_w(%struct.sd* %108, i32 47, i32 128)
  %110 = load %struct.sd*, %struct.sd** %2, align 8
  %111 = getelementptr inbounds %struct.sd, %struct.sd* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @BRIDGE_OV518PLUS, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %83
  %116 = load %struct.sd*, %struct.sd** %2, align 8
  %117 = getelementptr inbounds %struct.sd, %struct.sd* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load %struct.sd*, %struct.sd** %2, align 8
  %122 = getelementptr inbounds %struct.sd, %struct.sd* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 128
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.sd*, %struct.sd** %2, align 8
  %127 = getelementptr inbounds %struct.sd, %struct.sd* %126, i32 0, i32 3
  store i32 0, i32* %127, align 4
  br label %131

128:                                              ; preds = %120, %115, %83
  %129 = load %struct.sd*, %struct.sd** %2, align 8
  %130 = getelementptr inbounds %struct.sd, %struct.sd* %129, i32 0, i32 3
  store i32 1, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %125
  %132 = load %struct.sd*, %struct.sd** %2, align 8
  %133 = call i32 @reg_w(%struct.sd* %132, i32 81, i32 4)
  %134 = load %struct.sd*, %struct.sd** %2, align 8
  %135 = call i32 @reg_w(%struct.sd* %134, i32 34, i32 24)
  %136 = load %struct.sd*, %struct.sd** %2, align 8
  %137 = call i32 @reg_w(%struct.sd* %136, i32 35, i32 255)
  %138 = load %struct.sd*, %struct.sd** %2, align 8
  %139 = getelementptr inbounds %struct.sd, %struct.sd* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @BRIDGE_OV518PLUS, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %179

143:                                              ; preds = %131
  %144 = load %struct.sd*, %struct.sd** %2, align 8
  %145 = getelementptr inbounds %struct.sd, %struct.sd* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  switch i32 %146, label %175 [
    i32 128, label %147
    i32 129, label %170
  ]

147:                                              ; preds = %143
  %148 = load %struct.sd*, %struct.sd** %2, align 8
  %149 = getelementptr inbounds %struct.sd, %struct.sd* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp sgt i64 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %147
  %153 = load %struct.sd*, %struct.sd** %2, align 8
  %154 = getelementptr inbounds %struct.sd, %struct.sd* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 640
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = load %struct.sd*, %struct.sd** %2, align 8
  %161 = call i32 @reg_w(%struct.sd* %160, i32 32, i32 96)
  %162 = load %struct.sd*, %struct.sd** %2, align 8
  %163 = call i32 @reg_w(%struct.sd* %162, i32 33, i32 31)
  br label %169

164:                                              ; preds = %152, %147
  %165 = load %struct.sd*, %struct.sd** %2, align 8
  %166 = call i32 @reg_w(%struct.sd* %165, i32 32, i32 0)
  %167 = load %struct.sd*, %struct.sd** %2, align 8
  %168 = call i32 @reg_w(%struct.sd* %167, i32 33, i32 25)
  br label %169

169:                                              ; preds = %164, %159
  br label %178

170:                                              ; preds = %143
  %171 = load %struct.sd*, %struct.sd** %2, align 8
  %172 = call i32 @reg_w(%struct.sd* %171, i32 32, i32 0)
  %173 = load %struct.sd*, %struct.sd** %2, align 8
  %174 = call i32 @reg_w(%struct.sd* %173, i32 33, i32 25)
  br label %178

175:                                              ; preds = %143
  %176 = load %struct.sd*, %struct.sd** %2, align 8
  %177 = call i32 @reg_w(%struct.sd* %176, i32 33, i32 25)
  br label %178

178:                                              ; preds = %175, %170, %169
  br label %182

179:                                              ; preds = %131
  %180 = load %struct.sd*, %struct.sd** %2, align 8
  %181 = call i32 @reg_w(%struct.sd* %180, i32 113, i32 23)
  br label %182

182:                                              ; preds = %179, %178
  %183 = load %struct.sd*, %struct.sd** %2, align 8
  %184 = call i32 @i2c_w(%struct.sd* %183, i32 84, i32 35)
  %185 = load %struct.sd*, %struct.sd** %2, align 8
  %186 = call i32 @reg_w(%struct.sd* %185, i32 47, i32 128)
  %187 = load %struct.sd*, %struct.sd** %2, align 8
  %188 = getelementptr inbounds %struct.sd, %struct.sd* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @BRIDGE_OV518PLUS, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %215

192:                                              ; preds = %182
  %193 = load %struct.sd*, %struct.sd** %2, align 8
  %194 = call i32 @reg_w(%struct.sd* %193, i32 36, i32 148)
  %195 = load %struct.sd*, %struct.sd** %2, align 8
  %196 = call i32 @reg_w(%struct.sd* %195, i32 37, i32 144)
  %197 = load %struct.sd*, %struct.sd** %2, align 8
  %198 = call i32 @ov518_reg_w32(%struct.sd* %197, i32 196, i32 400, i32 2)
  %199 = load %struct.sd*, %struct.sd** %2, align 8
  %200 = call i32 @ov518_reg_w32(%struct.sd* %199, i32 198, i32 540, i32 2)
  %201 = load %struct.sd*, %struct.sd** %2, align 8
  %202 = call i32 @ov518_reg_w32(%struct.sd* %201, i32 199, i32 540, i32 2)
  %203 = load %struct.sd*, %struct.sd** %2, align 8
  %204 = call i32 @ov518_reg_w32(%struct.sd* %203, i32 200, i32 108, i32 2)
  %205 = load %struct.sd*, %struct.sd** %2, align 8
  %206 = call i32 @ov518_reg_w32(%struct.sd* %205, i32 202, i32 131098, i32 3)
  %207 = load %struct.sd*, %struct.sd** %2, align 8
  %208 = call i32 @ov518_reg_w32(%struct.sd* %207, i32 203, i32 532, i32 2)
  %209 = load %struct.sd*, %struct.sd** %2, align 8
  %210 = call i32 @ov518_reg_w32(%struct.sd* %209, i32 204, i32 2400, i32 2)
  %211 = load %struct.sd*, %struct.sd** %2, align 8
  %212 = call i32 @ov518_reg_w32(%struct.sd* %211, i32 205, i32 32, i32 2)
  %213 = load %struct.sd*, %struct.sd** %2, align 8
  %214 = call i32 @ov518_reg_w32(%struct.sd* %213, i32 206, i32 608, i32 2)
  br label %238

215:                                              ; preds = %182
  %216 = load %struct.sd*, %struct.sd** %2, align 8
  %217 = call i32 @reg_w(%struct.sd* %216, i32 36, i32 159)
  %218 = load %struct.sd*, %struct.sd** %2, align 8
  %219 = call i32 @reg_w(%struct.sd* %218, i32 37, i32 144)
  %220 = load %struct.sd*, %struct.sd** %2, align 8
  %221 = call i32 @ov518_reg_w32(%struct.sd* %220, i32 196, i32 400, i32 2)
  %222 = load %struct.sd*, %struct.sd** %2, align 8
  %223 = call i32 @ov518_reg_w32(%struct.sd* %222, i32 198, i32 381, i32 2)
  %224 = load %struct.sd*, %struct.sd** %2, align 8
  %225 = call i32 @ov518_reg_w32(%struct.sd* %224, i32 199, i32 381, i32 2)
  %226 = load %struct.sd*, %struct.sd** %2, align 8
  %227 = call i32 @ov518_reg_w32(%struct.sd* %226, i32 200, i32 128, i32 2)
  %228 = load %struct.sd*, %struct.sd** %2, align 8
  %229 = call i32 @ov518_reg_w32(%struct.sd* %228, i32 202, i32 183331, i32 3)
  %230 = load %struct.sd*, %struct.sd** %2, align 8
  %231 = call i32 @ov518_reg_w32(%struct.sd* %230, i32 203, i32 746, i32 2)
  %232 = load %struct.sd*, %struct.sd** %2, align 8
  %233 = call i32 @ov518_reg_w32(%struct.sd* %232, i32 204, i32 1750, i32 2)
  %234 = load %struct.sd*, %struct.sd** %2, align 8
  %235 = call i32 @ov518_reg_w32(%struct.sd* %234, i32 205, i32 45, i32 2)
  %236 = load %struct.sd*, %struct.sd** %2, align 8
  %237 = call i32 @ov518_reg_w32(%struct.sd* %236, i32 206, i32 851, i32 2)
  br label %238

238:                                              ; preds = %215, %192
  %239 = load %struct.sd*, %struct.sd** %2, align 8
  %240 = call i32 @reg_w(%struct.sd* %239, i32 47, i32 128)
  br label %241

241:                                              ; preds = %238, %28
  ret void
}

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(i32, i32) #1

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface*, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ov518_reg_w32(%struct.sd*, i32, i32, i32) #1

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @reg_w_mask(%struct.sd*, i32, i32, i32) #1

declare dso_local i32 @i2c_w(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
