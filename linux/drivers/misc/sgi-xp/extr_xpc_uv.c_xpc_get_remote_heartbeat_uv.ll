; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_get_remote_heartbeat_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_get_remote_heartbeat_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xpc_partition_uv }
%struct.xpc_partition_uv = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@xpSuccess = common dso_local global i32 0, align 4
@xpNoHeartbeat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_partition*)* @xpc_get_remote_heartbeat_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_get_remote_heartbeat_uv(%struct.xpc_partition* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xpc_partition*, align 8
  %4 = alloca %struct.xpc_partition_uv*, align 8
  %5 = alloca i32, align 4
  store %struct.xpc_partition* %0, %struct.xpc_partition** %3, align 8
  %6 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %7 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.xpc_partition_uv* %8, %struct.xpc_partition_uv** %4, align 8
  %9 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %4, align 8
  %10 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %9, i32 0, i32 0
  %11 = call i32 @uv_gpa(%struct.TYPE_4__* %10)
  %12 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %4, align 8
  %13 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @xp_remote_memcpy(i32 %11, i32 %14, i32 4)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @xpSuccess, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %47

21:                                               ; preds = %1
  %22 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %4, align 8
  %23 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %27 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %4, align 8
  %32 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @xpNoHeartbeat, align 4
  store i32 %37, i32* %5, align 4
  br label %45

38:                                               ; preds = %30, %21
  %39 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %4, align 8
  %40 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %44 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %38, %36
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %19
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @xp_remote_memcpy(i32, i32, i32) #1

declare dso_local i32 @uv_gpa(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
