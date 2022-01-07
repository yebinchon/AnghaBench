; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_build_isoc_ep_tb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_build_isoc_ep_tb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.usb_interface = type { i32, i32* }
%struct.ep_tb_s = type { i32, i32 }
%struct.usb_host_endpoint = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@MAX_ALT = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_ISOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"alt %d iso endp with 0 interval\0A\00", align 1
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@D_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"alt %d bandwidth %d\0A\00", align 1
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"dev has usb audio, skipping highest alt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_interface*, %struct.ep_tb_s*)* @build_isoc_ep_tb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_isoc_ep_tb(%struct.gspca_dev* %0, %struct.usb_interface* %1, %struct.ep_tb_s* %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.ep_tb_s*, align 8
  %7 = alloca %struct.usb_host_endpoint*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  store %struct.ep_tb_s* %2, %struct.ep_tb_s** %6, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @MAX_ALT, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @MAX_ALT, align 4
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %21, %3
  store i32 0, i32* %8, align 4
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %122, %23
  %25 = load %struct.ep_tb_s*, %struct.ep_tb_s** %6, align 8
  %26 = getelementptr inbounds %struct.ep_tb_s, %struct.ep_tb_s* %25, i32 0, i32 0
  store i32 480000000, i32* %26, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %115, %24
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %118

31:                                               ; preds = %27
  %32 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %33 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* @USB_ENDPOINT_XFER_ISOC, align 4
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %40 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.usb_host_endpoint* @alt_xfer(i32* %37, i32 %38, i32 %41)
  store %struct.usb_host_endpoint* %42, %struct.usb_host_endpoint** %7, align 8
  %43 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %44 = icmp eq %struct.usb_host_endpoint* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %115

46:                                               ; preds = %31
  %47 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %48 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %115

55:                                               ; preds = %46
  %56 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %57 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le16_to_cpu(i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = and i32 %61, 2047
  %63 = load i32, i32* %11, align 4
  %64 = ashr i32 %63, 11
  %65 = and i32 %64, 3
  %66 = add nsw i32 1, %65
  %67 = mul nsw i32 %62, %66
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = mul nsw i32 %68, 1000
  store i32 %69, i32* %13, align 4
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %71 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @USB_SPEED_HIGH, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %85, label %77

77:                                               ; preds = %55
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %79 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @USB_SPEED_SUPER, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77, %55
  %86 = load i32, i32* %13, align 4
  %87 = mul nsw i32 %86, 8
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %85, %77
  %89 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %90 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, 1
  %94 = shl i32 1, %93
  %95 = load i32, i32* %13, align 4
  %96 = sdiv i32 %95, %94
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  br label %115

101:                                              ; preds = %88
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.ep_tb_s*, %struct.ep_tb_s** %6, align 8
  %104 = getelementptr inbounds %struct.ep_tb_s, %struct.ep_tb_s* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.ep_tb_s*, %struct.ep_tb_s** %6, align 8
  %110 = getelementptr inbounds %struct.ep_tb_s, %struct.ep_tb_s* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.ep_tb_s*, %struct.ep_tb_s** %6, align 8
  %113 = getelementptr inbounds %struct.ep_tb_s, %struct.ep_tb_s* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  store i32 1, i32* %12, align 4
  br label %114

114:                                              ; preds = %107, %101
  br label %115

115:                                              ; preds = %114, %100, %52, %45
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %27

118:                                              ; preds = %27
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  br label %139

122:                                              ; preds = %118
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %124 = load i32, i32* @D_STREAM, align 4
  %125 = load %struct.ep_tb_s*, %struct.ep_tb_s** %6, align 8
  %126 = getelementptr inbounds %struct.ep_tb_s, %struct.ep_tb_s* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ep_tb_s*, %struct.ep_tb_s** %6, align 8
  %129 = getelementptr inbounds %struct.ep_tb_s, %struct.ep_tb_s* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %123, i32 %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %130)
  %132 = load %struct.ep_tb_s*, %struct.ep_tb_s** %6, align 8
  %133 = getelementptr inbounds %struct.ep_tb_s, %struct.ep_tb_s* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  %137 = load %struct.ep_tb_s*, %struct.ep_tb_s** %6, align 8
  %138 = getelementptr inbounds %struct.ep_tb_s, %struct.ep_tb_s* %137, i32 1
  store %struct.ep_tb_s* %138, %struct.ep_tb_s** %6, align 8
  br label %24

139:                                              ; preds = %121
  %140 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %141 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %166

144:                                              ; preds = %139
  %145 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %146 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %145, i32 0, i32 0
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @USB_SPEED_FULL, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %166

152:                                              ; preds = %144
  %153 = load i32, i32* %14, align 4
  %154 = icmp sge i32 %153, 1000000
  br i1 %154, label %155, label %166

155:                                              ; preds = %152
  %156 = load i32, i32* %8, align 4
  %157 = icmp sgt i32 %156, 1
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %160 = load i32, i32* @D_STREAM, align 4
  %161 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %159, i32 %160, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %8, align 4
  %164 = load %struct.ep_tb_s*, %struct.ep_tb_s** %6, align 8
  %165 = getelementptr inbounds %struct.ep_tb_s, %struct.ep_tb_s* %164, i32 -1
  store %struct.ep_tb_s* %165, %struct.ep_tb_s** %6, align 8
  br label %166

166:                                              ; preds = %158, %155, %152, %144, %139
  %167 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %168 = call i32 @which_bandwidth(%struct.gspca_dev* %167)
  store i32 %168, i32* %13, align 4
  %169 = load %struct.ep_tb_s*, %struct.ep_tb_s** %6, align 8
  %170 = getelementptr inbounds %struct.ep_tb_s, %struct.ep_tb_s* %169, i32 -1
  store %struct.ep_tb_s* %170, %struct.ep_tb_s** %6, align 8
  br label %171

171:                                              ; preds = %183, %166
  %172 = load i32, i32* %8, align 4
  %173 = icmp sgt i32 %172, 1
  br i1 %173, label %174, label %186

174:                                              ; preds = %171
  %175 = load %struct.ep_tb_s*, %struct.ep_tb_s** %6, align 8
  %176 = getelementptr inbounds %struct.ep_tb_s, %struct.ep_tb_s* %175, i32 -1
  store %struct.ep_tb_s* %176, %struct.ep_tb_s** %6, align 8
  %177 = load %struct.ep_tb_s*, %struct.ep_tb_s** %6, align 8
  %178 = getelementptr inbounds %struct.ep_tb_s, %struct.ep_tb_s* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %13, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %186

183:                                              ; preds = %174
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %8, align 4
  br label %171

186:                                              ; preds = %182, %171
  %187 = load i32, i32* %8, align 4
  ret i32 %187
}

declare dso_local %struct.usb_host_endpoint* @alt_xfer(i32*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, ...) #1

declare dso_local i32 @which_bandwidth(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
