; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_notify_client_of_netdev_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_notify_client_of_netdev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_4__*, %struct.i40e_client_instance* }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_client_instance = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, %struct.TYPE_6__*, i32)* }

@.str = private unnamed_addr constant [45 x i8] c"Cannot locate client instance close routine\0A\00", align 1
@__I40E_CLIENT_INSTANCE_OPENED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_notify_client_of_netdev_close(%struct.i40e_vsi* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_pf*, align 8
  %6 = alloca %struct.i40e_client_instance*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %8 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %7, i32 0, i32 0
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  store %struct.i40e_pf* %9, %struct.i40e_pf** %5, align 8
  %10 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %11 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %10, i32 0, i32 1
  %12 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %11, align 8
  store %struct.i40e_client_instance* %12, %struct.i40e_client_instance** %6, align 8
  %13 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %6, align 8
  %14 = icmp ne %struct.i40e_client_instance* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %6, align 8
  %17 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %2
  br label %67

21:                                               ; preds = %15
  %22 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %6, align 8
  %23 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %6, align 8
  %30 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32 (i32*, %struct.TYPE_6__*, i32)*, i32 (i32*, %struct.TYPE_6__*, i32)** %34, align 8
  %36 = icmp ne i32 (i32*, %struct.TYPE_6__*, i32)* %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %28, %21
  %38 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %39 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %38, i32 0, i32 0
  %40 = load %struct.i40e_pf*, %struct.i40e_pf** %39, align 8
  %41 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @dev_dbg(i32* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %67

45:                                               ; preds = %28
  %46 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %6, align 8
  %47 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32 (i32*, %struct.TYPE_6__*, i32)*, i32 (i32*, %struct.TYPE_6__*, i32)** %51, align 8
  %53 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %6, align 8
  %54 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %53, i32 0, i32 0
  %55 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %6, align 8
  %56 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 %52(i32* %54, %struct.TYPE_6__* %57, i32 %58)
  %60 = load i32, i32* @__I40E_CLIENT_INSTANCE_OPENED, align 4
  %61 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %6, align 8
  %62 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %61, i32 0, i32 1
  %63 = call i32 @clear_bit(i32 %60, i32* %62)
  %64 = load %struct.i40e_client_instance*, %struct.i40e_client_instance** %6, align 8
  %65 = getelementptr inbounds %struct.i40e_client_instance, %struct.i40e_client_instance* %64, i32 0, i32 0
  %66 = call i32 @i40e_client_release_qvlist(i32* %65)
  br label %67

67:                                               ; preds = %45, %37, %20
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @i40e_client_release_qvlist(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
