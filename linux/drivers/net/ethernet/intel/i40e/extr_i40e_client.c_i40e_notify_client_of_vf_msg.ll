; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_notify_client_of_vf_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_notify_client_of_vf_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_4__*, %struct.i40e_client_instance* }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_client_instance = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, %struct.TYPE_6__*, i32, i32*, i32)* }

@.str = private unnamed_addr constant [63 x i8] c"Cannot locate client instance virtual channel receive routine\0A\00", align 1
@__I40E_CLIENT_INSTANCE_OPENED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Client is not open, abort virtchnl_receive\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_notify_client_of_vf_msg(%struct.i40e_vsi* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.i40e_vsi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_pf*, align 8
  %10 = alloca %struct.i40e_client_instance*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %12 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %11, i32 0, i32 0
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %12, align 8
  store %struct.i40e_pf* %13, %struct.i40e_pf** %9, align 8
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %15 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %14, i32 0, i32 1
  %16 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %15, align 8
  store %struct.i40e_client_instance* %16, %struct.i40e_client_instance** %10, align 8
  %17 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %10, align 8
  %18 = icmp ne %struct.i40e_client_instance* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %10, align 8
  %21 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %4
  br label %76

25:                                               ; preds = %19
  %26 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %10, align 8
  %27 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %10, align 8
  %34 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32 (i32*, %struct.TYPE_6__*, i32, i32*, i32)*, i32 (i32*, %struct.TYPE_6__*, i32, i32*, i32)** %38, align 8
  %40 = icmp ne i32 (i32*, %struct.TYPE_6__*, i32, i32*, i32)* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %32, %25
  %42 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %43 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @dev_dbg(i32* %45, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %76

47:                                               ; preds = %32
  %48 = load i32, i32* @__I40E_CLIENT_INSTANCE_OPENED, align 4
  %49 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %10, align 8
  %50 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %49, i32 0, i32 2
  %51 = call i32 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %55 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @dev_dbg(i32* %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %76

59:                                               ; preds = %47
  %60 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %10, align 8
  %61 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32 (i32*, %struct.TYPE_6__*, i32, i32*, i32)*, i32 (i32*, %struct.TYPE_6__*, i32, i32*, i32)** %65, align 8
  %67 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %10, align 8
  %68 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %67, i32 0, i32 1
  %69 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %10, align 8
  %70 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 %66(i32* %68, %struct.TYPE_6__* %71, i32 %72, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %59, %53, %41, %24
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
