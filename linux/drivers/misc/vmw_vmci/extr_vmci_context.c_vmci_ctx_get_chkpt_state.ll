; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_get_chkpt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_get_chkpt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_ctx = type { i32 }

@VMCI_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid cpt state (type=%d)\0A\00", align 1
@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_ctx_get_chkpt_state(i32 %0, i32 %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.vmci_ctx*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.vmci_ctx* @vmci_ctx_get(i32 %12)
  store %struct.vmci_ctx* %13, %struct.vmci_ctx** %10, align 8
  %14 = load %struct.vmci_ctx*, %struct.vmci_ctx** %10, align 8
  %15 = icmp ne %struct.vmci_ctx* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  store i32 %17, i32* %5, align 4
  br label %48

18:                                               ; preds = %4
  %19 = load %struct.vmci_ctx*, %struct.vmci_ctx** %10, align 8
  %20 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %37 [
    i32 129, label %23
    i32 128, label %28
    i32 130, label %32
  ]

23:                                               ; preds = %18
  %24 = load %struct.vmci_ctx*, %struct.vmci_ctx** %10, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i8**, i8*** %9, align 8
  %27 = call i32 @vmci_ctx_get_chkpt_notifiers(%struct.vmci_ctx* %24, i32* %25, i8** %26)
  store i32 %27, i32* %11, align 4
  br label %41

28:                                               ; preds = %18
  %29 = load i32*, i32** %8, align 8
  store i32 0, i32* %29, align 4
  %30 = load i8**, i8*** %9, align 8
  store i8* null, i8** %30, align 8
  %31 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %31, i32* %11, align 4
  br label %41

32:                                               ; preds = %18
  %33 = load %struct.vmci_ctx*, %struct.vmci_ctx** %10, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i8**, i8*** %9, align 8
  %36 = call i32 @vmci_ctx_get_chkpt_doorbells(%struct.vmci_ctx* %33, i32* %34, i8** %35)
  store i32 %36, i32* %11, align 4
  br label %41

37:                                               ; preds = %18
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @pr_devel(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %37, %32, %28, %23
  %42 = load %struct.vmci_ctx*, %struct.vmci_ctx** %10, align 8
  %43 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load %struct.vmci_ctx*, %struct.vmci_ctx** %10, align 8
  %46 = call i32 @vmci_ctx_put(%struct.vmci_ctx* %45)
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %41, %16
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.vmci_ctx* @vmci_ctx_get(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vmci_ctx_get_chkpt_notifiers(%struct.vmci_ctx*, i32*, i8**) #1

declare dso_local i32 @vmci_ctx_get_chkpt_doorbells(%struct.vmci_ctx*, i32*, i8**) #1

declare dso_local i32 @pr_devel(i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vmci_ctx_put(%struct.vmci_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
