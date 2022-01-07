; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qp_broker_set_page_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qp_broker_set_page_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.vmci_ctx = type { i32 }
%struct.vmci_handle = type { i32, i32 }
%struct.qp_broker_entry = type { i64, i64, i64, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@VMCI_INVALID_ID = common dso_local global i64 0, align 8
@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@qp_broker_list = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [65 x i8] c"Context (ID=0x%x) not attached to queue pair (handle=0x%x:0x%x)\0A\00", align 1
@VMCI_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@VMCI_HOST_CONTEXT_ID = common dso_local global i64 0, align 8
@VMCI_ERROR_QUEUEPAIR_NOTOWNER = common dso_local global i32 0, align 4
@VMCIQPB_CREATED_NO_MEM = common dso_local global i64 0, align 8
@VMCIQPB_ATTACHED_NO_MEM = common dso_local global i64 0, align 8
@VMCI_ERROR_UNAVAILABLE = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@VMCIQPB_CREATED_MEM = common dso_local global i64 0, align 8
@VMCIQPB_ATTACHED_MEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"Failed to notify peer (ID=0x%x) of attach to queue pair (handle=0x%x:0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_qp_broker_set_page_store(i64 %0, i64 %1, i64 %2, %struct.vmci_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmci_handle, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vmci_ctx*, align 8
  %10 = alloca %struct.qp_broker_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = bitcast %struct.vmci_handle* %6 to i64*
  store i64 %0, i64* %13, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.vmci_ctx* %3, %struct.vmci_ctx** %9, align 8
  %14 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %15 = call i64 @vmci_ctx_get_id(%struct.vmci_ctx* %14)
  store i64 %15, i64* %12, align 8
  %16 = bitcast %struct.vmci_handle* %6 to i64*
  %17 = load i64, i64* %16, align 4
  %18 = call i64 @vmci_handle_is_invalid(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %22 = icmp ne %struct.vmci_ctx* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* @VMCI_INVALID_ID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %20, %4
  %28 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %28, i32* %5, align 4
  br label %181

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %36, i32* %5, align 4
  br label %181

37:                                               ; preds = %32
  %38 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qp_broker_list, i32 0, i32 0))
  %39 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %40 = bitcast %struct.vmci_handle* %6 to i64*
  %41 = load i64, i64* %40, align 4
  %42 = call i32 @vmci_ctx_qp_exists(%struct.vmci_ctx* %39, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %37
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %6, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pr_warn(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %45, i32 %47, i32 %49)
  %51 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  store i32 %51, i32* %11, align 4
  br label %178

52:                                               ; preds = %37
  %53 = bitcast %struct.vmci_handle* %6 to i64*
  %54 = load i64, i64* %53, align 4
  %55 = call %struct.qp_broker_entry* @qp_broker_handle_to_entry(i64 %54)
  store %struct.qp_broker_entry* %55, %struct.qp_broker_entry** %10, align 8
  %56 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %57 = icmp ne %struct.qp_broker_entry* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  store i32 %59, i32* %11, align 4
  br label %178

60:                                               ; preds = %52
  %61 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %62 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %68 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @VMCI_HOST_CONTEXT_ID, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %74 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %12, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72, %66
  %79 = load i32, i32* @VMCI_ERROR_QUEUEPAIR_NOTOWNER, align 4
  store i32 %79, i32* %11, align 4
  br label %178

80:                                               ; preds = %72, %60
  %81 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %82 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @VMCIQPB_CREATED_NO_MEM, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %88 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @VMCIQPB_ATTACHED_NO_MEM, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @VMCI_ERROR_UNAVAILABLE, align 4
  store i32 %93, i32* %11, align 4
  br label %178

94:                                               ; preds = %86, %80
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %98 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %101 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @qp_host_get_user_memory(i64 %95, i64 %96, i32 %99, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @VMCI_SUCCESS, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %94
  br label %178

108:                                              ; preds = %94
  %109 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %110 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %113 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @qp_host_map_queues(i32 %111, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @VMCI_SUCCESS, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %108
  %120 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %121 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %124 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @qp_host_unregister_user_memory(i32 %122, i32 %125)
  br label %178

127:                                              ; preds = %108
  %128 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %129 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @VMCIQPB_CREATED_NO_MEM, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load i64, i64* @VMCIQPB_CREATED_MEM, align 8
  %135 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %136 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %135, i32 0, i32 2
  store i64 %134, i64* %136, align 8
  br label %141

137:                                              ; preds = %127
  %138 = load i64, i64* @VMCIQPB_ATTACHED_MEM, align 8
  %139 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %140 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %139, i32 0, i32 2
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %137, %133
  %142 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %143 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %142, i32 0, i32 3
  store i32 1, i32* %143, align 8
  %144 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %145 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @VMCIQPB_ATTACHED_MEM, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %176

149:                                              ; preds = %141
  %150 = load i64, i64* %12, align 8
  %151 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %152 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = bitcast %struct.vmci_handle* %6 to i64*
  %155 = load i64, i64* %154, align 4
  %156 = call i32 @qp_notify_peer(i32 1, i64 %155, i64 %150, i64 %153)
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @VMCI_SUCCESS, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %175

160:                                              ; preds = %149
  %161 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %162 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %165 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %10, align 8
  %170 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @pr_warn(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i64 %163, i32 %168, i32 %173)
  br label %175

175:                                              ; preds = %160, %149
  br label %176

176:                                              ; preds = %175, %141
  %177 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %177, i32* %11, align 4
  br label %178

178:                                              ; preds = %176, %119, %107, %92, %78, %58, %44
  %179 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qp_broker_list, i32 0, i32 0))
  %180 = load i32, i32* %11, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %178, %35, %27
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i64 @vmci_ctx_get_id(%struct.vmci_ctx*) #1

declare dso_local i64 @vmci_handle_is_invalid(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vmci_ctx_qp_exists(%struct.vmci_ctx*, i64) #1

declare dso_local i32 @pr_warn(i8*, i64, i32, i32) #1

declare dso_local %struct.qp_broker_entry* @qp_broker_handle_to_entry(i64) #1

declare dso_local i32 @qp_host_get_user_memory(i64, i64, i32, i32) #1

declare dso_local i32 @qp_host_map_queues(i32, i32) #1

declare dso_local i32 @qp_host_unregister_user_memory(i32, i32) #1

declare dso_local i32 @qp_notify_peer(i32, i64, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
