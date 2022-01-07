; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_any_partition_engaged_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_any_partition_engaged_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xpc_partition_uv }
%struct.xpc_partition_uv = type { i32 }

@XP_MAX_NPARTITIONS_UV = common dso_local global i16 0, align 2
@xpc_partitions = common dso_local global %struct.TYPE_4__* null, align 8
@XPC_P_ENGAGED_UV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @xpc_any_partition_engaged_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_any_partition_engaged_uv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xpc_partition_uv*, align 8
  %3 = alloca i16, align 2
  store i16 0, i16* %3, align 2
  br label %4

4:                                                ; preds = %25, %0
  %5 = load i16, i16* %3, align 2
  %6 = sext i16 %5 to i32
  %7 = load i16, i16* @XP_MAX_NPARTITIONS_UV, align 2
  %8 = sext i16 %7 to i32
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xpc_partitions, align 8
  %12 = load i16, i16* %3, align 2
  %13 = sext i16 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.xpc_partition_uv* %16, %struct.xpc_partition_uv** %2, align 8
  %17 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %2, align 8
  %18 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @XPC_P_ENGAGED_UV, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  store i32 1, i32* %1, align 4
  br label %29

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24
  %26 = load i16, i16* %3, align 2
  %27 = add i16 %26, 1
  store i16 %27, i16* %3, align 2
  br label %4

28:                                               ; preds = %4
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
