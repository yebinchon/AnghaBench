; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-ipc.c_is_valid_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-ipc.c_is_valid_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ipc_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.delta_ipc_ctx*, i8*, i32)* @is_valid_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_data(%struct.delta_ipc_ctx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.delta_ipc_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.delta_ipc_ctx* %0, %struct.delta_ipc_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp uge i8* %7, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr i8, i8* %15, i64 %17
  %19 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr i8, i8* %23, i64 %29
  %31 = icmp ule i8* %18, %30
  br label %32

32:                                               ; preds = %14, %3
  %33 = phi i1 [ false, %3 ], [ %31, %14 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
