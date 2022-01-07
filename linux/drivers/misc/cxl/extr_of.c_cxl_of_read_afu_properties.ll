; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_of.c_cxl_of_read_afu_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_of.c_cxl_of_read_afu_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.cxl_afu*, i32, i32, i32*)*, i32 (%struct.cxl_afu*, i32, i32, i32*)* }
%struct.cxl_afu = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i64, i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.device_node = type { i32 }

@cxl_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"Dump of the 'ibm,coherent-platform-function' node properties:\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"compatible: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"assigned-addresses\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"ibm,loc-code\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"ibm,#processes\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"ibm,scratchpad-size\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"ibm,programmable\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"ibm,phandle\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"ibm,max-ints-per-process\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"ibm,min-ints-per-process\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"ibm,max-ints\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"ibm,vpd-size\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"ibm,error-buffer-size\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"ibm,config-record-type\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"ibm,config-record-size\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"ibm,#config-records\00", align 1
@cxl_ops = common dso_local global %struct.TYPE_6__* null, align 8
@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [28 x i8] c"record %d - device-id: %#x\0A\00", align 1
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [28 x i8] c"record %d - vendor-id: %#x\0A\00", align 1
@PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [29 x i8] c"record %d - class-code: %#x\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"ibm,function-number\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"ibm,privileged-function\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"vendor-id\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"device-id\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"revision-id\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"class-code\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"subsystem-vendor-id\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"subsystem-id\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"ibm,process-mmio\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"ibm,supports-aur\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"ibm,supports-csrp\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"ibm,supports-prr\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"ibm,function-error-interrupt\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"AFU handle: %#llx\0A\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"p2n_phys: %#llx (size %#llx)\0A\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"psn_phys: %#llx (size %#llx)\0A\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"Max number of processes virtualised=%i\0A\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"Per-process irqs min=%i, max=%i\0A\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"Slice error interrupt=%#lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_of_read_afu_properties(%struct.cxl_afu* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxl_afu*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store i32 0, i32* %13, align 4
  %15 = load i64, i64* @cxl_verbose, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %2
  %18 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i32* @of_get_property(%struct.device_node* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  store i32* %20, i32** %10, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %25, %17
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load i32*, i32** %10, align 8
  %27 = bitcast i32* %26 to i8*
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load i8*, i8** %9, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = add nsw i64 %34, 1
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load %struct.device_node*, %struct.device_node** %5, align 8
  %42 = call i32 @read_prop_string(%struct.device_node* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %2
  %44 = load %struct.device_node*, %struct.device_node** %5, align 8
  %45 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %46 = call i32 @read_phys_addr(%struct.device_node* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %struct.cxl_afu* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %300

51:                                               ; preds = %43
  %52 = load %struct.device_node*, %struct.device_node** %5, align 8
  %53 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %54 = call i32 @read_phys_addr(%struct.device_node* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), %struct.cxl_afu* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %300

59:                                               ; preds = %51
  %60 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %61 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %66 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %65, i32 0, i32 1
  store i32 0, i32* %66, align 8
  br label %70

67:                                               ; preds = %59
  %68 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %69 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %68, i32 0, i32 1
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i64, i64* @cxl_verbose, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.device_node*, %struct.device_node** %5, align 8
  %75 = call i32 @read_prop_string(%struct.device_node* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %76 = load %struct.device_node*, %struct.device_node** %5, align 8
  %77 = call i32 @read_prop_string(%struct.device_node* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %78

78:                                               ; preds = %73, %70
  %79 = load %struct.device_node*, %struct.device_node** %5, align 8
  %80 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %81 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %80, i32 0, i32 2
  %82 = call i32* @read_prop_dword(%struct.device_node* %79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32* %81)
  %83 = load i64, i64* @cxl_verbose, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %78
  %86 = load %struct.device_node*, %struct.device_node** %5, align 8
  %87 = call i32* @read_prop_dword(%struct.device_node* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32* %13)
  %88 = load %struct.device_node*, %struct.device_node** %5, align 8
  %89 = call i32* @read_prop_dword(%struct.device_node* %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32* %13)
  %90 = load %struct.device_node*, %struct.device_node** %5, align 8
  %91 = call i32 @read_prop_string(%struct.device_node* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %92 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %93 = call i32 @read_vpd(i32* null, %struct.cxl_afu* %92)
  br label %94

94:                                               ; preds = %85, %78
  %95 = load %struct.device_node*, %struct.device_node** %5, align 8
  %96 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %97 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %96, i32 0, i32 9
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = call i32* @read_prop_dword(%struct.device_node* %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32* %99)
  %101 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %102 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %101, i32 0, i32 9
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %107 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load %struct.device_node*, %struct.device_node** %5, align 8
  %109 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %110 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %109, i32 0, i32 4
  %111 = call i32* @read_prop_dword(%struct.device_node* %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32* %110)
  store i32* %111, i32** %10, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %94
  %115 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %116 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %114, %94
  %120 = load i64, i64* @cxl_verbose, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load %struct.device_node*, %struct.device_node** %5, align 8
  %124 = call i32* @read_prop_dword(%struct.device_node* %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32* %13)
  %125 = load %struct.device_node*, %struct.device_node** %5, align 8
  %126 = call i32* @read_prop_dword(%struct.device_node* %125, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32* %13)
  br label %127

127:                                              ; preds = %122, %119
  %128 = load %struct.device_node*, %struct.device_node** %5, align 8
  %129 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %130 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %129, i32 0, i32 13
  %131 = call i32 @read_prop64_dword(%struct.device_node* %128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32* %130)
  %132 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %133 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %132, i32 0, i32 12
  store i64 0, i64* %133, align 8
  %134 = load i64, i64* @cxl_verbose, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %127
  %137 = load %struct.device_node*, %struct.device_node** %5, align 8
  %138 = call i32* @read_prop_dword(%struct.device_node* %137, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i32* %13)
  br label %139

139:                                              ; preds = %136, %127
  %140 = load %struct.device_node*, %struct.device_node** %5, align 8
  %141 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %142 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %141, i32 0, i32 11
  %143 = call i32 @read_prop64_dword(%struct.device_node* %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32* %142)
  %144 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %145 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %144, i32 0, i32 10
  store i64 0, i64* %145, align 8
  %146 = load %struct.device_node*, %struct.device_node** %5, align 8
  %147 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %148 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %147, i32 0, i32 5
  %149 = call i32* @read_prop_dword(%struct.device_node* %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32* %148)
  %150 = load i64, i64* @cxl_verbose, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %224

152:                                              ; preds = %139
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %204, %152
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %156 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %207

159:                                              ; preds = %153
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cxl_ops, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32 (%struct.cxl_afu*, i32, i32, i32*)*, i32 (%struct.cxl_afu*, i32, i32, i32*)** %161, align 8
  %163 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @PCI_DEVICE_ID, align 4
  %166 = call i32 %162(%struct.cxl_afu* %163, i32 %164, i32 %165, i32* %11)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %159
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %169, %159
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cxl_ops, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32 (%struct.cxl_afu*, i32, i32, i32*)*, i32 (%struct.cxl_afu*, i32, i32, i32*)** %175, align 8
  %177 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* @PCI_VENDOR_ID, align 4
  %180 = call i32 %176(%struct.cxl_afu* %177, i32 %178, i32 %179, i32* %12)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %173
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* %12, align 4
  %186 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %183, %173
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cxl_ops, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i32 (%struct.cxl_afu*, i32, i32, i32*)*, i32 (%struct.cxl_afu*, i32, i32, i32*)** %189, align 8
  %191 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* @PCI_CLASS_REVISION, align 4
  %194 = call i32 %190(%struct.cxl_afu* %191, i32 %192, i32 %193, i32* %14)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %187
  %198 = load i32, i32* %14, align 4
  %199 = ashr i32 %198, 8
  store i32 %199, i32* %14, align 4
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* %14, align 4
  %202 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %197, %187
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %6, align 4
  br label %153

207:                                              ; preds = %153
  %208 = load %struct.device_node*, %struct.device_node** %5, align 8
  %209 = call i32* @read_prop_dword(%struct.device_node* %208, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32* %13)
  %210 = load %struct.device_node*, %struct.device_node** %5, align 8
  %211 = call i32* @read_prop_dword(%struct.device_node* %210, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i32* %13)
  %212 = load %struct.device_node*, %struct.device_node** %5, align 8
  %213 = call i32* @read_prop_dword(%struct.device_node* %212, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i32* %13)
  %214 = load %struct.device_node*, %struct.device_node** %5, align 8
  %215 = call i32* @read_prop_dword(%struct.device_node* %214, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i32* %13)
  %216 = load %struct.device_node*, %struct.device_node** %5, align 8
  %217 = call i32* @read_prop_dword(%struct.device_node* %216, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32* %13)
  %218 = load %struct.device_node*, %struct.device_node** %5, align 8
  %219 = call i32* @read_prop_dword(%struct.device_node* %218, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i32* %13)
  %220 = load %struct.device_node*, %struct.device_node** %5, align 8
  %221 = call i32* @read_prop_dword(%struct.device_node* %220, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), i32* %13)
  %222 = load %struct.device_node*, %struct.device_node** %5, align 8
  %223 = call i32* @read_prop_dword(%struct.device_node* %222, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i32* %13)
  br label %224

224:                                              ; preds = %207, %139
  store i32 0, i32* %13, align 4
  %225 = load %struct.device_node*, %struct.device_node** %5, align 8
  %226 = call i32* @read_prop_dword(%struct.device_node* %225, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i32* %13)
  store i32* %226, i32** %10, align 8
  %227 = load i32*, i32** %10, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %235

229:                                              ; preds = %224
  %230 = load i32, i32* %13, align 4
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %234 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %233, i32 0, i32 6
  store i32 1, i32* %234, align 4
  br label %238

235:                                              ; preds = %229, %224
  %236 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %237 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %236, i32 0, i32 6
  store i32 0, i32* %237, align 4
  br label %238

238:                                              ; preds = %235, %232
  %239 = load i64, i64* @cxl_verbose, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %238
  %242 = load %struct.device_node*, %struct.device_node** %5, align 8
  %243 = call i32* @read_prop_dword(%struct.device_node* %242, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i32* %13)
  %244 = load %struct.device_node*, %struct.device_node** %5, align 8
  %245 = call i32* @read_prop_dword(%struct.device_node* %244, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i32* %13)
  %246 = load %struct.device_node*, %struct.device_node** %5, align 8
  %247 = call i32* @read_prop_dword(%struct.device_node* %246, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i32* %13)
  br label %248

248:                                              ; preds = %241, %238
  %249 = load %struct.device_node*, %struct.device_node** %5, align 8
  %250 = call i32* @read_prop_dword(%struct.device_node* %249, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i64 0, i64 0), i32* %13)
  store i32* %250, i32** %10, align 8
  %251 = load i32*, i32** %10, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %253, label %257

253:                                              ; preds = %248
  %254 = load i32, i32* %13, align 4
  %255 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %256 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %255, i32 0, i32 7
  store i32 %254, i32* %256, align 8
  br label %257

257:                                              ; preds = %253, %248
  %258 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %259 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %258, i32 0, i32 9
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0), i32 %262)
  %264 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %265 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %264, i32 0, i32 9
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %270 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %269, i32 0, i32 9
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i32 %268, i32 %273)
  %275 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %276 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = trunc i64 %277 to i32
  %279 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %280 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %279, i32 0, i32 8
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0), i32 %278, i32 %283)
  %285 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %286 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i32 %287)
  %289 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %290 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %293 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i64 0, i64 0), i32 %291, i32 %294)
  %296 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %297 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %296, i32 0, i32 7
  %298 = load i32, i32* %297, align 8
  %299 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i64 0, i64 0), i32 %298)
  store i32 0, i32* %3, align 4
  br label %300

300:                                              ; preds = %257, %57, %49
  %301 = load i32, i32* %3, align 4
  ret i32 %301
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @read_prop_string(%struct.device_node*, i8*) #1

declare dso_local i32 @read_phys_addr(%struct.device_node*, i8*, %struct.cxl_afu*) #1

declare dso_local i32* @read_prop_dword(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @read_vpd(i32*, %struct.cxl_afu*) #1

declare dso_local i32 @read_prop64_dword(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pr_devel(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
