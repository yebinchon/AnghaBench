; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_notify_client_of_l2_param_changes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_notify_client_of_l2_param_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_5__*, %struct.i40e_client_instance* }
%struct.TYPE_5__ = type { i32 }
%struct.i40e_client_instance = type { %struct.TYPE_8__*, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.i40e_params*)* }
%struct.i40e_params = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"Cannot locate client instance l2_param_change routine\0A\00", align 1
@__I40E_CLIENT_INSTANCE_OPENED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Client is not open, abort l2 param change\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_notify_client_of_l2_param_changes(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca %struct.i40e_client_instance*, align 8
  %5 = alloca %struct.i40e_params, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %6 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %7 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %6, i32 0, i32 0
  %8 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  store %struct.i40e_pf* %8, %struct.i40e_pf** %3, align 8
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 1
  %11 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %10, align 8
  store %struct.i40e_client_instance* %11, %struct.i40e_client_instance** %4, align 8
  %12 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %4, align 8
  %13 = icmp ne %struct.i40e_client_instance* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %4, align 8
  %16 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  br label %79

20:                                               ; preds = %14
  %21 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %4, align 8
  %22 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %4, align 8
  %29 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.i40e_params*)*, i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.i40e_params*)** %33, align 8
  %35 = icmp ne i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.i40e_params*)* %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %27, %20
  %37 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %38 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %37, i32 0, i32 0
  %39 = load %struct.i40e_pf*, %struct.i40e_pf** %38, align 8
  %40 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call i32 @dev_dbg(i32* %42, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %79

44:                                               ; preds = %27
  %45 = load i32, i32* @__I40E_CLIENT_INSTANCE_OPENED, align 4
  %46 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %4, align 8
  %47 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %46, i32 0, i32 2
  %48 = call i32 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %44
  %51 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %52 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %51, i32 0, i32 0
  %53 = load %struct.i40e_pf*, %struct.i40e_pf** %52, align 8
  %54 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @dev_dbg(i32* %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %79

58:                                               ; preds = %44
  %59 = call i32 @memset(%struct.i40e_params* %5, i32 0, i32 4)
  %60 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %61 = call i32 @i40e_client_get_params(%struct.i40e_vsi* %60, %struct.i40e_params* %5)
  %62 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %4, align 8
  %63 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = call i32 @memcpy(i32* %64, %struct.i40e_params* %5, i32 4)
  %66 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %4, align 8
  %67 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.i40e_params*)*, i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.i40e_params*)** %71, align 8
  %73 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %4, align 8
  %74 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %73, i32 0, i32 1
  %75 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %4, align 8
  %76 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = call i32 %72(%struct.TYPE_7__* %74, %struct.TYPE_8__* %77, %struct.i40e_params* %5)
  br label %79

79:                                               ; preds = %58, %50, %36, %19
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.i40e_params*, i32, i32) #1

declare dso_local i32 @i40e_client_get_params(%struct.i40e_vsi*, %struct.i40e_params*) #1

declare dso_local i32 @memcpy(i32*, %struct.i40e_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
