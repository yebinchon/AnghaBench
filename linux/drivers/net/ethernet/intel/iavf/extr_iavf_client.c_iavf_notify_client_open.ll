; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_notify_client_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_notify_client_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_vsi = type { %struct.iavf_adapter* }
%struct.iavf_adapter = type { %struct.TYPE_4__*, %struct.iavf_client_instance* }
%struct.TYPE_4__ = type { i32 }
%struct.iavf_client_instance = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, %struct.TYPE_6__*)* }

@.str = private unnamed_addr constant [45 x i8] c"Cannot locate client instance open function\0A\00", align 1
@__IAVF_CLIENT_INSTANCE_OPENED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_notify_client_open(%struct.iavf_vsi* %0) #0 {
  %2 = alloca %struct.iavf_vsi*, align 8
  %3 = alloca %struct.iavf_adapter*, align 8
  %4 = alloca %struct.iavf_client_instance*, align 8
  %5 = alloca i32, align 4
  store %struct.iavf_vsi* %0, %struct.iavf_vsi** %2, align 8
  %6 = load %struct.iavf_vsi*, %struct.iavf_vsi** %2, align 8
  %7 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %6, i32 0, i32 0
  %8 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  store %struct.iavf_adapter* %8, %struct.iavf_adapter** %3, align 8
  %9 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %9, i32 0, i32 1
  %11 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %10, align 8
  store %struct.iavf_client_instance* %11, %struct.iavf_client_instance** %4, align 8
  %12 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %4, align 8
  %13 = icmp ne %struct.iavf_client_instance* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %4, align 8
  %16 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %4, align 8
  %21 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %4, align 8
  %28 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (i32*, %struct.TYPE_6__*)*, i32 (i32*, %struct.TYPE_6__*)** %32, align 8
  %34 = icmp ne i32 (i32*, %struct.TYPE_6__*)* %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %26, %19, %14, %1
  %36 = load %struct.iavf_vsi*, %struct.iavf_vsi** %2, align 8
  %37 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %36, i32 0, i32 0
  %38 = load %struct.iavf_adapter*, %struct.iavf_adapter** %37, align 8
  %39 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @dev_dbg(i32* %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %71

43:                                               ; preds = %26
  %44 = load i32, i32* @__IAVF_CLIENT_INSTANCE_OPENED, align 4
  %45 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %4, align 8
  %46 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %45, i32 0, i32 0
  %47 = call i32 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %71, label %49

49:                                               ; preds = %43
  %50 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %4, align 8
  %51 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32 (i32*, %struct.TYPE_6__*)*, i32 (i32*, %struct.TYPE_6__*)** %55, align 8
  %57 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %4, align 8
  %58 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %57, i32 0, i32 2
  %59 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %4, align 8
  %60 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = call i32 %56(i32* %58, %struct.TYPE_6__* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %49
  %66 = load i32, i32* @__IAVF_CLIENT_INSTANCE_OPENED, align 4
  %67 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %4, align 8
  %68 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %67, i32 0, i32 0
  %69 = call i32 @set_bit(i32 %66, i32* %68)
  br label %70

70:                                               ; preds = %65, %49
  br label %71

71:                                               ; preds = %35, %70, %43
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
