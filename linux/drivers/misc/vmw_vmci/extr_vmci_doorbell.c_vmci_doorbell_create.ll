; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_doorbell.c_vmci_doorbell_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_doorbell.c_vmci_doorbell_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i64, i64 }
%struct.dbell_entry = type { i32, i32, i64, i8*, i64, i64, i32, i64, i32 }

@VMCI_FLAG_DELAYED_CB = common dso_local global i64 0, align 8
@VMCI_PRIVILEGE_ALL_FLAGS = common dso_local global i64 0, align 8
@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed allocating memory for datagram entry\0A\00", align 1
@VMCI_ERROR_NO_MEM = common dso_local global i32 0, align 4
@VMCI_INVALID_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to get context ID\0A\00", align 1
@VMCI_ERROR_NO_RESOURCES = common dso_local global i32 0, align 4
@VMCI_HOST_CONTEXT_ID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Invalid argument (handle=0x%x:0x%x)\0A\00", align 1
@dbell_delayed_dispatch = common dso_local global i32 0, align 4
@VMCI_RESOURCE_TYPE_DOORBELL = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"Failed to add new resource (handle=0x%x:0x%x), error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_doorbell_create(%struct.vmci_handle* %0, i64 %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmci_handle*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.dbell_entry*, align 8
  %13 = alloca %struct.vmci_handle, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.vmci_handle, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.vmci_handle, align 8
  store %struct.vmci_handle* %0, %struct.vmci_handle** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load %struct.vmci_handle*, %struct.vmci_handle** %7, align 8
  %20 = icmp ne %struct.vmci_handle* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %5
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @VMCI_FLAG_DELAYED_CB, align 8
  %27 = xor i64 %26, -1
  %28 = and i64 %25, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @VMCI_PRIVILEGE_ALL_FLAGS, align 8
  %33 = xor i64 %32, -1
  %34 = and i64 %31, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %24, %21, %5
  %37 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %37, i32* %6, align 4
  br label %206

38:                                               ; preds = %30
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.dbell_entry* @kmalloc(i32 64, i32 %39)
  store %struct.dbell_entry* %40, %struct.dbell_entry** %12, align 8
  %41 = load %struct.dbell_entry*, %struct.dbell_entry** %12, align 8
  %42 = icmp eq %struct.dbell_entry* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @VMCI_ERROR_NO_MEM, align 4
  store i32 %45, i32* %6, align 4
  br label %206

46:                                               ; preds = %38
  %47 = load %struct.vmci_handle*, %struct.vmci_handle** %7, align 8
  %48 = bitcast %struct.vmci_handle* %47 to { i64, i64 }*
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @vmci_handle_is_invalid(i64 %50, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %46
  %56 = call i64 (...) @vmci_get_context_id()
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* @VMCI_INVALID_ID, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @VMCI_ERROR_NO_RESOURCES, align 4
  store i32 %62, i32* %14, align 4
  br label %202

63:                                               ; preds = %55
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* @VMCI_INVALID_ID, align 8
  %66 = call { i64, i64 } @vmci_make_handle(i64 %64, i64 %65)
  %67 = bitcast %struct.vmci_handle* %16 to { i64, i64 }*
  %68 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 0
  %69 = extractvalue { i64, i64 } %66, 0
  store i64 %69, i64* %68, align 8
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 1
  %71 = extractvalue { i64, i64 } %66, 1
  store i64 %71, i64* %70, align 8
  %72 = bitcast %struct.vmci_handle* %13 to i8*
  %73 = bitcast %struct.vmci_handle* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 16, i1 false)
  br label %112

74:                                               ; preds = %46
  store i32 0, i32* %17, align 4
  %75 = load %struct.vmci_handle*, %struct.vmci_handle** %7, align 8
  %76 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @VMCI_HOST_CONTEXT_ID, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %89, label %80

80:                                               ; preds = %74
  %81 = call i64 (...) @vmci_guest_code_active()
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = call i64 (...) @vmci_get_context_id()
  %85 = load %struct.vmci_handle*, %struct.vmci_handle** %7, align 8
  %86 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83, %74
  store i32 1, i32* %17, align 4
  br label %90

90:                                               ; preds = %89, %83, %80
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.vmci_handle*, %struct.vmci_handle** %7, align 8
  %95 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @VMCI_INVALID_ID, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %93, %90
  %100 = load %struct.vmci_handle*, %struct.vmci_handle** %7, align 8
  %101 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.vmci_handle*, %struct.vmci_handle** %7, align 8
  %104 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @pr_devel(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %102, i64 %105)
  %107 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %107, i32* %14, align 4
  br label %202

108:                                              ; preds = %93
  %109 = load %struct.vmci_handle*, %struct.vmci_handle** %7, align 8
  %110 = bitcast %struct.vmci_handle* %13 to i8*
  %111 = bitcast %struct.vmci_handle* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 16, i1 false)
  br label %112

112:                                              ; preds = %108, %63
  %113 = load %struct.dbell_entry*, %struct.dbell_entry** %12, align 8
  %114 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  %115 = load %struct.dbell_entry*, %struct.dbell_entry** %12, align 8
  %116 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %115, i32 0, i32 8
  %117 = call i32 @INIT_HLIST_NODE(i32* %116)
  %118 = load i64, i64* %9, align 8
  %119 = load %struct.dbell_entry*, %struct.dbell_entry** %12, align 8
  %120 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %119, i32 0, i32 7
  store i64 %118, i64* %120, align 8
  %121 = load %struct.dbell_entry*, %struct.dbell_entry** %12, align 8
  %122 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %121, i32 0, i32 6
  %123 = load i32, i32* @dbell_delayed_dispatch, align 4
  %124 = call i32 @INIT_WORK(i32* %122, i32 %123)
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* @VMCI_FLAG_DELAYED_CB, align 8
  %127 = and i64 %125, %126
  %128 = load %struct.dbell_entry*, %struct.dbell_entry** %12, align 8
  %129 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %128, i32 0, i32 5
  store i64 %127, i64* %129, align 8
  %130 = load i64, i64* %10, align 8
  %131 = load %struct.dbell_entry*, %struct.dbell_entry** %12, align 8
  %132 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %131, i32 0, i32 4
  store i64 %130, i64* %132, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = load %struct.dbell_entry*, %struct.dbell_entry** %12, align 8
  %135 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  %136 = load %struct.dbell_entry*, %struct.dbell_entry** %12, align 8
  %137 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %136, i32 0, i32 1
  %138 = call i32 @atomic_set(i32* %137, i32 0)
  %139 = load %struct.dbell_entry*, %struct.dbell_entry** %12, align 8
  %140 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %139, i32 0, i32 0
  %141 = load i32, i32* @VMCI_RESOURCE_TYPE_DOORBELL, align 4
  %142 = bitcast %struct.vmci_handle* %13 to { i64, i64 }*
  %143 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %142, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @vmci_resource_add(i32* %140, i32 %141, i64 %144, i64 %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* @VMCI_SUCCESS, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %112
  %152 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %13, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %13, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %14, align 4
  %157 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i64 %153, i64 %155, i32 %156)
  br label %202

158:                                              ; preds = %112
  %159 = load %struct.dbell_entry*, %struct.dbell_entry** %12, align 8
  %160 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %159, i32 0, i32 0
  %161 = call { i64, i64 } @vmci_resource_handle(i32* %160)
  %162 = bitcast %struct.vmci_handle* %18 to { i64, i64 }*
  %163 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %162, i32 0, i32 0
  %164 = extractvalue { i64, i64 } %161, 0
  store i64 %164, i64* %163, align 8
  %165 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %162, i32 0, i32 1
  %166 = extractvalue { i64, i64 } %161, 1
  store i64 %166, i64* %165, align 8
  %167 = bitcast %struct.vmci_handle* %13 to i8*
  %168 = bitcast %struct.vmci_handle* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %167, i8* align 8 %168, i64 16, i1 false)
  %169 = call i64 (...) @vmci_guest_code_active()
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %191

171:                                              ; preds = %158
  %172 = load %struct.dbell_entry*, %struct.dbell_entry** %12, align 8
  %173 = call i32 @dbell_index_table_add(%struct.dbell_entry* %172)
  %174 = load %struct.dbell_entry*, %struct.dbell_entry** %12, align 8
  %175 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = bitcast %struct.vmci_handle* %13 to { i64, i64 }*
  %178 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %177, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @dbell_link(i64 %179, i64 %181, i64 %176)
  store i32 %182, i32* %14, align 4
  %183 = load i32, i32* @VMCI_SUCCESS, align 4
  %184 = load i32, i32* %14, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %171
  br label %196

187:                                              ; preds = %171
  %188 = load %struct.dbell_entry*, %struct.dbell_entry** %12, align 8
  %189 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %188, i32 0, i32 1
  %190 = call i32 @atomic_set(i32* %189, i32 1)
  br label %191

191:                                              ; preds = %187, %158
  %192 = load %struct.vmci_handle*, %struct.vmci_handle** %7, align 8
  %193 = bitcast %struct.vmci_handle* %192 to i8*
  %194 = bitcast %struct.vmci_handle* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %193, i8* align 8 %194, i64 16, i1 false)
  %195 = load i32, i32* %14, align 4
  store i32 %195, i32* %6, align 4
  br label %206

196:                                              ; preds = %186
  %197 = load %struct.dbell_entry*, %struct.dbell_entry** %12, align 8
  %198 = call i32 @dbell_index_table_remove(%struct.dbell_entry* %197)
  %199 = load %struct.dbell_entry*, %struct.dbell_entry** %12, align 8
  %200 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %199, i32 0, i32 0
  %201 = call i32 @vmci_resource_remove(i32* %200)
  br label %202

202:                                              ; preds = %196, %151, %99, %60
  %203 = load %struct.dbell_entry*, %struct.dbell_entry** %12, align 8
  %204 = call i32 @kfree(%struct.dbell_entry* %203)
  %205 = load i32, i32* %14, align 4
  store i32 %205, i32* %6, align 4
  br label %206

206:                                              ; preds = %202, %191, %43, %36
  %207 = load i32, i32* %6, align 4
  ret i32 %207
}

declare dso_local %struct.dbell_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i64 @vmci_handle_is_invalid(i64, i64) #1

declare dso_local i64 @vmci_get_context_id(...) #1

declare dso_local { i64, i64 } @vmci_make_handle(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @vmci_guest_code_active(...) #1

declare dso_local i32 @pr_devel(i8*, i64, i64) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @vmci_resource_add(i32*, i32, i64, i64) #1

declare dso_local { i64, i64 } @vmci_resource_handle(i32*) #1

declare dso_local i32 @dbell_index_table_add(%struct.dbell_entry*) #1

declare dso_local i32 @dbell_link(i64, i64, i64) #1

declare dso_local i32 @dbell_index_table_remove(%struct.dbell_entry*) #1

declare dso_local i32 @vmci_resource_remove(i32*) #1

declare dso_local i32 @kfree(%struct.dbell_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
