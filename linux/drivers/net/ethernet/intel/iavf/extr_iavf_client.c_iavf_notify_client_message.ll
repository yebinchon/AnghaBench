; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_notify_client_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_notify_client_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_vsi = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, %struct.iavf_client_instance* }
%struct.TYPE_5__ = type { i32 }
%struct.iavf_client_instance = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32*, %struct.TYPE_8__*, i32*, i32)* }

@.str = private unnamed_addr constant [57 x i8] c"Cannot locate client instance virtchnl_receive function\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_notify_client_message(%struct.iavf_vsi* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.iavf_vsi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iavf_client_instance*, align 8
  store %struct.iavf_vsi* %0, %struct.iavf_vsi** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.iavf_vsi*, %struct.iavf_vsi** %4, align 8
  %9 = icmp ne %struct.iavf_vsi* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %64

11:                                               ; preds = %3
  %12 = load %struct.iavf_vsi*, %struct.iavf_vsi** %4, align 8
  %13 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %15, align 8
  store %struct.iavf_client_instance* %16, %struct.iavf_client_instance** %7, align 8
  %17 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %7, align 8
  %18 = icmp ne %struct.iavf_client_instance* %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %11
  %20 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %7, align 8
  %21 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %7, align 8
  %26 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %7, align 8
  %33 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32 (i32*, %struct.TYPE_8__*, i32*, i32)*, i32 (i32*, %struct.TYPE_8__*, i32*, i32)** %37, align 8
  %39 = icmp ne i32 (i32*, %struct.TYPE_8__*, i32*, i32)* %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %31, %24, %19, %11
  %41 = load %struct.iavf_vsi*, %struct.iavf_vsi** %4, align 8
  %42 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @dev_dbg(i32* %46, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %64

48:                                               ; preds = %31
  %49 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %7, align 8
  %50 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32 (i32*, %struct.TYPE_8__*, i32*, i32)*, i32 (i32*, %struct.TYPE_8__*, i32*, i32)** %54, align 8
  %56 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %7, align 8
  %57 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %56, i32 0, i32 1
  %58 = load %struct.iavf_client_instance*, %struct.iavf_client_instance** %7, align 8
  %59 = getelementptr inbounds %struct.iavf_client_instance, %struct.iavf_client_instance* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 %55(i32* %57, %struct.TYPE_8__* %60, i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %48, %40, %10
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
