; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_virtio.c_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_virtio.c_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfv_info = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"rx-napi-complete\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"rx-napi-resched\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"rx-nomem\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"rx-kicks\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"tx-full-ring\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"tx-no-mem\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"tx-kicks\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"tx-flow-on\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfv_info*)* @debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debugfs_init(%struct.cfv_info* %0) #0 {
  %2 = alloca %struct.cfv_info*, align 8
  store %struct.cfv_info* %0, %struct.cfv_info** %2, align 8
  %3 = load %struct.cfv_info*, %struct.cfv_info** %2, align 8
  %4 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @netdev_name(i32 %5)
  %7 = call i32 @debugfs_create_dir(i32 %6, i32* null)
  %8 = load %struct.cfv_info*, %struct.cfv_info** %2, align 8
  %9 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.cfv_info*, %struct.cfv_info** %2, align 8
  %11 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cfv_info*, %struct.cfv_info** %2, align 8
  %14 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 7
  %16 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 256, i32 %12, i32* %15)
  %17 = load %struct.cfv_info*, %struct.cfv_info** %2, align 8
  %18 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cfv_info*, %struct.cfv_info** %2, align 8
  %21 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 6
  %23 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 256, i32 %19, i32* %22)
  %24 = load %struct.cfv_info*, %struct.cfv_info** %2, align 8
  %25 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cfv_info*, %struct.cfv_info** %2, align 8
  %28 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 5
  %30 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 256, i32 %26, i32* %29)
  %31 = load %struct.cfv_info*, %struct.cfv_info** %2, align 8
  %32 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cfv_info*, %struct.cfv_info** %2, align 8
  %35 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  %37 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 256, i32 %33, i32* %36)
  %38 = load %struct.cfv_info*, %struct.cfv_info** %2, align 8
  %39 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cfv_info*, %struct.cfv_info** %2, align 8
  %42 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 256, i32 %40, i32* %43)
  %45 = load %struct.cfv_info*, %struct.cfv_info** %2, align 8
  %46 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cfv_info*, %struct.cfv_info** %2, align 8
  %49 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 256, i32 %47, i32* %50)
  %52 = load %struct.cfv_info*, %struct.cfv_info** %2, align 8
  %53 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cfv_info*, %struct.cfv_info** %2, align 8
  %56 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 256, i32 %54, i32* %57)
  %59 = load %struct.cfv_info*, %struct.cfv_info** %2, align 8
  %60 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cfv_info*, %struct.cfv_info** %2, align 8
  %63 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 256, i32 %61, i32* %64)
  ret void
}

declare dso_local i32 @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @netdev_name(i32) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
