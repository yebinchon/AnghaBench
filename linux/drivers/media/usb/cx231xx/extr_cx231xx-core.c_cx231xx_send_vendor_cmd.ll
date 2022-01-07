; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-core.c_cx231xx_send_vendor_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-core.c_cx231xx_send_vendor_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32 }
%struct.VENDOR_REQUEST_IN = type { i32, i32, i32, i32, i32*, i32 }

@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@URB_MAX_CTRL_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_send_vendor_cmd(%struct.cx231xx* %0, %struct.VENDOR_REQUEST_IN* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca %struct.VENDOR_REQUEST_IN*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store %struct.VENDOR_REQUEST_IN* %1, %struct.VENDOR_REQUEST_IN** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %11 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DEV_DISCONNECTED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %209

19:                                               ; preds = %2
  %20 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %21 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @URB_MAX_CTRL_SIZE, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %209

28:                                               ; preds = %19
  %29 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %30 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %35 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @usb_rcvctrlpipe(i32 %36, i32 0)
  store i32 %37, i32* %7, align 4
  br label %43

38:                                               ; preds = %28
  %39 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %40 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @usb_sndctrlpipe(i32 %41, i32 0)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %45 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 4
  br i1 %47, label %48, label %180

48:                                               ; preds = %43
  %49 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %50 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %68, label %53

53:                                               ; preds = %48
  %54 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %55 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 5
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  %59 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %60 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 6
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %65 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %180

68:                                               ; preds = %63, %58, %53, %48
  store i32 0, i32* %8, align 4
  %69 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %70 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %9, align 8
  %72 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %73 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %8, align 4
  %75 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %76 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 65531
  %79 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %80 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %82 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 65469
  %85 = or i32 %84, 2
  %86 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %87 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %91 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %94 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %101 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %104 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* @HZ, align 4
  %108 = call i32 @__usb_control_msg(%struct.cx231xx* %88, i32 %89, i32 %92, i32 %99, i32 %102, i32 %105, i32* %106, i32 4, i32 %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %8, align 4
  %110 = sub nsw i32 %109, 4
  store i32 %110, i32* %8, align 4
  %111 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %112 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 65469
  %115 = or i32 %114, 66
  %116 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %117 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %122, %68
  %119 = load i32, i32* %8, align 4
  %120 = sub nsw i32 %119, 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %148

122:                                              ; preds = %118
  %123 = load i32*, i32** %9, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  store i32* %124, i32** %9, align 8
  %125 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %128 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %131 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %138 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %141 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = load i32*, i32** %9, align 8
  %144 = load i32, i32* @HZ, align 4
  %145 = call i32 @__usb_control_msg(%struct.cx231xx* %125, i32 %126, i32 %129, i32 %136, i32 %139, i32 %142, i32* %143, i32 4, i32 %144)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %8, align 4
  %147 = sub nsw i32 %146, 4
  store i32 %147, i32* %8, align 4
  br label %118

148:                                              ; preds = %118
  %149 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %150 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 65469
  %153 = or i32 %152, 64
  %154 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %155 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  %156 = load i32*, i32** %9, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 4
  store i32* %157, i32** %9, align 8
  %158 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %161 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %164 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %169 = or i32 %167, %168
  %170 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %171 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %174 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @HZ, align 4
  %179 = call i32 @__usb_control_msg(%struct.cx231xx* %158, i32 %159, i32 %162, i32 %169, i32 %172, i32 %175, i32* %176, i32 %177, i32 %178)
  store i32 %179, i32* %6, align 4
  br label %207

180:                                              ; preds = %63, %43
  %181 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %182 = load i32, i32* %7, align 4
  %183 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %184 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %187 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %192 = or i32 %190, %191
  %193 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %194 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %197 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %200 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %199, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %203 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @HZ, align 4
  %206 = call i32 @__usb_control_msg(%struct.cx231xx* %181, i32 %182, i32 %185, i32 %192, i32 %195, i32 %198, i32* %201, i32 %204, i32 %205)
  store i32 %206, i32* %6, align 4
  br label %207

207:                                              ; preds = %180, %148
  %208 = load i32, i32* %6, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %207, %25, %16
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @__usb_control_msg(%struct.cx231xx*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
