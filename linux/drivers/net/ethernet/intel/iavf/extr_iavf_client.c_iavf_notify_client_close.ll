; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_notify_client_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_notify_client_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_vsi = type { %struct.iavf_adapter* }
%struct.iavf_adapter = type { %struct.TYPE_4__*, %struct.iavf_client_instance* }
%struct.TYPE_4__ = type { i32 }
%struct.iavf_client_instance = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, %struct.TYPE_6__*, i32)* }

@.str = private unnamed_addr constant [46 x i8] c"Cannot locate client instance close function\0A\00", align 1
@__IAVF_CLIENT_INSTANCE_OPENED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_notify_client_close(%struct.iavf_vsi* %0, i32 %1) #0 {
  %3 = alloca %struct.iavf_vsi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iavf_adapter*, align 8
  %6 = alloca %struct.iavf_client_instance*, align 8
  store %struct.iavf_vsi* %0, %struct.iavf_vsi** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iavf_vsi*, %struct.iavf_vsi** %3, align 8
  %8 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %7, i32 0, i32 0
  %9 = load %struct.iavf_adapter*, %struct.iavf_adapter** %8, align 8
  store %struct.iavf_adapter* %9, %struct.iavf_adapter** %5, align 8
  %10 = load %struct.iavf_adapter*, %struct.iavf_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %10, i32 0, i32 1
  %12 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %11, align 8
  store %struct.iavf_client_instance* %12, %struct.iavf_client_instance** %6, align 8
  %13 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %6, align 8
  %14 = icmp ne %struct.iavf_client_instance* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %6, align 8
  %17 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %6, align 8
  %22 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %6, align 8
  %29 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (i32*, %struct.TYPE_6__*, i32)*, i32 (i32*, %struct.TYPE_6__*, i32)** %33, align 8
  %35 = icmp ne i32 (i32*, %struct.TYPE_6__*, i32)* %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %27, %20, %15, %2
  %37 = load %struct.iavf_vsi*, %struct.iavf_vsi** %3, align 8
  %38 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %37, i32 0, i32 0
  %39 = load %struct.iavf_adapter*, %struct.iavf_adapter** %38, align 8
  %40 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @dev_dbg(i32* %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %66

44:                                               ; preds = %27
  %45 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %6, align 8
  %46 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32 (i32*, %struct.TYPE_6__*, i32)*, i32 (i32*, %struct.TYPE_6__*, i32)** %50, align 8
  %52 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %6, align 8
  %53 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %52, i32 0, i32 1
  %54 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %6, align 8
  %55 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 %51(i32* %53, %struct.TYPE_6__* %56, i32 %57)
  %59 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %6, align 8
  %60 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %59, i32 0, i32 1
  %61 = call i32 @iavf_client_release_qvlist(i32* %60)
  %62 = load i32, i32* @__IAVF_CLIENT_INSTANCE_OPENED, align 4
  %63 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %6, align 8
  %64 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %63, i32 0, i32 0
  %65 = call i32 @clear_bit(i32 %62, i32* %64)
  br label %66

66:                                               ; preds = %44, %36
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @iavf_client_release_qvlist(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
