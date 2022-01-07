; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_client_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_client_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.i40e_client*)* }
%struct.i40e_pf = type { i64, i32*, %struct.i40e_client_instance*, %struct.i40e_vsi** }
%struct.i40e_client_instance = type { i32, i32 }
%struct.i40e_vsi = type { i32*, i64 }

@registered_client = common dso_local global %struct.i40e_client* null, align 8
@__I40E_CLIENT_SERVICE_REQUESTED = common dso_local global i32 0, align 4
@__I40E_DOWN = common dso_local global i32 0, align 4
@__I40E_CONFIG_BUSY = common dso_local global i32 0, align 4
@__I40E_CLIENT_INSTANCE_OPENED = common dso_local global i32 0, align 4
@__I40E_VSI_DOWN = common dso_local global i32 0, align 4
@I40E_CLIENT_VSI_FLAG_TCP_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_client_subtask(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca %struct.i40e_client*, align 8
  %4 = alloca %struct.i40e_client_instance*, align 8
  %5 = alloca %struct.i40e_vsi*, align 8
  %6 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %7 = load %struct.i40e_client*, %struct.i40e_client** @registered_client, align 8
  store %struct.i40e_client* %7, %struct.i40e_client** %3, align 8
  %8 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %9 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %8, i32 0, i32 3
  %10 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %9, align 8
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %12 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %10, i64 %13
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %14, align 8
  store %struct.i40e_vsi* %15, %struct.i40e_vsi** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load i32, i32* @__I40E_CLIENT_SERVICE_REQUESTED, align 4
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %18 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @test_and_clear_bit(i32 %16, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %116

23:                                               ; preds = %1
  %24 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %25 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %24, i32 0, i32 2
  %26 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %25, align 8
  store %struct.i40e_client_instance* %26, %struct.i40e_client_instance** %4, align 8
  %27 = load i32, i32* @__I40E_DOWN, align 4
  %28 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %29 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @test_bit(i32 %27, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @__I40E_CONFIG_BUSY, align 4
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %36 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @test_bit(i32 %34, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %23
  br label %116

41:                                               ; preds = %33
  %42 = load %struct.i40e_client*, %struct.i40e_client** %3, align 8
  %43 = icmp ne %struct.i40e_client* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %4, align 8
  %46 = icmp ne %struct.i40e_client_instance* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44, %41
  br label %116

48:                                               ; preds = %44
  %49 = load i32, i32* @__I40E_CLIENT_INSTANCE_OPENED, align 4
  %50 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %4, align 8
  %51 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %50, i32 0, i32 1
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %96, label %54

54:                                               ; preds = %48
  %55 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %56 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %95

59:                                               ; preds = %54
  %60 = load %struct.i40e_client*, %struct.i40e_client** %3, align 8
  %61 = getelementptr inbounds %struct.i40e_client, %struct.i40e_client* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = icmp ne %struct.TYPE_2__* %62, null
  br i1 %63, label %64, label %95

64:                                               ; preds = %59
  %65 = load %struct.i40e_client*, %struct.i40e_client** %3, align 8
  %66 = getelementptr inbounds %struct.i40e_client, %struct.i40e_client* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32 (i32*, %struct.i40e_client*)*, i32 (i32*, %struct.i40e_client*)** %68, align 8
  %70 = icmp ne i32 (i32*, %struct.i40e_client*)* %69, null
  br i1 %70, label %71, label %95

71:                                               ; preds = %64
  %72 = load i32, i32* @__I40E_CLIENT_INSTANCE_OPENED, align 4
  %73 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %4, align 8
  %74 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %73, i32 0, i32 1
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  %76 = load %struct.i40e_client*, %struct.i40e_client** %3, align 8
  %77 = getelementptr inbounds %struct.i40e_client, %struct.i40e_client* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32 (i32*, %struct.i40e_client*)*, i32 (i32*, %struct.i40e_client*)** %79, align 8
  %81 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %4, align 8
  %82 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %81, i32 0, i32 0
  %83 = load %struct.i40e_client*, %struct.i40e_client** %3, align 8
  %84 = call i32 %80(i32* %82, %struct.i40e_client* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %71
  %88 = load i32, i32* @__I40E_CLIENT_INSTANCE_OPENED, align 4
  %89 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %4, align 8
  %90 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %89, i32 0, i32 1
  %91 = call i32 @clear_bit(i32 %88, i32* %90)
  %92 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %93 = call i32 @i40e_client_del_instance(%struct.i40e_pf* %92)
  br label %94

94:                                               ; preds = %87, %71
  br label %95

95:                                               ; preds = %94, %64, %59, %54
  br label %96

96:                                               ; preds = %95, %48
  %97 = load i32, i32* @__I40E_VSI_DOWN, align 4
  %98 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %99 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i64 @test_bit(i32 %97, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %4, align 8
  %105 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %104, i32 0, i32 0
  %106 = load %struct.i40e_client*, %struct.i40e_client** %3, align 8
  %107 = load i32, i32* @I40E_CLIENT_VSI_FLAG_TCP_ENABLE, align 4
  %108 = call i32 @i40e_client_update_vsi_ctxt(i32* %105, %struct.i40e_client* %106, i32 0, i32 0, i32 0, i32 %107)
  br label %116

109:                                              ; preds = %96
  %110 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %4, align 8
  %111 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %110, i32 0, i32 0
  %112 = load %struct.i40e_client*, %struct.i40e_client** %3, align 8
  %113 = load i32, i32* @I40E_CLIENT_VSI_FLAG_TCP_ENABLE, align 4
  %114 = load i32, i32* @I40E_CLIENT_VSI_FLAG_TCP_ENABLE, align 4
  %115 = call i32 @i40e_client_update_vsi_ctxt(i32* %111, %struct.i40e_client* %112, i32 0, i32 0, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %22, %40, %47, %109, %103
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @i40e_client_del_instance(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_client_update_vsi_ctxt(i32*, %struct.i40e_client*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
