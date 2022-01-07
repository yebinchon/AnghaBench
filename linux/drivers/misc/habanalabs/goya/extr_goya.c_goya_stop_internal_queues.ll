; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_stop_internal_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_stop_internal_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }

@mmMME_QM_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmMME_QM_CP_STS = common dso_local global i32 0, align 4
@mmMME_QM_GLBL_STS0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to stop MME QMAN\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@mmMME_CMDQ_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmMME_CMDQ_CP_STS = common dso_local global i32 0, align 4
@mmMME_CMDQ_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to stop MME CMDQ\0A\00", align 1
@mmTPC0_QM_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmTPC0_QM_CP_STS = common dso_local global i32 0, align 4
@mmTPC0_QM_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to stop TPC 0 QMAN\0A\00", align 1
@mmTPC0_CMDQ_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmTPC0_CMDQ_CP_STS = common dso_local global i32 0, align 4
@mmTPC0_CMDQ_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to stop TPC 0 CMDQ\0A\00", align 1
@mmTPC1_QM_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmTPC1_QM_CP_STS = common dso_local global i32 0, align 4
@mmTPC1_QM_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to stop TPC 1 QMAN\0A\00", align 1
@mmTPC1_CMDQ_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmTPC1_CMDQ_CP_STS = common dso_local global i32 0, align 4
@mmTPC1_CMDQ_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to stop TPC 1 CMDQ\0A\00", align 1
@mmTPC2_QM_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmTPC2_QM_CP_STS = common dso_local global i32 0, align 4
@mmTPC2_QM_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to stop TPC 2 QMAN\0A\00", align 1
@mmTPC2_CMDQ_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmTPC2_CMDQ_CP_STS = common dso_local global i32 0, align 4
@mmTPC2_CMDQ_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"failed to stop TPC 2 CMDQ\0A\00", align 1
@mmTPC3_QM_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmTPC3_QM_CP_STS = common dso_local global i32 0, align 4
@mmTPC3_QM_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"failed to stop TPC 3 QMAN\0A\00", align 1
@mmTPC3_CMDQ_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmTPC3_CMDQ_CP_STS = common dso_local global i32 0, align 4
@mmTPC3_CMDQ_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"failed to stop TPC 3 CMDQ\0A\00", align 1
@mmTPC4_QM_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmTPC4_QM_CP_STS = common dso_local global i32 0, align 4
@mmTPC4_QM_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"failed to stop TPC 4 QMAN\0A\00", align 1
@mmTPC4_CMDQ_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmTPC4_CMDQ_CP_STS = common dso_local global i32 0, align 4
@mmTPC4_CMDQ_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"failed to stop TPC 4 CMDQ\0A\00", align 1
@mmTPC5_QM_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmTPC5_QM_CP_STS = common dso_local global i32 0, align 4
@mmTPC5_QM_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"failed to stop TPC 5 QMAN\0A\00", align 1
@mmTPC5_CMDQ_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmTPC5_CMDQ_CP_STS = common dso_local global i32 0, align 4
@mmTPC5_CMDQ_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"failed to stop TPC 5 CMDQ\0A\00", align 1
@mmTPC6_QM_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmTPC6_QM_CP_STS = common dso_local global i32 0, align 4
@mmTPC6_QM_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"failed to stop TPC 6 QMAN\0A\00", align 1
@mmTPC6_CMDQ_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmTPC6_CMDQ_CP_STS = common dso_local global i32 0, align 4
@mmTPC6_CMDQ_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [27 x i8] c"failed to stop TPC 6 CMDQ\0A\00", align 1
@mmTPC7_QM_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmTPC7_QM_CP_STS = common dso_local global i32 0, align 4
@mmTPC7_QM_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [27 x i8] c"failed to stop TPC 7 QMAN\0A\00", align 1
@mmTPC7_CMDQ_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmTPC7_CMDQ_CP_STS = common dso_local global i32 0, align 4
@mmTPC7_CMDQ_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [27 x i8] c"failed to stop TPC 7 CMDQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*)* @goya_stop_internal_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_stop_internal_queues(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %6 = load i32, i32* @mmMME_QM_GLBL_CFG1, align 4
  %7 = load i32, i32* @mmMME_QM_CP_STS, align 4
  %8 = load i32, i32* @mmMME_QM_GLBL_STS0, align 4
  %9 = call i32 @goya_stop_queue(%struct.hl_device* %5, i32 %6, i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %14 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %21 = load i32, i32* @mmMME_CMDQ_GLBL_CFG1, align 4
  %22 = load i32, i32* @mmMME_CMDQ_CP_STS, align 4
  %23 = load i32, i32* @mmMME_CMDQ_GLBL_STS0, align 4
  %24 = call i32 @goya_stop_queue(%struct.hl_device* %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %29 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %19
  %35 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %36 = load i32, i32* @mmTPC0_QM_GLBL_CFG1, align 4
  %37 = load i32, i32* @mmTPC0_QM_CP_STS, align 4
  %38 = load i32, i32* @mmTPC0_QM_GLBL_STS0, align 4
  %39 = call i32 @goya_stop_queue(%struct.hl_device* %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %44 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %42, %34
  %50 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %51 = load i32, i32* @mmTPC0_CMDQ_GLBL_CFG1, align 4
  %52 = load i32, i32* @mmTPC0_CMDQ_CP_STS, align 4
  %53 = load i32, i32* @mmTPC0_CMDQ_GLBL_STS0, align 4
  %54 = call i32 @goya_stop_queue(%struct.hl_device* %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %59 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %57, %49
  %65 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %66 = load i32, i32* @mmTPC1_QM_GLBL_CFG1, align 4
  %67 = load i32, i32* @mmTPC1_QM_CP_STS, align 4
  %68 = load i32, i32* @mmTPC1_QM_GLBL_STS0, align 4
  %69 = call i32 @goya_stop_queue(%struct.hl_device* %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %74 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %72, %64
  %80 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %81 = load i32, i32* @mmTPC1_CMDQ_GLBL_CFG1, align 4
  %82 = load i32, i32* @mmTPC1_CMDQ_CP_STS, align 4
  %83 = load i32, i32* @mmTPC1_CMDQ_GLBL_STS0, align 4
  %84 = call i32 @goya_stop_queue(%struct.hl_device* %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %79
  %88 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %89 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %87, %79
  %95 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %96 = load i32, i32* @mmTPC2_QM_GLBL_CFG1, align 4
  %97 = load i32, i32* @mmTPC2_QM_CP_STS, align 4
  %98 = load i32, i32* @mmTPC2_QM_GLBL_STS0, align 4
  %99 = call i32 @goya_stop_queue(%struct.hl_device* %95, i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* %3, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %94
  %103 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %104 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dev_err(i32 %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %102, %94
  %110 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %111 = load i32, i32* @mmTPC2_CMDQ_GLBL_CFG1, align 4
  %112 = load i32, i32* @mmTPC2_CMDQ_CP_STS, align 4
  %113 = load i32, i32* @mmTPC2_CMDQ_GLBL_STS0, align 4
  %114 = call i32 @goya_stop_queue(%struct.hl_device* %110, i32 %111, i32 %112, i32 %113)
  store i32 %114, i32* %3, align 4
  %115 = load i32, i32* %3, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %109
  %118 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %119 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dev_err(i32 %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %117, %109
  %125 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %126 = load i32, i32* @mmTPC3_QM_GLBL_CFG1, align 4
  %127 = load i32, i32* @mmTPC3_QM_CP_STS, align 4
  %128 = load i32, i32* @mmTPC3_QM_GLBL_STS0, align 4
  %129 = call i32 @goya_stop_queue(%struct.hl_device* %125, i32 %126, i32 %127, i32 %128)
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* %3, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %124
  %133 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %134 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @dev_err(i32 %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %137 = load i32, i32* @EIO, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %132, %124
  %140 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %141 = load i32, i32* @mmTPC3_CMDQ_GLBL_CFG1, align 4
  %142 = load i32, i32* @mmTPC3_CMDQ_CP_STS, align 4
  %143 = load i32, i32* @mmTPC3_CMDQ_GLBL_STS0, align 4
  %144 = call i32 @goya_stop_queue(%struct.hl_device* %140, i32 %141, i32 %142, i32 %143)
  store i32 %144, i32* %3, align 4
  %145 = load i32, i32* %3, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %139
  %148 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %149 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @dev_err(i32 %150, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %152 = load i32, i32* @EIO, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %147, %139
  %155 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %156 = load i32, i32* @mmTPC4_QM_GLBL_CFG1, align 4
  %157 = load i32, i32* @mmTPC4_QM_CP_STS, align 4
  %158 = load i32, i32* @mmTPC4_QM_GLBL_STS0, align 4
  %159 = call i32 @goya_stop_queue(%struct.hl_device* %155, i32 %156, i32 %157, i32 %158)
  store i32 %159, i32* %3, align 4
  %160 = load i32, i32* %3, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %154
  %163 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %164 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @dev_err(i32 %165, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %167 = load i32, i32* @EIO, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %162, %154
  %170 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %171 = load i32, i32* @mmTPC4_CMDQ_GLBL_CFG1, align 4
  %172 = load i32, i32* @mmTPC4_CMDQ_CP_STS, align 4
  %173 = load i32, i32* @mmTPC4_CMDQ_GLBL_STS0, align 4
  %174 = call i32 @goya_stop_queue(%struct.hl_device* %170, i32 %171, i32 %172, i32 %173)
  store i32 %174, i32* %3, align 4
  %175 = load i32, i32* %3, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %169
  %178 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %179 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @dev_err(i32 %180, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %182 = load i32, i32* @EIO, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %4, align 4
  br label %184

184:                                              ; preds = %177, %169
  %185 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %186 = load i32, i32* @mmTPC5_QM_GLBL_CFG1, align 4
  %187 = load i32, i32* @mmTPC5_QM_CP_STS, align 4
  %188 = load i32, i32* @mmTPC5_QM_GLBL_STS0, align 4
  %189 = call i32 @goya_stop_queue(%struct.hl_device* %185, i32 %186, i32 %187, i32 %188)
  store i32 %189, i32* %3, align 4
  %190 = load i32, i32* %3, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %184
  %193 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %194 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @dev_err(i32 %195, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %197 = load i32, i32* @EIO, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %192, %184
  %200 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %201 = load i32, i32* @mmTPC5_CMDQ_GLBL_CFG1, align 4
  %202 = load i32, i32* @mmTPC5_CMDQ_CP_STS, align 4
  %203 = load i32, i32* @mmTPC5_CMDQ_GLBL_STS0, align 4
  %204 = call i32 @goya_stop_queue(%struct.hl_device* %200, i32 %201, i32 %202, i32 %203)
  store i32 %204, i32* %3, align 4
  %205 = load i32, i32* %3, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %199
  %208 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %209 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @dev_err(i32 %210, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %212 = load i32, i32* @EIO, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %4, align 4
  br label %214

214:                                              ; preds = %207, %199
  %215 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %216 = load i32, i32* @mmTPC6_QM_GLBL_CFG1, align 4
  %217 = load i32, i32* @mmTPC6_QM_CP_STS, align 4
  %218 = load i32, i32* @mmTPC6_QM_GLBL_STS0, align 4
  %219 = call i32 @goya_stop_queue(%struct.hl_device* %215, i32 %216, i32 %217, i32 %218)
  store i32 %219, i32* %3, align 4
  %220 = load i32, i32* %3, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %214
  %223 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %224 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @dev_err(i32 %225, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %227 = load i32, i32* @EIO, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %4, align 4
  br label %229

229:                                              ; preds = %222, %214
  %230 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %231 = load i32, i32* @mmTPC6_CMDQ_GLBL_CFG1, align 4
  %232 = load i32, i32* @mmTPC6_CMDQ_CP_STS, align 4
  %233 = load i32, i32* @mmTPC6_CMDQ_GLBL_STS0, align 4
  %234 = call i32 @goya_stop_queue(%struct.hl_device* %230, i32 %231, i32 %232, i32 %233)
  store i32 %234, i32* %3, align 4
  %235 = load i32, i32* %3, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %229
  %238 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %239 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @dev_err(i32 %240, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %242 = load i32, i32* @EIO, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %4, align 4
  br label %244

244:                                              ; preds = %237, %229
  %245 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %246 = load i32, i32* @mmTPC7_QM_GLBL_CFG1, align 4
  %247 = load i32, i32* @mmTPC7_QM_CP_STS, align 4
  %248 = load i32, i32* @mmTPC7_QM_GLBL_STS0, align 4
  %249 = call i32 @goya_stop_queue(%struct.hl_device* %245, i32 %246, i32 %247, i32 %248)
  store i32 %249, i32* %3, align 4
  %250 = load i32, i32* %3, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %244
  %253 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %254 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @dev_err(i32 %255, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  %257 = load i32, i32* @EIO, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %4, align 4
  br label %259

259:                                              ; preds = %252, %244
  %260 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %261 = load i32, i32* @mmTPC7_CMDQ_GLBL_CFG1, align 4
  %262 = load i32, i32* @mmTPC7_CMDQ_CP_STS, align 4
  %263 = load i32, i32* @mmTPC7_CMDQ_GLBL_STS0, align 4
  %264 = call i32 @goya_stop_queue(%struct.hl_device* %260, i32 %261, i32 %262, i32 %263)
  store i32 %264, i32* %3, align 4
  %265 = load i32, i32* %3, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %259
  %268 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %269 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @dev_err(i32 %270, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  %272 = load i32, i32* @EIO, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %4, align 4
  br label %274

274:                                              ; preds = %267, %259
  %275 = load i32, i32* %4, align 4
  ret i32 %275
}

declare dso_local i32 @goya_stop_queue(%struct.hl_device*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
