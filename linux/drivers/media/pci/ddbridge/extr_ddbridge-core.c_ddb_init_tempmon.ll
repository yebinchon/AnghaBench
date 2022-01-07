; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_init_tempmon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_init_tempmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_link = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__, %struct.ddb_info* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ddb_info = type { i64, i32 }

@DDB_OCTOPUS_MAX_CT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"init_tempmon\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_link*)* @ddb_init_tempmon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddb_init_tempmon(%struct.ddb_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb_link*, align 8
  %4 = alloca %struct.ddb_info*, align 8
  store %struct.ddb_link* %0, %struct.ddb_link** %3, align 8
  %5 = load %struct.ddb_link*, %struct.ddb_link** %3, align 8
  %6 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %5, i32 0, i32 3
  %7 = load %struct.ddb_info*, %struct.ddb_info** %6, align 8
  store %struct.ddb_info* %7, %struct.ddb_info** %4, align 8
  %8 = load %struct.ddb_info*, %struct.ddb_info** %4, align 8
  %9 = getelementptr inbounds %struct.ddb_info, %struct.ddb_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

13:                                               ; preds = %1
  %14 = load %struct.ddb_info*, %struct.ddb_info** %4, align 8
  %15 = getelementptr inbounds %struct.ddb_info, %struct.ddb_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DDB_OCTOPUS_MAX_CT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.ddb_link*, %struct.ddb_link** %3, align 8
  %21 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 65538
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %39

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %13
  %28 = load %struct.ddb_link*, %struct.ddb_link** %3, align 8
  %29 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %28, i32 0, i32 1
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.ddb_link*, %struct.ddb_link** %3, align 8
  %32 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.ddb_link*, %struct.ddb_link** %3, align 8
  %38 = call i32 @tempmon_init(%struct.ddb_link* %37, i32 1)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %27, %25, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @tempmon_init(%struct.ddb_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
