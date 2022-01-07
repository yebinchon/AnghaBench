; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_rcv_notifications_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_rcv_notifications_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle_arr = type { i32 }
%struct.vmci_ctx = type { i32, %struct.vmci_handle_arr* }

@VMCI_SUCCESS = common dso_local global i32 0, align 4
@VMCI_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@VMCI_MAX_GUEST_DOORBELL_COUNT = common dso_local global i32 0, align 4
@VMCI_ERROR_NO_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_ctx_rcv_notifications_get(i32 %0, %struct.vmci_handle_arr** %1, %struct.vmci_handle_arr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmci_handle_arr**, align 8
  %7 = alloca %struct.vmci_handle_arr**, align 8
  %8 = alloca %struct.vmci_ctx*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.vmci_handle_arr** %1, %struct.vmci_handle_arr*** %6, align 8
  store %struct.vmci_handle_arr** %2, %struct.vmci_handle_arr*** %7, align 8
  %10 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.vmci_ctx* @vmci_ctx_get(i32 %11)
  store %struct.vmci_ctx* %12, %struct.vmci_ctx** %8, align 8
  %13 = load %struct.vmci_ctx*, %struct.vmci_ctx** %8, align 8
  %14 = icmp eq %struct.vmci_ctx* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  store i32 %16, i32* %4, align 4
  br label %48

17:                                               ; preds = %3
  %18 = load %struct.vmci_ctx*, %struct.vmci_ctx** %8, align 8
  %19 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.vmci_ctx*, %struct.vmci_ctx** %8, align 8
  %22 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %21, i32 0, i32 1
  %23 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %22, align 8
  %24 = load %struct.vmci_handle_arr**, %struct.vmci_handle_arr*** %6, align 8
  store %struct.vmci_handle_arr* %23, %struct.vmci_handle_arr** %24, align 8
  %25 = load i32, i32* @VMCI_MAX_GUEST_DOORBELL_COUNT, align 4
  %26 = call %struct.vmci_handle_arr* @vmci_handle_arr_create(i32 0, i32 %25)
  %27 = load %struct.vmci_ctx*, %struct.vmci_ctx** %8, align 8
  %28 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %27, i32 0, i32 1
  store %struct.vmci_handle_arr* %26, %struct.vmci_handle_arr** %28, align 8
  %29 = load %struct.vmci_ctx*, %struct.vmci_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %29, i32 0, i32 1
  %31 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %30, align 8
  %32 = icmp ne %struct.vmci_handle_arr* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %17
  %34 = load %struct.vmci_handle_arr**, %struct.vmci_handle_arr*** %6, align 8
  %35 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %34, align 8
  %36 = load %struct.vmci_ctx*, %struct.vmci_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %36, i32 0, i32 1
  store %struct.vmci_handle_arr* %35, %struct.vmci_handle_arr** %37, align 8
  %38 = load %struct.vmci_handle_arr**, %struct.vmci_handle_arr*** %6, align 8
  store %struct.vmci_handle_arr* null, %struct.vmci_handle_arr** %38, align 8
  %39 = load i32, i32* @VMCI_ERROR_NO_MEM, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %33, %17
  %41 = load %struct.vmci_handle_arr**, %struct.vmci_handle_arr*** %7, align 8
  store %struct.vmci_handle_arr* null, %struct.vmci_handle_arr** %41, align 8
  %42 = load %struct.vmci_ctx*, %struct.vmci_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load %struct.vmci_ctx*, %struct.vmci_ctx** %8, align 8
  %46 = call i32 @vmci_ctx_put(%struct.vmci_ctx* %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %40, %15
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.vmci_ctx* @vmci_ctx_get(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.vmci_handle_arr* @vmci_handle_arr_create(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vmci_ctx_put(%struct.vmci_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
