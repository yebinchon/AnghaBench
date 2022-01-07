; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_setup_pipe_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_setup_pipe_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_usb = type { i32, %struct.ath6kl_usb_pipe*, %struct.usb_interface* }
%struct.ath6kl_usb_pipe = type { i64, i32, i32, %struct.usb_endpoint_descriptor*, i32, i32, %struct.ath6kl_usb* }
%struct.usb_endpoint_descriptor = type { i32, i32, i32, i32 }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor }
%struct.TYPE_3__ = type { i32 }

@ATH6KL_DBG_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"setting up USB Pipes using interface\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s Bulk Ep:0x%2.2X maxpktsz:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%s Int Ep:0x%2.2X maxpktsz:%d interval:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"%s ISOC Ep:0x%2.2X maxpktsz:%d interval:%d\0A\00", align 1
@ATH6KL_USB_PIPE_INVALID = common dso_local global i64 0, align 8
@ATH6KL_USB_PIPE_FLAG_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_usb*)* @ath6kl_usb_setup_pipe_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_usb_setup_pipe_resources(%struct.ath6kl_usb* %0) #0 {
  %2 = alloca %struct.ath6kl_usb*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_host_interface*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.ath6kl_usb_pipe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ath6kl_usb* %0, %struct.ath6kl_usb** %2, align 8
  %11 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %2, align 8
  %12 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %11, i32 0, i32 2
  %13 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  store %struct.usb_interface* %13, %struct.usb_interface** %3, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 0
  %16 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  store %struct.usb_host_interface* %16, %struct.usb_host_interface** %4, align 8
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* @ATH6KL_DBG_USB, align 4
  %18 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %272, %1
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %22 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %275

26:                                               ; preds = %19
  %27 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %28 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %33, %struct.usb_endpoint_descriptor** %5, align 8
  %34 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %35 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ATH6KL_USB_IS_BULK_EP(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %26
  %40 = load i32, i32* @ATH6KL_DBG_USB, align 4
  %41 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %42 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ATH6KL_USB_IS_DIR_IN(i32 %43)
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %48 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %49 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %52 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %47, i32 %50, i32 %54)
  br label %110

56:                                               ; preds = %26
  %57 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %58 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ATH6KL_USB_IS_INT_EP(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %56
  %63 = load i32, i32* @ATH6KL_DBG_USB, align 4
  %64 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %65 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @ATH6KL_USB_IS_DIR_IN(i32 %66)
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %71 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %72 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %75 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le16_to_cpu(i32 %76)
  %78 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %79 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %70, i32 %73, i32 %77, i32 %80)
  br label %109

82:                                               ; preds = %56
  %83 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %84 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @ATH6KL_USB_IS_ISOC_EP(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %82
  %89 = load i32, i32* @ATH6KL_DBG_USB, align 4
  %90 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %91 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @ATH6KL_USB_IS_DIR_IN(i32 %92)
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %97 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %98 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %101 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le16_to_cpu(i32 %102)
  %104 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %105 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %96, i32 %99, i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %88, %82
  br label %109

109:                                              ; preds = %108, %62
  br label %110

110:                                              ; preds = %109, %39
  store i32 0, i32* %8, align 4
  %111 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %2, align 8
  %112 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %113 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @ath6kl_usb_get_logical_pipe_num(%struct.ath6kl_usb* %111, i32 %114, i32* %8)
  store i64 %115, i64* %10, align 8
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* @ATH6KL_USB_PIPE_INVALID, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %272

120:                                              ; preds = %110
  %121 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %2, align 8
  %122 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %121, i32 0, i32 1
  %123 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %122, align 8
  %124 = load i64, i64* %10, align 8
  %125 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %123, i64 %124
  store %struct.ath6kl_usb_pipe* %125, %struct.ath6kl_usb_pipe** %6, align 8
  %126 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %127 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %126, i32 0, i32 6
  %128 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %127, align 8
  %129 = icmp ne %struct.ath6kl_usb* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %272

131:                                              ; preds = %120
  %132 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %2, align 8
  %133 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %134 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %133, i32 0, i32 6
  store %struct.ath6kl_usb* %132, %struct.ath6kl_usb** %134, align 8
  %135 = load i64, i64* %10, align 8
  %136 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %137 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %139 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %142 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 4
  %143 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %144 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @le16_to_cpu(i32 %145)
  %147 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %148 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 4
  %149 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %150 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @ATH6KL_USB_IS_BULK_EP(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %181

154:                                              ; preds = %131
  %155 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %156 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @ATH6KL_USB_IS_DIR_IN(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %154
  %161 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %2, align 8
  %162 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %165 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @usb_rcvbulkpipe(i32 %163, i32 %166)
  %168 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %169 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 8
  br label %180

170:                                              ; preds = %154
  %171 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %2, align 8
  %172 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %175 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @usb_sndbulkpipe(i32 %173, i32 %176)
  %178 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %179 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 8
  br label %180

180:                                              ; preds = %170, %160
  br label %249

181:                                              ; preds = %131
  %182 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %183 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @ATH6KL_USB_IS_INT_EP(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %214

187:                                              ; preds = %181
  %188 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %189 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @ATH6KL_USB_IS_DIR_IN(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %187
  %194 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %2, align 8
  %195 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %198 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @usb_rcvintpipe(i32 %196, i32 %199)
  %201 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %202 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %201, i32 0, i32 4
  store i32 %200, i32* %202, align 8
  br label %213

203:                                              ; preds = %187
  %204 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %2, align 8
  %205 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %208 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @usb_sndintpipe(i32 %206, i32 %209)
  %211 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %212 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %211, i32 0, i32 4
  store i32 %210, i32* %212, align 8
  br label %213

213:                                              ; preds = %203, %193
  br label %248

214:                                              ; preds = %181
  %215 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %216 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i64 @ATH6KL_USB_IS_ISOC_EP(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %247

220:                                              ; preds = %214
  %221 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %222 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = call i64 @ATH6KL_USB_IS_DIR_IN(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %236

226:                                              ; preds = %220
  %227 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %2, align 8
  %228 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %231 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @usb_rcvisocpipe(i32 %229, i32 %232)
  %234 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %235 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %234, i32 0, i32 4
  store i32 %233, i32* %235, align 8
  br label %246

236:                                              ; preds = %220
  %237 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %2, align 8
  %238 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %241 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @usb_sndisocpipe(i32 %239, i32 %242)
  %244 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %245 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %244, i32 0, i32 4
  store i32 %243, i32* %245, align 8
  br label %246

246:                                              ; preds = %236, %226
  br label %247

247:                                              ; preds = %246, %214
  br label %248

248:                                              ; preds = %247, %213
  br label %249

249:                                              ; preds = %248, %180
  %250 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %251 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %252 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %251, i32 0, i32 3
  store %struct.usb_endpoint_descriptor* %250, %struct.usb_endpoint_descriptor** %252, align 8
  %253 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %254 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = call i64 @ATH6KL_USB_IS_DIR_IN(i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %249
  %259 = load i32, i32* @ATH6KL_USB_PIPE_FLAG_TX, align 4
  %260 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %261 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 8
  br label %264

264:                                              ; preds = %258, %249
  %265 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %6, align 8
  %266 = load i32, i32* %8, align 4
  %267 = call i32 @ath6kl_usb_alloc_pipe_resources(%struct.ath6kl_usb_pipe* %265, i32 %266)
  store i32 %267, i32* %9, align 4
  %268 = load i32, i32* %9, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %264
  br label %275

271:                                              ; preds = %264
  br label %272

272:                                              ; preds = %271, %130, %119
  %273 = load i32, i32* %7, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %7, align 4
  br label %19

275:                                              ; preds = %270, %19
  %276 = load i32, i32* %9, align 4
  ret i32 %276
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, ...) #1

declare dso_local i64 @ATH6KL_USB_IS_BULK_EP(i32) #1

declare dso_local i64 @ATH6KL_USB_IS_DIR_IN(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ATH6KL_USB_IS_INT_EP(i32) #1

declare dso_local i64 @ATH6KL_USB_IS_ISOC_EP(i32) #1

declare dso_local i64 @ath6kl_usb_get_logical_pipe_num(%struct.ath6kl_usb*, i32, i32*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

declare dso_local i32 @usb_sndisocpipe(i32, i32) #1

declare dso_local i32 @ath6kl_usb_alloc_pipe_resources(%struct.ath6kl_usb_pipe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
