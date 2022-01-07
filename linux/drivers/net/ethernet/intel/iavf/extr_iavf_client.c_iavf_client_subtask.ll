; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_client_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_client_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_client = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (i32*, %struct.iavf_client*)* }
%struct.iavf_adapter = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iavf_client_instance = type { i32, i32 }

@vf_registered_client = common dso_local global %struct.iavf_client* null, align 8
@__IAVF_DOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Added instance of Client %s\0A\00", align 1
@__IAVF_CLIENT_INSTANCE_OPENED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_client_subtask(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca %struct.iavf_client*, align 8
  %4 = alloca %struct.iavf_client_instance*, align 8
  %5 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %6 = load %struct.iavf_client*, %struct.iavf_client** @vf_registered_client, align 8
  store %struct.iavf_client* %6, %struct.iavf_client** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @__IAVF_DOWN, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %71

13:                                               ; preds = %1
  %14 = load %struct.iavf_client*, %struct.iavf_client** %3, align 8
  %15 = icmp ne %struct.iavf_client* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  br label %71

17:                                               ; preds = %13
  %18 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %19 = call %struct.iavf_client_instance* @iavf_client_add_instance(%struct.iavf_adapter* %18)
  store %struct.iavf_client_instance* %19, %struct.iavf_client_instance** %4, align 8
  %20 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %4, align 8
  %21 = icmp ne %struct.iavf_client_instance* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %71

23:                                               ; preds = %17
  %24 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.iavf_client*, %struct.iavf_client** %3, align 8
  %29 = getelementptr inbounds %struct.iavf_client, %struct.iavf_client* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_info(i32* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @__IAVF_CLIENT_INSTANCE_OPENED, align 4
  %33 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %4, align 8
  %34 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %33, i32 0, i32 0
  %35 = call i32 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %71, label %37

37:                                               ; preds = %23
  %38 = load %struct.iavf_client*, %struct.iavf_client** %3, align 8
  %39 = getelementptr inbounds %struct.iavf_client, %struct.iavf_client* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load %struct.iavf_client*, %struct.iavf_client** %3, align 8
  %44 = getelementptr inbounds %struct.iavf_client, %struct.iavf_client* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32 (i32*, %struct.iavf_client*)*, i32 (i32*, %struct.iavf_client*)** %46, align 8
  %48 = icmp ne i32 (i32*, %struct.iavf_client*)* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load %struct.iavf_client*, %struct.iavf_client** %3, align 8
  %51 = getelementptr inbounds %struct.iavf_client, %struct.iavf_client* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (i32*, %struct.iavf_client*)*, i32 (i32*, %struct.iavf_client*)** %53, align 8
  %55 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %4, align 8
  %56 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %55, i32 0, i32 1
  %57 = load %struct.iavf_client*, %struct.iavf_client** %3, align 8
  %58 = call i32 %54(i32* %56, %struct.iavf_client* %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %49, %42, %37
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @__IAVF_CLIENT_INSTANCE_OPENED, align 4
  %64 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %4, align 8
  %65 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %64, i32 0, i32 0
  %66 = call i32 @set_bit(i32 %63, i32* %65)
  br label %70

67:                                               ; preds = %59
  %68 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %69 = call i32 @iavf_client_del_instance(%struct.iavf_adapter* %68)
  br label %70

70:                                               ; preds = %67, %62
  br label %71

71:                                               ; preds = %12, %16, %22, %70, %23
  ret void
}

declare dso_local %struct.iavf_client_instance* @iavf_client_add_instance(%struct.iavf_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @iavf_client_del_instance(%struct.iavf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
