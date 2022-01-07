; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_internal_invoke.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_internal_invoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fastrpc_user = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fastrpc_invoke_args = type { i32 }
%struct.fastrpc_invoke_ctx = type { i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error: Invoke Failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fastrpc_user*, i32, i32, i32, %struct.fastrpc_invoke_args*)* @fastrpc_internal_invoke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fastrpc_internal_invoke(%struct.fastrpc_user* %0, i32 %1, i32 %2, i32 %3, %struct.fastrpc_invoke_args* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fastrpc_user*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fastrpc_invoke_args*, align 8
  %12 = alloca %struct.fastrpc_invoke_ctx*, align 8
  %13 = alloca i32, align 4
  store %struct.fastrpc_user* %0, %struct.fastrpc_user** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.fastrpc_invoke_args* %4, %struct.fastrpc_invoke_args** %11, align 8
  store %struct.fastrpc_invoke_ctx* null, %struct.fastrpc_invoke_ctx** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %15 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %121

21:                                               ; preds = %5
  %22 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %23 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @EPIPE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %121

31:                                               ; preds = %21
  %32 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.fastrpc_invoke_args*, %struct.fastrpc_invoke_args** %11, align 8
  %36 = call %struct.fastrpc_invoke_ctx* @fastrpc_context_alloc(%struct.fastrpc_user* %32, i32 %33, i32 %34, %struct.fastrpc_invoke_args* %35)
  store %struct.fastrpc_invoke_ctx* %36, %struct.fastrpc_invoke_ctx** %12, align 8
  %37 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %12, align 8
  %38 = call i64 @IS_ERR(%struct.fastrpc_invoke_ctx* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %12, align 8
  %42 = call i32 @PTR_ERR(%struct.fastrpc_invoke_ctx* %41)
  store i32 %42, i32* %6, align 4
  br label %121

43:                                               ; preds = %31
  %44 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %12, align 8
  %45 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %12, align 8
  %51 = call i32 @fastrpc_get_args(i32 %49, %struct.fastrpc_invoke_ctx* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %97

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %43
  %57 = call i32 (...) @dma_wmb()
  %58 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %59 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %12, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @fastrpc_invoke_send(%struct.TYPE_4__* %60, %struct.fastrpc_invoke_ctx* %61, i32 %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %97

68:                                               ; preds = %56
  %69 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %12, align 8
  %70 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %69, i32 0, i32 3
  %71 = call i32 @wait_for_completion_interruptible(i32* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %97

75:                                               ; preds = %68
  %76 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %12, align 8
  %77 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %97

82:                                               ; preds = %75
  %83 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %12, align 8
  %84 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = call i32 (...) @dma_rmb()
  %89 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %12, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @fastrpc_put_args(%struct.fastrpc_invoke_ctx* %89, i32 %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %97

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %82
  br label %97

97:                                               ; preds = %96, %94, %81, %74, %67, %54
  %98 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %99 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %98, i32 0, i32 1
  %100 = call i32 @spin_lock(i32* %99)
  %101 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %12, align 8
  %102 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %101, i32 0, i32 1
  %103 = call i32 @list_del(i32* %102)
  %104 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %105 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %104, i32 0, i32 1
  %106 = call i32 @spin_unlock(i32* %105)
  %107 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %12, align 8
  %108 = call i32 @fastrpc_context_put(%struct.fastrpc_invoke_ctx* %107)
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %97
  %112 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %113 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @dev_dbg(i32 %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %111, %97
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %119, %40, %28, %18
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local %struct.fastrpc_invoke_ctx* @fastrpc_context_alloc(%struct.fastrpc_user*, i32, i32, %struct.fastrpc_invoke_args*) #1

declare dso_local i64 @IS_ERR(%struct.fastrpc_invoke_ctx*) #1

declare dso_local i32 @PTR_ERR(%struct.fastrpc_invoke_ctx*) #1

declare dso_local i32 @fastrpc_get_args(i32, %struct.fastrpc_invoke_ctx*) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @fastrpc_invoke_send(%struct.TYPE_4__*, %struct.fastrpc_invoke_ctx*, i32, i32) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @fastrpc_put_args(%struct.fastrpc_invoke_ctx*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fastrpc_context_put(%struct.fastrpc_invoke_ctx*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
