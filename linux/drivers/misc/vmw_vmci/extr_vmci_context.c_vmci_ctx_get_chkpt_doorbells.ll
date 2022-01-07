; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_get_chkpt_doorbells.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_get_chkpt_doorbells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_ctx = type { i32 }
%struct.dbell_cpt_state = type { i32 }

@VMCI_ERROR_MORE_DATA = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@VMCI_ERROR_NO_MEM = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmci_ctx*, i32*, i8**)* @vmci_ctx_get_chkpt_doorbells to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_ctx_get_chkpt_doorbells(%struct.vmci_ctx* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmci_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.dbell_cpt_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.vmci_ctx* %0, %struct.vmci_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load %struct.vmci_ctx*, %struct.vmci_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @vmci_handle_arr_get_size(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %66

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  store i64 %21, i64* %11, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %11, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load i64, i64* %11, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @VMCI_ERROR_MORE_DATA, align 4
  store i32 %31, i32* %4, align 4
  br label %71

32:                                               ; preds = %18
  %33 = load i64, i64* %11, align 8
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.dbell_cpt_state* @kmalloc(i64 %33, i32 %34)
  store %struct.dbell_cpt_state* %35, %struct.dbell_cpt_state** %8, align 8
  %36 = load %struct.dbell_cpt_state*, %struct.dbell_cpt_state** %8, align 8
  %37 = icmp ne %struct.dbell_cpt_state* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @VMCI_ERROR_NO_MEM, align 4
  store i32 %39, i32* %4, align 4
  br label %71

40:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %56, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load %struct.vmci_ctx*, %struct.vmci_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @vmci_handle_arr_get_entry(i32 %48, i32 %49)
  %51 = load %struct.dbell_cpt_state*, %struct.dbell_cpt_state** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.dbell_cpt_state, %struct.dbell_cpt_state* %51, i64 %53
  %55 = getelementptr inbounds %struct.dbell_cpt_state, %struct.dbell_cpt_state* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %41

59:                                               ; preds = %41
  %60 = load i64, i64* %11, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32*, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.dbell_cpt_state*, %struct.dbell_cpt_state** %8, align 8
  %64 = bitcast %struct.dbell_cpt_state* %63 to i8*
  %65 = load i8**, i8*** %7, align 8
  store i8* %64, i8** %65, align 8
  br label %69

66:                                               ; preds = %3
  %67 = load i32*, i32** %6, align 8
  store i32 0, i32* %67, align 4
  %68 = load i8**, i8*** %7, align 8
  store i8* null, i8** %68, align 8
  br label %69

69:                                               ; preds = %66, %59
  %70 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %38, %27
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @vmci_handle_arr_get_size(i32) #1

declare dso_local %struct.dbell_cpt_state* @kmalloc(i64, i32) #1

declare dso_local i32 @vmci_handle_arr_get_entry(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
