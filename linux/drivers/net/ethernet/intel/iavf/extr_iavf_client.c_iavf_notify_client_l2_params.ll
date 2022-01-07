; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_notify_client_l2_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_notify_client_l2_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_vsi = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.iavf_client_instance* }
%struct.TYPE_6__ = type { i32 }
%struct.iavf_client_instance = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.iavf_params*)* }
%struct.iavf_params = type { i32 }
%struct.TYPE_9__ = type { %struct.iavf_params }

@.str = private unnamed_addr constant [56 x i8] c"Cannot locate client instance l2_param_change function\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_notify_client_l2_params(%struct.iavf_vsi* %0) #0 {
  %2 = alloca %struct.iavf_vsi*, align 8
  %3 = alloca %struct.iavf_client_instance*, align 8
  %4 = alloca %struct.iavf_params, align 4
  store %struct.iavf_vsi* %0, %struct.iavf_vsi** %2, align 8
  %5 = load %struct.iavf_vsi*, %struct.iavf_vsi** %2, align 8
  %6 = icmp ne %struct.iavf_vsi* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %66

8:                                                ; preds = %1
  %9 = load %struct.iavf_vsi*, %struct.iavf_vsi** %2, align 8
  %10 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %12, align 8
  store %struct.iavf_client_instance* %13, %struct.iavf_client_instance** %3, align 8
  %14 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %3, align 8
  %15 = icmp ne %struct.iavf_client_instance* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %8
  %17 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %3, align 8
  %18 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %3, align 8
  %23 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = icmp ne %struct.TYPE_8__* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %3, align 8
  %30 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.iavf_params*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.iavf_params*)** %34, align 8
  %36 = icmp ne i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.iavf_params*)* %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %28, %21, %16, %8
  %38 = load %struct.iavf_vsi*, %struct.iavf_vsi** %2, align 8
  %39 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = call i32 @dev_dbg(i32* %43, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %66

45:                                               ; preds = %28
  %46 = load %struct.iavf_vsi*, %struct.iavf_vsi** %2, align 8
  %47 = call i32 @iavf_client_get_params(%struct.iavf_vsi* %46, %struct.iavf_params* %4)
  %48 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %3, align 8
  %49 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = bitcast %struct.iavf_params* %50 to i8*
  %52 = bitcast %struct.iavf_params* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %3, align 8
  %54 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.iavf_params*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.iavf_params*)** %58, align 8
  %60 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %3, align 8
  %61 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %60, i32 0, i32 1
  %62 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %3, align 8
  %63 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = call i32 %59(%struct.TYPE_9__* %61, %struct.TYPE_10__* %64, %struct.iavf_params* %4)
  br label %66

66:                                               ; preds = %45, %37, %7
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @iavf_client_get_params(%struct.iavf_vsi*, %struct.iavf_params*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
