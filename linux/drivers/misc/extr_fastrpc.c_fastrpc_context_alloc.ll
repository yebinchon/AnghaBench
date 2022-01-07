; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_context_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_context_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fastrpc_invoke_ctx = type { i32, i32, %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx*, i32, i32, i32, i32, %struct.fastrpc_channel_ctx*, i32, i32, i32, %struct.fastrpc_invoke_args*, i64, i64, %struct.fastrpc_user* }
%struct.fastrpc_channel_ctx = type { i32, i32 }
%struct.fastrpc_user = type { i32, i32, i32, %struct.fastrpc_channel_ctx* }
%struct.fastrpc_invoke_args = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@fastrpc_context_put_wq = common dso_local global i32 0, align 4
@FASTRPC_CTX_MAX = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fastrpc_invoke_ctx* (%struct.fastrpc_user*, i32, i32, %struct.fastrpc_invoke_args*)* @fastrpc_context_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fastrpc_invoke_ctx* @fastrpc_context_alloc(%struct.fastrpc_user* %0, i32 %1, i32 %2, %struct.fastrpc_invoke_args* %3) #0 {
  %5 = alloca %struct.fastrpc_invoke_ctx*, align 8
  %6 = alloca %struct.fastrpc_user*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fastrpc_invoke_args*, align 8
  %10 = alloca %struct.fastrpc_channel_ctx*, align 8
  %11 = alloca %struct.fastrpc_invoke_ctx*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.fastrpc_user* %0, %struct.fastrpc_user** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.fastrpc_invoke_args* %3, %struct.fastrpc_invoke_args** %9, align 8
  %14 = load %struct.fastrpc_user*, %struct.fastrpc_user** %6, align 8
  %15 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %14, i32 0, i32 3
  %16 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %15, align 8
  store %struct.fastrpc_channel_ctx* %16, %struct.fastrpc_channel_ctx** %10, align 8
  store %struct.fastrpc_invoke_ctx* null, %struct.fastrpc_invoke_ctx** %11, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.fastrpc_invoke_ctx* @kzalloc(i32 96, i32 %17)
  store %struct.fastrpc_invoke_ctx* %18, %struct.fastrpc_invoke_ctx** %11, align 8
  %19 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %20 = icmp ne %struct.fastrpc_invoke_ctx* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.fastrpc_invoke_ctx* @ERR_PTR(i32 %23)
  store %struct.fastrpc_invoke_ctx* %24, %struct.fastrpc_invoke_ctx** %5, align 8
  br label %188

25:                                               ; preds = %4
  %26 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %27 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %26, i32 0, i32 4
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.fastrpc_user*, %struct.fastrpc_user** %6, align 8
  %30 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %31 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %30, i32 0, i32 15
  store %struct.fastrpc_user* %29, %struct.fastrpc_user** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @REMOTE_SCALARS_LENGTH(i32 %32)
  %34 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %35 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %34, i32 0, i32 13
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @REMOTE_SCALARS_INBUFS(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @REMOTE_SCALARS_OUTBUFS(i32 %38)
  %40 = add nsw i64 %37, %39
  %41 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %42 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %41, i32 0, i32 14
  store i64 %40, i64* %42, align 8
  %43 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %44 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %43, i32 0, i32 13
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %95

47:                                               ; preds = %25
  %48 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %49 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %48, i32 0, i32 13
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @kcalloc(i64 %50, i32 96, i32 %51)
  %53 = bitcast i8* %52 to %struct.fastrpc_invoke_ctx*
  %54 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %55 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %54, i32 0, i32 3
  store %struct.fastrpc_invoke_ctx* %53, %struct.fastrpc_invoke_ctx** %55, align 8
  %56 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %57 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %56, i32 0, i32 3
  %58 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %57, align 8
  %59 = icmp ne %struct.fastrpc_invoke_ctx* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %47
  %61 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %62 = call i32 @kfree(%struct.fastrpc_invoke_ctx* %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  %65 = call %struct.fastrpc_invoke_ctx* @ERR_PTR(i32 %64)
  store %struct.fastrpc_invoke_ctx* %65, %struct.fastrpc_invoke_ctx** %5, align 8
  br label %188

66:                                               ; preds = %47
  %67 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %68 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %67, i32 0, i32 13
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i8* @kcalloc(i64 %69, i32 96, i32 %70)
  %72 = bitcast i8* %71 to %struct.fastrpc_invoke_ctx*
  %73 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %74 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %73, i32 0, i32 2
  store %struct.fastrpc_invoke_ctx* %72, %struct.fastrpc_invoke_ctx** %74, align 8
  %75 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %76 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %75, i32 0, i32 2
  %77 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %76, align 8
  %78 = icmp ne %struct.fastrpc_invoke_ctx* %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %66
  %80 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %81 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %80, i32 0, i32 3
  %82 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %81, align 8
  %83 = call i32 @kfree(%struct.fastrpc_invoke_ctx* %82)
  %84 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %85 = call i32 @kfree(%struct.fastrpc_invoke_ctx* %84)
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  %88 = call %struct.fastrpc_invoke_ctx* @ERR_PTR(i32 %87)
  store %struct.fastrpc_invoke_ctx* %88, %struct.fastrpc_invoke_ctx** %5, align 8
  br label %188

89:                                               ; preds = %66
  %90 = load %struct.fastrpc_invoke_args*, %struct.fastrpc_invoke_args** %9, align 8
  %91 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %92 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %91, i32 0, i32 12
  store %struct.fastrpc_invoke_args* %90, %struct.fastrpc_invoke_args** %92, align 8
  %93 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %94 = call i32 @fastrpc_get_buff_overlaps(%struct.fastrpc_invoke_ctx* %93)
  br label %95

95:                                               ; preds = %89, %25
  %96 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %10, align 8
  %97 = call i32 @fastrpc_channel_ctx_get(%struct.fastrpc_channel_ctx* %96)
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %100 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %99, i32 0, i32 11
  store i32 %98, i32* %100, align 8
  %101 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %102 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %101, i32 0, i32 0
  store i32 -1, i32* %102, align 8
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %107 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %106, i32 0, i32 10
  store i32 %105, i32* %107, align 4
  %108 = load %struct.fastrpc_user*, %struct.fastrpc_user** %6, align 8
  %109 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %112 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %111, i32 0, i32 9
  store i32 %110, i32* %112, align 8
  %113 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %10, align 8
  %114 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %115 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %114, i32 0, i32 8
  store %struct.fastrpc_channel_ctx* %113, %struct.fastrpc_channel_ctx** %115, align 8
  %116 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %117 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %116, i32 0, i32 7
  %118 = call i32 @init_completion(i32* %117)
  %119 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %120 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %119, i32 0, i32 6
  %121 = load i32, i32* @fastrpc_context_put_wq, align 4
  %122 = call i32 @INIT_WORK(i32* %120, i32 %121)
  %123 = load %struct.fastrpc_user*, %struct.fastrpc_user** %6, align 8
  %124 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %123, i32 0, i32 0
  %125 = call i32 @spin_lock(i32* %124)
  %126 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %127 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %126, i32 0, i32 4
  %128 = load %struct.fastrpc_user*, %struct.fastrpc_user** %6, align 8
  %129 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %128, i32 0, i32 1
  %130 = call i32 @list_add_tail(i32* %127, i32* %129)
  %131 = load %struct.fastrpc_user*, %struct.fastrpc_user** %6, align 8
  %132 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %131, i32 0, i32 0
  %133 = call i32 @spin_unlock(i32* %132)
  %134 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %10, align 8
  %135 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %134, i32 0, i32 0
  %136 = load i64, i64* %12, align 8
  %137 = call i32 @spin_lock_irqsave(i32* %135, i64 %136)
  %138 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %10, align 8
  %139 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %138, i32 0, i32 1
  %140 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %141 = load i32, i32* @FASTRPC_CTX_MAX, align 4
  %142 = load i32, i32* @GFP_ATOMIC, align 4
  %143 = call i32 @idr_alloc_cyclic(i32* %139, %struct.fastrpc_invoke_ctx* %140, i32 1, i32 %141, i32 %142)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %95
  %147 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %10, align 8
  %148 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %147, i32 0, i32 0
  %149 = load i64, i64* %12, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  br label %164

151:                                              ; preds = %95
  %152 = load i32, i32* %13, align 4
  %153 = shl i32 %152, 4
  %154 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %155 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %10, align 8
  %157 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %156, i32 0, i32 0
  %158 = load i64, i64* %12, align 8
  %159 = call i32 @spin_unlock_irqrestore(i32* %157, i64 %158)
  %160 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %161 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %160, i32 0, i32 5
  %162 = call i32 @kref_init(i32* %161)
  %163 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  store %struct.fastrpc_invoke_ctx* %163, %struct.fastrpc_invoke_ctx** %5, align 8
  br label %188

164:                                              ; preds = %146
  %165 = load %struct.fastrpc_user*, %struct.fastrpc_user** %6, align 8
  %166 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %165, i32 0, i32 0
  %167 = call i32 @spin_lock(i32* %166)
  %168 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %169 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %168, i32 0, i32 4
  %170 = call i32 @list_del(i32* %169)
  %171 = load %struct.fastrpc_user*, %struct.fastrpc_user** %6, align 8
  %172 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %171, i32 0, i32 0
  %173 = call i32 @spin_unlock(i32* %172)
  %174 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %10, align 8
  %175 = call i32 @fastrpc_channel_ctx_put(%struct.fastrpc_channel_ctx* %174)
  %176 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %177 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %176, i32 0, i32 3
  %178 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %177, align 8
  %179 = call i32 @kfree(%struct.fastrpc_invoke_ctx* %178)
  %180 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %181 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %180, i32 0, i32 2
  %182 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %181, align 8
  %183 = call i32 @kfree(%struct.fastrpc_invoke_ctx* %182)
  %184 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %11, align 8
  %185 = call i32 @kfree(%struct.fastrpc_invoke_ctx* %184)
  %186 = load i32, i32* %13, align 4
  %187 = call %struct.fastrpc_invoke_ctx* @ERR_PTR(i32 %186)
  store %struct.fastrpc_invoke_ctx* %187, %struct.fastrpc_invoke_ctx** %5, align 8
  br label %188

188:                                              ; preds = %164, %151, %79, %60, %21
  %189 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %5, align 8
  ret %struct.fastrpc_invoke_ctx* %189
}

declare dso_local %struct.fastrpc_invoke_ctx* @kzalloc(i32, i32) #1

declare dso_local %struct.fastrpc_invoke_ctx* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @REMOTE_SCALARS_LENGTH(i32) #1

declare dso_local i64 @REMOTE_SCALARS_INBUFS(i32) #1

declare dso_local i64 @REMOTE_SCALARS_OUTBUFS(i32) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.fastrpc_invoke_ctx*) #1

declare dso_local i32 @fastrpc_get_buff_overlaps(%struct.fastrpc_invoke_ctx*) #1

declare dso_local i32 @fastrpc_channel_ctx_get(%struct.fastrpc_channel_ctx*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idr_alloc_cyclic(i32*, %struct.fastrpc_invoke_ctx*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @fastrpc_channel_ctx_put(%struct.fastrpc_channel_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
