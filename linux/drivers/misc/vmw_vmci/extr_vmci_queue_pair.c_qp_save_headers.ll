; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_save_headers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_save_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qp_broker_entry = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_3__ = type { i32*, i32* }

@VMCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qp_broker_entry*)* @qp_save_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_save_headers(%struct.qp_broker_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qp_broker_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.qp_broker_entry* %0, %struct.qp_broker_entry** %3, align 8
  %5 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %3, align 8
  %6 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %3, align 8
  %13 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %19, i32* %2, align 4
  br label %78

20:                                               ; preds = %11, %1
  %21 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %3, align 8
  %22 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* null, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %3, align 8
  %29 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* null, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %27, %20
  %35 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %3, align 8
  %36 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %3, align 8
  %39 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @qp_host_map_queues(%struct.TYPE_3__* %37, %struct.TYPE_4__* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @VMCI_SUCCESS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %78

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %3, align 8
  %50 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %49, i32 0, i32 2
  %51 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %3, align 8
  %52 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %51, i32 0, i32 3
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @memcpy(i32* %50, i32* %55, i32 4)
  %57 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %3, align 8
  %58 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %57, i32 0, i32 2
  %59 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %3, align 8
  %60 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %59, i32 0, i32 3
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32* %58, i32** %62, align 8
  %63 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %3, align 8
  %64 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %63, i32 0, i32 0
  %65 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %3, align 8
  %66 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @memcpy(i32* %64, i32* %69, i32 4)
  %71 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %3, align 8
  %72 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %71, i32 0, i32 0
  %73 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %3, align 8
  %74 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32* %72, i32** %76, align 8
  %77 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %48, %45, %18
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @qp_host_map_queues(%struct.TYPE_3__*, %struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
