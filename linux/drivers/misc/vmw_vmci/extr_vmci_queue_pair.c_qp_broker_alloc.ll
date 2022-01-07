; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_broker_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_broker_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vmci_qp_page_store = type { i32 }
%struct.vmci_ctx = type { i32 }
%struct.qp_broker_entry = type { i32 }
%struct.vmci_handle = type { i64, i64 }

@VMCI_QPFLAG_LOCAL = common dso_local global i64 0, align 8
@VMCI_QP_ALL_FLAGS = common dso_local global i64 0, align 8
@VMCI_INVALID_ID = common dso_local global i64 0, align 8
@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@qp_broker_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [69 x i8] c"Context (ID=0x%x) already attached to queue pair (handle=0x%x:0x%x)\0A\00", align 1
@VMCI_ERROR_ALREADY_EXISTS = common dso_local global i32 0, align 4
@VMCI_HOST_CONTEXT_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i64, i64, i64, %struct.vmci_qp_page_store*, %struct.vmci_ctx*, i32, i8*, %struct.qp_broker_entry**, i32*)* @qp_broker_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_broker_alloc(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, %struct.vmci_qp_page_store* %7, %struct.vmci_ctx* %8, i32 %9, i8* %10, %struct.qp_broker_entry** %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.vmci_handle, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.vmci_qp_page_store*, align 8
  %22 = alloca %struct.vmci_ctx*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca %struct.qp_broker_entry**, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.qp_broker_entry*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = bitcast %struct.vmci_handle* %15 to { i64, i64 }*
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  store i64 %0, i64* %33, align 8
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  store i64 %1, i64* %34, align 8
  store i64 %2, i64* %16, align 8
  store i64 %3, i64* %17, align 8
  store i64 %4, i64* %18, align 8
  store i64 %5, i64* %19, align 8
  store i64 %6, i64* %20, align 8
  store %struct.vmci_qp_page_store* %7, %struct.vmci_qp_page_store** %21, align 8
  store %struct.vmci_ctx* %8, %struct.vmci_ctx** %22, align 8
  store i32 %9, i32* %23, align 4
  store i8* %10, i8** %24, align 8
  store %struct.qp_broker_entry** %11, %struct.qp_broker_entry*** %25, align 8
  store i32* %12, i32** %26, align 8
  %35 = load %struct.vmci_ctx*, %struct.vmci_ctx** %22, align 8
  %36 = call i64 @vmci_ctx_get_id(%struct.vmci_ctx* %35)
  store i64 %36, i64* %27, align 8
  store %struct.qp_broker_entry* null, %struct.qp_broker_entry** %29, align 8
  %37 = load i64, i64* %17, align 8
  %38 = load i64, i64* @VMCI_QPFLAG_LOCAL, align 8
  %39 = and i64 %37, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %30, align 4
  %41 = bitcast %struct.vmci_handle* %15 to { i64, i64 }*
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @vmci_handle_is_invalid(i64 %43, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %75, label %48

48:                                               ; preds = %13
  %49 = load i64, i64* %17, align 8
  %50 = load i64, i64* @VMCI_QP_ALL_FLAGS, align 8
  %51 = xor i64 %50, -1
  %52 = and i64 %49, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %75, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %30, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %75, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %19, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %20, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60, %57
  %64 = load %struct.vmci_ctx*, %struct.vmci_ctx** %22, align 8
  %65 = icmp ne %struct.vmci_ctx* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i64, i64* %27, align 8
  %68 = load i64, i64* @VMCI_INVALID_ID, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %15, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VMCI_INVALID_ID, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70, %66, %63, %60, %54, %48, %13
  %76 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %76, i32* %14, align 4
  br label %176

77:                                               ; preds = %70
  %78 = load %struct.vmci_qp_page_store*, %struct.vmci_qp_page_store** %21, align 8
  %79 = icmp ne %struct.vmci_qp_page_store* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load %struct.vmci_qp_page_store*, %struct.vmci_qp_page_store** %21, align 8
  %82 = call i32 @VMCI_QP_PAGESTORE_IS_WELLFORMED(%struct.vmci_qp_page_store* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %85, i32* %14, align 4
  br label %176

86:                                               ; preds = %80, %77
  %87 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qp_broker_list, i32 0, i32 0))
  %88 = load i32, i32* %30, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %108, label %90

90:                                               ; preds = %86
  %91 = load %struct.vmci_ctx*, %struct.vmci_ctx** %22, align 8
  %92 = bitcast %struct.vmci_handle* %15 to { i64, i64 }*
  %93 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %92, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @vmci_ctx_qp_exists(%struct.vmci_ctx* %91, i64 %94, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %90
  %100 = load i64, i64* %27, align 8
  %101 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %15, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %15, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @pr_devel(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %100, i64 %102, i64 %104)
  %106 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qp_broker_list, i32 0, i32 0))
  %107 = load i32, i32* @VMCI_ERROR_ALREADY_EXISTS, align 4
  store i32 %107, i32* %14, align 4
  br label %176

108:                                              ; preds = %90, %86
  %109 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %15, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @VMCI_INVALID_ID, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = bitcast %struct.vmci_handle* %15 to { i64, i64 }*
  %115 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %114, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call %struct.qp_broker_entry* @qp_broker_handle_to_entry(i64 %116, i64 %118)
  store %struct.qp_broker_entry* %119, %struct.qp_broker_entry** %29, align 8
  br label %120

120:                                              ; preds = %113, %108
  %121 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %29, align 8
  %122 = icmp ne %struct.qp_broker_entry* %121, null
  br i1 %122, label %140, label %123

123:                                              ; preds = %120
  store i32 1, i32* %28, align 4
  %124 = load i64, i64* %16, align 8
  %125 = load i64, i64* %17, align 8
  %126 = load i64, i64* %18, align 8
  %127 = load i64, i64* %19, align 8
  %128 = load i64, i64* %20, align 8
  %129 = load %struct.vmci_qp_page_store*, %struct.vmci_qp_page_store** %21, align 8
  %130 = load %struct.vmci_ctx*, %struct.vmci_ctx** %22, align 8
  %131 = load i32, i32* %23, align 4
  %132 = load i8*, i8** %24, align 8
  %133 = load %struct.qp_broker_entry**, %struct.qp_broker_entry*** %25, align 8
  %134 = bitcast %struct.vmci_handle* %15 to { i64, i64 }*
  %135 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %134, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @qp_broker_create(i64 %136, i64 %138, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, %struct.vmci_qp_page_store* %129, %struct.vmci_ctx* %130, i32 %131, i8* %132, %struct.qp_broker_entry** %133)
  store i32 %139, i32* %31, align 4
  br label %153

140:                                              ; preds = %120
  store i32 0, i32* %28, align 4
  %141 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %29, align 8
  %142 = load i64, i64* %16, align 8
  %143 = load i64, i64* %17, align 8
  %144 = load i64, i64* %18, align 8
  %145 = load i64, i64* %19, align 8
  %146 = load i64, i64* %20, align 8
  %147 = load %struct.vmci_qp_page_store*, %struct.vmci_qp_page_store** %21, align 8
  %148 = load %struct.vmci_ctx*, %struct.vmci_ctx** %22, align 8
  %149 = load i32, i32* %23, align 4
  %150 = load i8*, i8** %24, align 8
  %151 = load %struct.qp_broker_entry**, %struct.qp_broker_entry*** %25, align 8
  %152 = call i32 @qp_broker_attach(%struct.qp_broker_entry* %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, %struct.vmci_qp_page_store* %147, %struct.vmci_ctx* %148, i32 %149, i8* %150, %struct.qp_broker_entry** %151)
  store i32 %152, i32* %31, align 4
  br label %153

153:                                              ; preds = %140, %123
  %154 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qp_broker_list, i32 0, i32 0))
  %155 = load i32*, i32** %26, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %174

157:                                              ; preds = %153
  %158 = load i64, i64* %27, align 8
  %159 = load i64, i64* @VMCI_HOST_CONTEXT_ID, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %157
  %162 = load i32, i32* %28, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* %30, align 4
  %166 = icmp ne i32 %165, 0
  br label %167

167:                                              ; preds = %164, %161
  %168 = phi i1 [ false, %161 ], [ %166, %164 ]
  %169 = xor i1 %168, true
  br label %170

170:                                              ; preds = %167, %157
  %171 = phi i1 [ false, %157 ], [ %169, %167 ]
  %172 = zext i1 %171 to i32
  %173 = load i32*, i32** %26, align 8
  store i32 %172, i32* %173, align 4
  br label %174

174:                                              ; preds = %170, %153
  %175 = load i32, i32* %31, align 4
  store i32 %175, i32* %14, align 4
  br label %176

176:                                              ; preds = %174, %99, %84, %75
  %177 = load i32, i32* %14, align 4
  ret i32 %177
}

declare dso_local i64 @vmci_ctx_get_id(%struct.vmci_ctx*) #1

declare dso_local i64 @vmci_handle_is_invalid(i64, i64) #1

declare dso_local i32 @VMCI_QP_PAGESTORE_IS_WELLFORMED(%struct.vmci_qp_page_store*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @vmci_ctx_qp_exists(%struct.vmci_ctx*, i64, i64) #1

declare dso_local i32 @pr_devel(i8*, i64, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.qp_broker_entry* @qp_broker_handle_to_entry(i64, i64) #1

declare dso_local i32 @qp_broker_create(i64, i64, i64, i64, i64, i64, i64, %struct.vmci_qp_page_store*, %struct.vmci_ctx*, i32, i8*, %struct.qp_broker_entry**) #1

declare dso_local i32 @qp_broker_attach(%struct.qp_broker_entry*, i64, i64, i64, i64, i64, %struct.vmci_qp_page_store*, %struct.vmci_ctx*, i32, i8*, %struct.qp_broker_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
