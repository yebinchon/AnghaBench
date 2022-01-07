; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_partition.c_xpc_initiate_partid_to_nasids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_partition.c_xpc_initiate_partid_to_nasids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64 }

@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@xpPartitionDown = common dso_local global i32 0, align 4
@xpc_nasid_mask_nbytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xpc_initiate_partid_to_nasids(i16 signext %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xpc_partition*, align 8
  %7 = alloca i64, align 8
  store i16 %0, i16* %4, align 2
  store i8* %1, i8** %5, align 8
  %8 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %9 = load i16, i16* %4, align 2
  %10 = sext i16 %9 to i64
  %11 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %8, i64 %10
  store %struct.xpc_partition* %11, %struct.xpc_partition** %6, align 8
  %12 = load %struct.xpc_partition*, %struct.xpc_partition** %6, align 8
  %13 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @xpPartitionDown, align 4
  store i32 %17, i32* %3, align 4
  br label %31

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @xpc_nasid_mask_nbytes, align 4
  %21 = call i32 @memset(i8* %19, i32 0, i32 %20)
  %22 = load %struct.xpc_partition*, %struct.xpc_partition** %6, align 8
  %23 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @XPC_RP_PART_NASIDS(i64 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @xp_pa(i8* %26)
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @xpc_nasid_mask_nbytes, align 4
  %30 = call i32 @xp_remote_memcpy(i32 %27, i64 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %18, %16
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @XPC_RP_PART_NASIDS(i64) #1

declare dso_local i32 @xp_remote_memcpy(i32, i64, i32) #1

declare dso_local i32 @xp_pa(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
