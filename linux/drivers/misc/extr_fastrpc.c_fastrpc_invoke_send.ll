; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_invoke_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_invoke_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.fastrpc_session_ctx = type { i32 }
%struct.fastrpc_invoke_ctx = type { i32, i32, %struct.TYPE_4__*, i32, %struct.fastrpc_msg, %struct.fastrpc_user* }
%struct.TYPE_4__ = type { i32 }
%struct.fastrpc_msg = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.fastrpc_user = type { i32, i64, %struct.fastrpc_channel_ctx* }
%struct.fastrpc_channel_ctx = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fastrpc_session_ctx*, %struct.fastrpc_invoke_ctx*, i64, i32)* @fastrpc_invoke_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fastrpc_invoke_send(%struct.fastrpc_session_ctx* %0, %struct.fastrpc_invoke_ctx* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.fastrpc_session_ctx*, align 8
  %6 = alloca %struct.fastrpc_invoke_ctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fastrpc_channel_ctx*, align 8
  %10 = alloca %struct.fastrpc_user*, align 8
  %11 = alloca %struct.fastrpc_msg*, align 8
  store %struct.fastrpc_session_ctx* %0, %struct.fastrpc_session_ctx** %5, align 8
  store %struct.fastrpc_invoke_ctx* %1, %struct.fastrpc_invoke_ctx** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %6, align 8
  %13 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %12, i32 0, i32 5
  %14 = load %struct.fastrpc_user*, %struct.fastrpc_user** %13, align 8
  store %struct.fastrpc_user* %14, %struct.fastrpc_user** %10, align 8
  %15 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %15, i32 0, i32 4
  store %struct.fastrpc_msg* %16, %struct.fastrpc_msg** %11, align 8
  %17 = load %struct.fastrpc_user*, %struct.fastrpc_user** %10, align 8
  %18 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %17, i32 0, i32 2
  %19 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %18, align 8
  store %struct.fastrpc_channel_ctx* %19, %struct.fastrpc_channel_ctx** %9, align 8
  %20 = load %struct.fastrpc_user*, %struct.fastrpc_user** %10, align 8
  %21 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.fastrpc_msg*, %struct.fastrpc_msg** %11, align 8
  %24 = getelementptr inbounds %struct.fastrpc_msg, %struct.fastrpc_msg* %23, i32 0, i32 5
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fastrpc_msg*, %struct.fastrpc_msg** %11, align 8
  %29 = getelementptr inbounds %struct.fastrpc_msg, %struct.fastrpc_msg* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load %struct.fastrpc_msg*, %struct.fastrpc_msg** %11, align 8
  %34 = getelementptr inbounds %struct.fastrpc_msg, %struct.fastrpc_msg* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %4
  %36 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.fastrpc_user*, %struct.fastrpc_user** %10, align 8
  %40 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %38, %41
  %43 = load %struct.fastrpc_msg*, %struct.fastrpc_msg** %11, align 8
  %44 = getelementptr inbounds %struct.fastrpc_msg, %struct.fastrpc_msg* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.fastrpc_msg*, %struct.fastrpc_msg** %11, align 8
  %47 = getelementptr inbounds %struct.fastrpc_msg, %struct.fastrpc_msg* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.fastrpc_msg*, %struct.fastrpc_msg** %11, align 8
  %52 = getelementptr inbounds %struct.fastrpc_msg, %struct.fastrpc_msg* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %6, align 8
  %54 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %35
  %58 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  br label %64

63:                                               ; preds = %35
  br label %64

64:                                               ; preds = %63, %57
  %65 = phi i32 [ %62, %57 ], [ 0, %63 ]
  %66 = load %struct.fastrpc_msg*, %struct.fastrpc_msg** %11, align 8
  %67 = getelementptr inbounds %struct.fastrpc_msg, %struct.fastrpc_msg* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = call i32 @roundup(i32 %70, i32 %71)
  %73 = load %struct.fastrpc_msg*, %struct.fastrpc_msg** %11, align 8
  %74 = getelementptr inbounds %struct.fastrpc_msg, %struct.fastrpc_msg* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %6, align 8
  %76 = call i32 @fastrpc_context_get(%struct.fastrpc_invoke_ctx* %75)
  %77 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %9, align 8
  %78 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.fastrpc_msg*, %struct.fastrpc_msg** %11, align 8
  %83 = bitcast %struct.fastrpc_msg* %82 to i8*
  %84 = call i32 @rpmsg_send(i32 %81, i8* %83, i32 40)
  ret i32 %84
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @fastrpc_context_get(%struct.fastrpc_invoke_ctx*) #1

declare dso_local i32 @rpmsg_send(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
