; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_resource.c_vmci_resource_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_resource.c_vmci_resource_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.vmci_resource = type { i32, i32, %struct.vmci_handle, i32, i32 }
%struct.vmci_handle = type { i64, i32 }

@vmci_resource_table = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@VMCI_INVALID_ID = common dso_local global i64 0, align 8
@VMCI_ERROR_NO_HANDLE = common dso_local global i32 0, align 4
@VMCI_ERROR_ALREADY_EXISTS = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_resource_add(%struct.vmci_resource* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.vmci_handle, align 8
  %6 = alloca %struct.vmci_resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast %struct.vmci_handle* %5 to { i64, i32 }*
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  store i64 %2, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  store i32 %3, i32* %12, align 8
  store %struct.vmci_resource* %0, %struct.vmci_resource** %6, align 8
  store i32 %1, i32* %7, align 4
  %13 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmci_resource_table, i32 0, i32 0))
  %14 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %5, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VMCI_INVALID_ID, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %5, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @vmci_resource_find_id(i32 %20, i32 %21)
  %23 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %5, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %5, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VMCI_INVALID_ID, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @VMCI_ERROR_NO_HANDLE, align 4
  store i32 %29, i32* %9, align 4
  br label %76

30:                                               ; preds = %18
  br label %43

31:                                               ; preds = %4
  %32 = load i32, i32* %7, align 4
  %33 = bitcast %struct.vmci_handle* %5 to { i64, i32 }*
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @vmci_resource_lookup(i64 %35, i32 %37, i32 %32)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @VMCI_ERROR_ALREADY_EXISTS, align 4
  store i32 %41, i32* %9, align 4
  br label %76

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %30
  %44 = load %struct.vmci_resource*, %struct.vmci_resource** %6, align 8
  %45 = getelementptr inbounds %struct.vmci_resource, %struct.vmci_resource* %44, i32 0, i32 2
  %46 = bitcast %struct.vmci_handle* %45 to i8*
  %47 = bitcast %struct.vmci_handle* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 16, i1 false)
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.vmci_resource*, %struct.vmci_resource** %6, align 8
  %50 = getelementptr inbounds %struct.vmci_resource, %struct.vmci_resource* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.vmci_resource*, %struct.vmci_resource** %6, align 8
  %52 = getelementptr inbounds %struct.vmci_resource, %struct.vmci_resource* %51, i32 0, i32 1
  %53 = call i32 @INIT_HLIST_NODE(i32* %52)
  %54 = load %struct.vmci_resource*, %struct.vmci_resource** %6, align 8
  %55 = getelementptr inbounds %struct.vmci_resource, %struct.vmci_resource* %54, i32 0, i32 4
  %56 = call i32 @kref_init(i32* %55)
  %57 = load %struct.vmci_resource*, %struct.vmci_resource** %6, align 8
  %58 = getelementptr inbounds %struct.vmci_resource, %struct.vmci_resource* %57, i32 0, i32 3
  %59 = call i32 @init_completion(i32* %58)
  %60 = load %struct.vmci_resource*, %struct.vmci_resource** %6, align 8
  %61 = getelementptr inbounds %struct.vmci_resource, %struct.vmci_resource* %60, i32 0, i32 2
  %62 = bitcast %struct.vmci_handle* %61 to { i64, i32 }*
  %63 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %62, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @vmci_resource_hash(i64 %64, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load %struct.vmci_resource*, %struct.vmci_resource** %6, align 8
  %69 = getelementptr inbounds %struct.vmci_resource, %struct.vmci_resource* %68, i32 0, i32 1
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmci_resource_table, i32 0, i32 1), align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = call i32 @hlist_add_head_rcu(i32* %69, i32* %73)
  %75 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %43, %40, %28
  %77 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmci_resource_table, i32 0, i32 0))
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @vmci_resource_find_id(i32, i32) #1

declare dso_local i64 @vmci_resource_lookup(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @vmci_resource_hash(i64, i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
