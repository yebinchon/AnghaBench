; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_pending_datagrams.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_pending_datagrams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_ctx = type { i32, i32 }

@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_ctx_pending_datagrams(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vmci_ctx*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.vmci_ctx* @vmci_ctx_get(i32 %7)
  store %struct.vmci_ctx* %8, %struct.vmci_ctx** %6, align 8
  %9 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %10 = icmp eq %struct.vmci_ctx* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %12, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %19, %13
  %25 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %29 = call i32 @vmci_ctx_put(%struct.vmci_ctx* %28)
  %30 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.vmci_ctx* @vmci_ctx_get(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vmci_ctx_put(%struct.vmci_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
