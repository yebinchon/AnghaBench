; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.vmci_ctx = type { i32, i8*, i8*, i32, i64, i32*, i32*, i32, i64, i8*, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cred = type { i32 }

@VMCI_INVALID_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Invalid context ID for VMCI context\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VMCI_PRIVILEGE_ALL_FLAGS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Invalid flag (flags=0x%x) for VMCI context\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid suer_version %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to allocate memory for VMCI context\0A\00", align 1
@VMCI_MAX_GUEST_QP_COUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VMCI_MAX_GUEST_DOORBELL_COUNT = common dso_local global i32 0, align 4
@ctx_dummy_notify = common dso_local global i32 0, align 4
@ctx_list = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@VMCI_RESERVED_CID_LIMIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmci_ctx* @vmci_ctx_create(i64 %0, i64 %1, i64 %2, i32 %3, %struct.cred* %4) #0 {
  %6 = alloca %struct.vmci_ctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cred*, align 8
  %12 = alloca %struct.vmci_ctx*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.cred* %4, %struct.cred** %11, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @VMCI_INVALID_ID, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %13, align 4
  br label %162

21:                                               ; preds = %5
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @VMCI_PRIVILEGE_ALL_FLAGS, align 8
  %24 = xor i64 %23, -1
  %25 = and i64 %22, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  %29 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %13, align 4
  br label %162

32:                                               ; preds = %21
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %13, align 4
  br label %162

40:                                               ; preds = %32
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.vmci_ctx* @kzalloc(i32 104, i32 %41)
  store %struct.vmci_ctx* %42, %struct.vmci_ctx** %12, align 8
  %43 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %44 = icmp ne %struct.vmci_ctx* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %13, align 4
  br label %162

49:                                               ; preds = %40
  %50 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %51 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %50, i32 0, i32 14
  %52 = call i32 @kref_init(i32* %51)
  %53 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %54 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %53, i32 0, i32 13
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %57 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %56, i32 0, i32 3
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %60 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %59, i32 0, i32 12
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %63 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %62, i32 0, i32 11
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %66 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %65, i32 0, i32 10
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call i32 @init_waitqueue_head(i32* %67)
  %69 = load i32, i32* @VMCI_MAX_GUEST_QP_COUNT, align 4
  %70 = call i8* @vmci_handle_arr_create(i32 0, i32 %69)
  %71 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %72 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %74 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %49
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %13, align 4
  br label %159

80:                                               ; preds = %49
  %81 = load i32, i32* @VMCI_MAX_GUEST_DOORBELL_COUNT, align 4
  %82 = call i8* @vmci_handle_arr_create(i32 0, i32 %81)
  %83 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %84 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %86 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %80
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %13, align 4
  br label %154

92:                                               ; preds = %80
  %93 = load i32, i32* @VMCI_MAX_GUEST_DOORBELL_COUNT, align 4
  %94 = call i8* @vmci_handle_arr_create(i32 0, i32 %93)
  %95 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %96 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %95, i32 0, i32 9
  store i8* %94, i8** %96, align 8
  %97 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %98 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %97, i32 0, i32 9
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %92
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %13, align 4
  br label %149

104:                                              ; preds = %92
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %107 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %110 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %109, i32 0, i32 8
  store i64 %108, i64* %110, align 8
  %111 = load %struct.cred*, %struct.cred** %11, align 8
  %112 = icmp ne %struct.cred* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %104
  %114 = load %struct.cred*, %struct.cred** %11, align 8
  %115 = call i32 @get_cred(%struct.cred* %114)
  %116 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %117 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %113, %104
  %119 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %120 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %119, i32 0, i32 6
  store i32* @ctx_dummy_notify, i32** %120, align 8
  %121 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %122 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %121, i32 0, i32 5
  store i32* null, i32** %122, align 8
  %123 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx_list, i32 0, i32 0))
  br label %124

124:                                              ; preds = %139, %118
  %125 = load i64, i64* %7, align 8
  %126 = call i64 @vmci_ctx_exists(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %124
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* @VMCI_RESERVED_CID_LIMIT, align 8
  %131 = sub nsw i64 %130, 1
  %132 = call i64 @max(i64 %129, i64 %131)
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %7, align 8
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* @VMCI_INVALID_ID, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %128
  %138 = load i64, i64* @VMCI_RESERVED_CID_LIMIT, align 8
  store i64 %138, i64* %7, align 8
  br label %139

139:                                              ; preds = %137, %128
  br label %124

140:                                              ; preds = %124
  %141 = load i64, i64* %7, align 8
  %142 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %143 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %142, i32 0, i32 4
  store i64 %141, i64* %143, align 8
  %144 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %145 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %144, i32 0, i32 3
  %146 = call i32 @list_add_tail_rcu(i32* %145, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx_list, i32 0, i32 1))
  %147 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx_list, i32 0, i32 0))
  %148 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  store %struct.vmci_ctx* %148, %struct.vmci_ctx** %6, align 8
  br label %165

149:                                              ; preds = %101
  %150 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %151 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @vmci_handle_arr_destroy(i8* %152)
  br label %154

154:                                              ; preds = %149, %89
  %155 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %156 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @vmci_handle_arr_destroy(i8* %157)
  br label %159

159:                                              ; preds = %154, %77
  %160 = load %struct.vmci_ctx*, %struct.vmci_ctx** %12, align 8
  %161 = call i32 @kfree(%struct.vmci_ctx* %160)
  br label %162

162:                                              ; preds = %159, %45, %35, %27, %17
  %163 = load i32, i32* %13, align 4
  %164 = call %struct.vmci_ctx* @ERR_PTR(i32 %163)
  store %struct.vmci_ctx* %164, %struct.vmci_ctx** %6, align 8
  br label %165

165:                                              ; preds = %162, %140
  %166 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  ret %struct.vmci_ctx* %166
}

declare dso_local i32 @pr_devel(i8*, ...) #1

declare dso_local %struct.vmci_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i8* @vmci_handle_arr_create(i32, i32) #1

declare dso_local i32 @get_cred(%struct.cred*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @vmci_ctx_exists(i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vmci_handle_arr_destroy(i8*) #1

declare dso_local i32 @kfree(%struct.vmci_ctx*) #1

declare dso_local %struct.vmci_ctx* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
