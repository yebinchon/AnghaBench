; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_gen_probe.c_check_cmd_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_gen_probe.c_check_cmd_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@P_ID_NONE = common dso_local global i32 0, align 4
@P_ID_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtd_info* (%struct.map_info*, i32)* @check_cmd_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtd_info* @check_cmd_set(%struct.map_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.map_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfi_private*, align 8
  %7 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.map_info*, %struct.map_info** %4, align 8
  %9 = getelementptr inbounds %struct.map_info, %struct.map_info* %8, i32 0, i32 0
  %10 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  store %struct.cfi_private* %10, %struct.cfi_private** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %15 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %21 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  br label %25

25:                                               ; preds = %19, %13
  %26 = phi i32 [ %18, %13 ], [ %24, %19 ]
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @P_ID_NONE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @P_ID_RESERVED, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %25
  store %struct.mtd_info* null, %struct.mtd_info** %3, align 8
  br label %41

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %37 [
  ]

37:                                               ; preds = %35
  %38 = load %struct.map_info*, %struct.map_info** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call %struct.mtd_info* @cfi_cmdset_unknown(%struct.map_info* %38, i32 %39)
  store %struct.mtd_info* %40, %struct.mtd_info** %3, align 8
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  ret %struct.mtd_info* %42
}

declare dso_local %struct.mtd_info* @cfi_cmdset_unknown(%struct.map_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
