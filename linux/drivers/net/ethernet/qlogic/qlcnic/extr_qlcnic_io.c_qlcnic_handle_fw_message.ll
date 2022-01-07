; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_handle_fw_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_handle_fw_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_host_sds_ring = type { %struct.qlcnic_adapter*, i32, %struct.status_desc* }
%struct.qlcnic_adapter = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.status_desc = type { i32* }
%struct.qlcnic_fw_msg = type { i32*, i8** }

@QLCNIC_LB_RESPONSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"loopback already in progress\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"loopback cable is not connected\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"loopback configure request failed, err %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.qlcnic_host_sds_ring*)* @qlcnic_handle_fw_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_handle_fw_message(i32 %0, i32 %1, %struct.qlcnic_host_sds_ring* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %7 = alloca %struct.qlcnic_fw_msg, align 8
  %8 = alloca %struct.status_desc*, align 8
  %9 = alloca %struct.qlcnic_adapter*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.qlcnic_host_sds_ring* %2, %struct.qlcnic_host_sds_ring** %6, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %22, %3
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i1 [ false, %14 ], [ %19, %17 ]
  br i1 %21, label %22, label %60

22:                                               ; preds = %20
  %23 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %6, align 8
  %24 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %23, i32 0, i32 2
  %25 = load %struct.status_desc*, %struct.status_desc** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.status_desc, %struct.status_desc* %25, i64 %27
  store %struct.status_desc* %28, %struct.status_desc** %8, align 8
  %29 = load %struct.status_desc*, %struct.status_desc** %8, align 8
  %30 = getelementptr inbounds %struct.status_desc, %struct.status_desc* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @le64_to_cpu(i32 %33)
  %35 = getelementptr inbounds %struct.qlcnic_fw_msg, %struct.qlcnic_fw_msg* %7, i32 0, i32 1
  %36 = load i8**, i8*** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8*, i8** %36, i64 %39
  store i8* %34, i8** %40, align 8
  %41 = load %struct.status_desc*, %struct.status_desc** %8, align 8
  %42 = getelementptr inbounds %struct.status_desc, %struct.status_desc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le64_to_cpu(i32 %45)
  %47 = getelementptr inbounds %struct.qlcnic_fw_msg, %struct.qlcnic_fw_msg* %7, i32 0, i32 1
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  store i8* %46, i8** %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %6, align 8
  %55 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @get_next_index(i32 %53, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %4, align 4
  br label %14

60:                                               ; preds = %20
  %61 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %6, align 8
  %62 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %61, i32 0, i32 0
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %62, align 8
  store %struct.qlcnic_adapter* %63, %struct.qlcnic_adapter** %9, align 8
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  %65 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store %struct.device* %67, %struct.device** %10, align 8
  %68 = getelementptr inbounds %struct.qlcnic_fw_msg, %struct.qlcnic_fw_msg* %7, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @qlcnic_get_nic_msg_opcode(i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  switch i32 %73, label %126 [
    i32 128, label %74
    i32 130, label %77
    i32 129, label %120
  ]

74:                                               ; preds = %60
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  %76 = call i32 @qlcnic_handle_linkevent(%struct.qlcnic_adapter* %75, %struct.qlcnic_fw_msg* %7)
  br label %127

77:                                               ; preds = %60
  %78 = getelementptr inbounds %struct.qlcnic_fw_msg, %struct.qlcnic_fw_msg* %7, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  switch i32 %82, label %109 [
    i32 0, label %83
    i32 1, label %91
    i32 2, label %100
  ]

83:                                               ; preds = %77
  %84 = load i32, i32* @QLCNIC_LB_RESPONSE, align 4
  %85 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  %86 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %84
  store i32 %90, i32* %88, align 4
  br label %119

91:                                               ; preds = %77
  %92 = load %struct.device*, %struct.device** %10, align 8
  %93 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @EINPROGRESS, align 4
  %95 = sub nsw i32 0, %94
  %96 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  %97 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 4
  br label %119

100:                                              ; preds = %77
  %101 = load %struct.device*, %struct.device** %10, align 8
  %102 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  %105 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  %106 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 4
  br label %119

109:                                              ; preds = %77
  %110 = load %struct.device*, %struct.device** %10, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %110, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  %115 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  %116 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i32 %114, i32* %118, align 4
  br label %119

119:                                              ; preds = %109, %100, %91, %83
  br label %127

120:                                              ; preds = %60
  %121 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  %122 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = bitcast %struct.qlcnic_fw_msg* %7 to i8*
  %125 = call i32 @qlcnic_dcb_aen_handler(i32 %123, i8* %124)
  br label %127

126:                                              ; preds = %60
  br label %127

127:                                              ; preds = %126, %120, %119, %74
  ret void
}

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @get_next_index(i32, i32) #1

declare dso_local i32 @qlcnic_get_nic_msg_opcode(i32) #1

declare dso_local i32 @qlcnic_handle_linkevent(%struct.qlcnic_adapter*, %struct.qlcnic_fw_msg*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @qlcnic_dcb_aen_handler(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
