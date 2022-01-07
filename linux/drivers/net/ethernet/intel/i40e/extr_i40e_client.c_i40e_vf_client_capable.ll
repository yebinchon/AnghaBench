; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_vf_client_capable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_vf_client_capable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { %struct.TYPE_4__*, %struct.i40e_client_instance* }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_client_instance = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, %struct.TYPE_6__*, i32)* }

@.str = private unnamed_addr constant [53 x i8] c"Cannot locate client instance VF capability routine\0A\00", align 1
@__I40E_CLIENT_INSTANCE_OPENED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_vf_client_capable(%struct.i40e_pf* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_client_instance*, align 8
  %6 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %8 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %7, i32 0, i32 1
  %9 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %8, align 8
  store %struct.i40e_client_instance* %9, %struct.i40e_client_instance** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %5, align 8
  %11 = icmp ne %struct.i40e_client_instance* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %5, align 8
  %14 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  br label %62

18:                                               ; preds = %12
  %19 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %5, align 8
  %20 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %5, align 8
  %27 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32 (i32*, %struct.TYPE_6__*, i32)*, i32 (i32*, %struct.TYPE_6__*, i32)** %31, align 8
  %33 = icmp ne i32 (i32*, %struct.TYPE_6__*, i32)* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %25, %18
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %36 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %62

40:                                               ; preds = %25
  %41 = load i32, i32* @__I40E_CLIENT_INSTANCE_OPENED, align 4
  %42 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %5, align 8
  %43 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %42, i32 0, i32 2
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %62

47:                                               ; preds = %40
  %48 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %5, align 8
  %49 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32 (i32*, %struct.TYPE_6__*, i32)*, i32 (i32*, %struct.TYPE_6__*, i32)** %53, align 8
  %55 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %5, align 8
  %56 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %55, i32 0, i32 1
  %57 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %5, align 8
  %58 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 %54(i32* %56, %struct.TYPE_6__* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %47, %46, %34, %17
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
