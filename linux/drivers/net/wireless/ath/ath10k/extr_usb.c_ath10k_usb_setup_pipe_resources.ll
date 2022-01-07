; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_setup_pipe_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_setup_pipe_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ath10k_usb = type { i32, %struct.ath10k_usb_pipe* }
%struct.ath10k_usb_pipe = type { i64, i32, i32, %struct.usb_endpoint_descriptor*, i32, i32, %struct.ath10k_usb* }

@ATH10K_DBG_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"usb setting up pipes using interface\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"usb %s bulk ep 0x%2.2x maxpktsz %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"usb %s int ep 0x%2.2x maxpktsz %d interval %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"usb %s isoc ep 0x%2.2x maxpktsz %d interval %d\0A\00", align 1
@ATH10K_USB_PIPE_INVALID = common dso_local global i64 0, align 8
@ATH10K_USB_PIPE_FLAG_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.usb_interface*)* @ath10k_usb_setup_pipe_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_usb_setup_pipe_resources(%struct.ath10k* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.ath10k_usb*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.ath10k_usb_pipe*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %15 = call %struct.ath10k_usb* @ath10k_usb_priv(%struct.ath10k* %14)
  store %struct.ath10k_usb* %15, %struct.ath10k_usb** %6, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 0
  %18 = load %struct.usb_host_interface*, %struct.usb_host_interface** %17, align 8
  store %struct.usb_host_interface* %18, %struct.usb_host_interface** %7, align 8
  %19 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %20 = load i32, i32* @ATH10K_DBG_USB, align 4
  %21 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %19, i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %279, %2
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %25 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %282

29:                                               ; preds = %22
  %30 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %31 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %36, %struct.usb_endpoint_descriptor** %8, align 8
  %37 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %38 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ATH10K_USB_IS_BULK_EP(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %29
  %43 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %44 = load i32, i32* @ATH10K_DBG_USB, align 4
  %45 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %46 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @ATH10K_USB_IS_DIR_IN(i32 %47)
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %52 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %53 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %56 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %43, i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %51, i32 %54, i32 %58)
  br label %116

60:                                               ; preds = %29
  %61 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %62 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @ATH10K_USB_IS_INT_EP(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %60
  %67 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %68 = load i32, i32* @ATH10K_DBG_USB, align 4
  %69 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %70 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @ATH10K_USB_IS_DIR_IN(i32 %71)
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %76 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %77 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %80 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le16_to_cpu(i32 %81)
  %83 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %84 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %67, i32 %68, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %75, i32 %78, i32 %82, i32 %85)
  br label %115

87:                                               ; preds = %60
  %88 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %89 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @ATH10K_USB_IS_ISOC_EP(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %87
  %94 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %95 = load i32, i32* @ATH10K_DBG_USB, align 4
  %96 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %97 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @ATH10K_USB_IS_DIR_IN(i32 %98)
  %100 = icmp ne i64 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %103 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %104 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %107 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @le16_to_cpu(i32 %108)
  %110 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %111 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %94, i32 %95, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* %102, i32 %105, i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %93, %87
  br label %115

115:                                              ; preds = %114, %66
  br label %116

116:                                              ; preds = %115, %42
  store i32 0, i32* %12, align 4
  %117 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %118 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @ath10k_usb_get_logical_pipe_num(i32 %119, i32* %12)
  store i64 %120, i64* %13, align 8
  %121 = load i64, i64* %13, align 8
  %122 = load i64, i64* @ATH10K_USB_PIPE_INVALID, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %279

125:                                              ; preds = %116
  %126 = load %struct.ath10k_usb*, %struct.ath10k_usb** %6, align 8
  %127 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %126, i32 0, i32 1
  %128 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %127, align 8
  %129 = load i64, i64* %13, align 8
  %130 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %128, i64 %129
  store %struct.ath10k_usb_pipe* %130, %struct.ath10k_usb_pipe** %9, align 8
  %131 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %132 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %131, i32 0, i32 6
  %133 = load %struct.ath10k_usb*, %struct.ath10k_usb** %132, align 8
  %134 = icmp ne %struct.ath10k_usb* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  br label %279

136:                                              ; preds = %125
  %137 = load %struct.ath10k_usb*, %struct.ath10k_usb** %6, align 8
  %138 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %139 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %138, i32 0, i32 6
  store %struct.ath10k_usb* %137, %struct.ath10k_usb** %139, align 8
  %140 = load i64, i64* %13, align 8
  %141 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %142 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %144 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %147 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 4
  %148 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %149 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @le16_to_cpu(i32 %150)
  %152 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %153 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 4
  %154 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %155 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @ATH10K_USB_IS_BULK_EP(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %186

159:                                              ; preds = %136
  %160 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %161 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @ATH10K_USB_IS_DIR_IN(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %159
  %166 = load %struct.ath10k_usb*, %struct.ath10k_usb** %6, align 8
  %167 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %170 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @usb_rcvbulkpipe(i32 %168, i32 %171)
  %173 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %174 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 8
  br label %185

175:                                              ; preds = %159
  %176 = load %struct.ath10k_usb*, %struct.ath10k_usb** %6, align 8
  %177 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %180 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @usb_sndbulkpipe(i32 %178, i32 %181)
  %183 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %184 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 8
  br label %185

185:                                              ; preds = %175, %165
  br label %254

186:                                              ; preds = %136
  %187 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %188 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @ATH10K_USB_IS_INT_EP(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %219

192:                                              ; preds = %186
  %193 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %194 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @ATH10K_USB_IS_DIR_IN(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %192
  %199 = load %struct.ath10k_usb*, %struct.ath10k_usb** %6, align 8
  %200 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %203 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @usb_rcvintpipe(i32 %201, i32 %204)
  %206 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %207 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %206, i32 0, i32 4
  store i32 %205, i32* %207, align 8
  br label %218

208:                                              ; preds = %192
  %209 = load %struct.ath10k_usb*, %struct.ath10k_usb** %6, align 8
  %210 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %213 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @usb_sndintpipe(i32 %211, i32 %214)
  %216 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %217 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %216, i32 0, i32 4
  store i32 %215, i32* %217, align 8
  br label %218

218:                                              ; preds = %208, %198
  br label %253

219:                                              ; preds = %186
  %220 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %221 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @ATH10K_USB_IS_ISOC_EP(i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %252

225:                                              ; preds = %219
  %226 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %227 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = call i64 @ATH10K_USB_IS_DIR_IN(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %225
  %232 = load %struct.ath10k_usb*, %struct.ath10k_usb** %6, align 8
  %233 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %236 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @usb_rcvisocpipe(i32 %234, i32 %237)
  %239 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %240 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %239, i32 0, i32 4
  store i32 %238, i32* %240, align 8
  br label %251

241:                                              ; preds = %225
  %242 = load %struct.ath10k_usb*, %struct.ath10k_usb** %6, align 8
  %243 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %246 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @usb_sndisocpipe(i32 %244, i32 %247)
  %249 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %250 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %249, i32 0, i32 4
  store i32 %248, i32* %250, align 8
  br label %251

251:                                              ; preds = %241, %231
  br label %252

252:                                              ; preds = %251, %219
  br label %253

253:                                              ; preds = %252, %218
  br label %254

254:                                              ; preds = %253, %185
  %255 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %256 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %257 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %256, i32 0, i32 3
  store %struct.usb_endpoint_descriptor* %255, %struct.usb_endpoint_descriptor** %257, align 8
  %258 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %259 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = call i64 @ATH10K_USB_IS_DIR_IN(i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %269, label %263

263:                                              ; preds = %254
  %264 = load i32, i32* @ATH10K_USB_PIPE_FLAG_TX, align 4
  %265 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %266 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = or i32 %267, %264
  store i32 %268, i32* %266, align 8
  br label %269

269:                                              ; preds = %263, %254
  %270 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %271 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %9, align 8
  %272 = load i32, i32* %12, align 4
  %273 = call i32 @ath10k_usb_alloc_pipe_resources(%struct.ath10k* %270, %struct.ath10k_usb_pipe* %271, i32 %272)
  store i32 %273, i32* %10, align 4
  %274 = load i32, i32* %10, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %269
  %277 = load i32, i32* %10, align 4
  store i32 %277, i32* %3, align 4
  br label %283

278:                                              ; preds = %269
  br label %279

279:                                              ; preds = %278, %135, %124
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %11, align 4
  br label %22

282:                                              ; preds = %22
  store i32 0, i32* %3, align 4
  br label %283

283:                                              ; preds = %282, %276
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local %struct.ath10k_usb* @ath10k_usb_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, ...) #1

declare dso_local i64 @ATH10K_USB_IS_BULK_EP(i32) #1

declare dso_local i64 @ATH10K_USB_IS_DIR_IN(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ATH10K_USB_IS_INT_EP(i32) #1

declare dso_local i64 @ATH10K_USB_IS_ISOC_EP(i32) #1

declare dso_local i64 @ath10k_usb_get_logical_pipe_num(i32, i32*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

declare dso_local i32 @usb_sndisocpipe(i32, i32) #1

declare dso_local i32 @ath10k_usb_alloc_pipe_resources(%struct.ath10k*, %struct.ath10k_usb_pipe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
