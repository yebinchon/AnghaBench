; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_notify_dbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_notify_dbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i64, i32 }
%struct.vmci_ctx = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid context (ID=0x%x)\0A\00", align 1
@VMCI_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"Doorbell notification from VM to VM not supported (src=0x%x, dst=0x%x)\0A\00", align 1
@VMCI_ERROR_DST_UNREACHABLE = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"Failed to get privilege flags for destination (handle=0x%x:0x%x)\0A\00", align 1
@VMCI_HOST_CONTEXT_ID = common dso_local global i64 0, align 8
@VMCI_NO_PRIVILEGE_FLAGS = common dso_local global i64 0, align 8
@VMCI_ERROR_NO_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_ctx_notify_dbell(i64 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmci_handle, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vmci_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = bitcast %struct.vmci_handle* %6 to { i64, i32 }*
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  store i64 %1, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  store i32 %2, i32* %14, align 8
  store i64 %0, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = bitcast %struct.vmci_handle* %6 to { i64, i32 }*
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @vmci_handle_is_invalid(i64 %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %23, i32* %5, align 4
  br label %162

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.vmci_ctx* @vmci_ctx_get(i64 %26)
  store %struct.vmci_ctx* %27, %struct.vmci_ctx** %9, align 8
  %28 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %29 = icmp ne %struct.vmci_ctx* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i8*, i64, ...) @pr_devel(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  store i32 %34, i32* %5, align 4
  br label %162

35:                                               ; preds = %24
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %6, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %90

40:                                               ; preds = %35
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @VMCI_CONTEXT_IS_VM(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %6, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @VMCI_CONTEXT_IS_VM(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %6, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i8*, i64, ...) @pr_devel(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %52)
  %54 = load i32, i32* @VMCI_ERROR_DST_UNREACHABLE, align 4
  store i32 %54, i32* %10, align 4
  br label %158

55:                                               ; preds = %44, %40
  %56 = bitcast %struct.vmci_handle* %6 to { i64, i32 }*
  %57 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %56, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @vmci_dbell_get_priv_flags(i64 %58, i32 %60, i64* %11)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @VMCI_SUCCESS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %6, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %6, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @pr_warn(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i64 %67, i32 %69)
  br label %158

71:                                               ; preds = %55
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @VMCI_HOST_CONTEXT_ID, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @VMCI_NO_PRIVILEGE_FLAGS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75, %71
  %80 = load i64, i64* %7, align 8
  %81 = call i64 @vmci_context_get_priv_flags(i64 %80)
  store i64 %81, i64* %8, align 8
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %11, align 8
  %85 = call i64 @vmci_deny_interaction(i64 %83, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @VMCI_ERROR_NO_ACCESS, align 4
  store i32 %88, i32* %10, align 4
  br label %158

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %35
  %91 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %6, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @VMCI_HOST_CONTEXT_ID, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load i64, i64* %7, align 8
  %97 = bitcast %struct.vmci_handle* %6 to { i64, i32 }*
  %98 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %97, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @vmci_dbell_host_context_notify(i64 %96, i64 %99, i32 %101)
  store i32 %102, i32* %10, align 4
  br label %157

103:                                              ; preds = %90
  %104 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %105 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %104, i32 0, i32 0
  %106 = call i32 @spin_lock(i32* %105)
  %107 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %108 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = bitcast %struct.vmci_handle* %6 to { i64, i32 }*
  %111 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %110, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @vmci_handle_arr_has_entry(i32 %109, i64 %112, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %103
  %118 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  store i32 %118, i32* %10, align 4
  br label %153

119:                                              ; preds = %103
  %120 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %121 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = bitcast %struct.vmci_handle* %6 to { i64, i32 }*
  %124 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %123, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @vmci_handle_arr_has_entry(i32 %122, i64 %125, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %150, label %130

130:                                              ; preds = %119
  %131 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %132 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %131, i32 0, i32 2
  %133 = bitcast %struct.vmci_handle* %6 to { i64, i32 }*
  %134 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %133, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @vmci_handle_arr_append_entry(i32* %132, i64 %135, i32 %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @VMCI_SUCCESS, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %130
  %143 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %144 = call i32 @ctx_signal_notify(%struct.vmci_ctx* %143)
  %145 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %146 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = call i32 @wake_up(i32* %147)
  br label %149

149:                                              ; preds = %142, %130
  br label %152

150:                                              ; preds = %119
  %151 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %150, %149
  br label %153

153:                                              ; preds = %152, %117
  %154 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %155 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %154, i32 0, i32 0
  %156 = call i32 @spin_unlock(i32* %155)
  br label %157

157:                                              ; preds = %153, %95
  br label %158

158:                                              ; preds = %157, %87, %65, %49
  %159 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %160 = call i32 @vmci_ctx_put(%struct.vmci_ctx* %159)
  %161 = load i32, i32* %10, align 4
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %158, %30, %22
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i64 @vmci_handle_is_invalid(i64, i32) #1

declare dso_local %struct.vmci_ctx* @vmci_ctx_get(i64) #1

declare dso_local i32 @pr_devel(i8*, i64, ...) #1

declare dso_local i64 @VMCI_CONTEXT_IS_VM(i64) #1

declare dso_local i32 @vmci_dbell_get_priv_flags(i64, i32, i64*) #1

declare dso_local i32 @pr_warn(i8*, i64, i32) #1

declare dso_local i64 @vmci_context_get_priv_flags(i64) #1

declare dso_local i64 @vmci_deny_interaction(i64, i64) #1

declare dso_local i32 @vmci_dbell_host_context_notify(i64, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vmci_handle_arr_has_entry(i32, i64, i32) #1

declare dso_local i32 @vmci_handle_arr_append_entry(i32*, i64, i32) #1

declare dso_local i32 @ctx_signal_notify(%struct.vmci_ctx*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vmci_ctx_put(%struct.vmci_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
