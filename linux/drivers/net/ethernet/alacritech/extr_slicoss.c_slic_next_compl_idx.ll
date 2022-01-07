; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_next_compl_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_next_compl_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { %struct.slic_stat_queue }
%struct.slic_stat_queue = type { i32, i64, i32, i32*, %struct.slic_stat_desc** }
%struct.slic_stat_desc = type { i64, i64 }

@SLIC_INVALID_STAT_DESC_IDX = common dso_local global i32 0, align 4
@SLIC_REG_RBAR = common dso_local global i32 0, align 4
@SLIC_NUM_STAT_DESC_ARRAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slic_device*)* @slic_next_compl_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slic_next_compl_idx(%struct.slic_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slic_device*, align 8
  %4 = alloca %struct.slic_stat_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.slic_stat_desc*, align 8
  %7 = alloca %struct.slic_stat_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.slic_device* %0, %struct.slic_device** %3, align 8
  %10 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %11 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %10, i32 0, i32 0
  store %struct.slic_stat_queue* %11, %struct.slic_stat_queue** %4, align 8
  %12 = load %struct.slic_stat_queue*, %struct.slic_stat_queue** %4, align 8
  %13 = getelementptr inbounds %struct.slic_stat_queue, %struct.slic_stat_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.slic_stat_queue*, %struct.slic_stat_queue** %4, align 8
  %16 = getelementptr inbounds %struct.slic_stat_queue, %struct.slic_stat_queue* %15, i32 0, i32 4
  %17 = load %struct.slic_stat_desc**, %struct.slic_stat_desc*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.slic_stat_desc*, %struct.slic_stat_desc** %17, i64 %19
  %21 = load %struct.slic_stat_desc*, %struct.slic_stat_desc** %20, align 8
  store %struct.slic_stat_desc* %21, %struct.slic_stat_desc** %6, align 8
  %22 = load %struct.slic_stat_desc*, %struct.slic_stat_desc** %6, align 8
  %23 = load %struct.slic_stat_queue*, %struct.slic_stat_queue** %4, align 8
  %24 = getelementptr inbounds %struct.slic_stat_queue, %struct.slic_stat_queue* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.slic_stat_desc, %struct.slic_stat_desc* %22, i64 %25
  store %struct.slic_stat_desc* %26, %struct.slic_stat_desc** %7, align 8
  %27 = load %struct.slic_stat_desc*, %struct.slic_stat_desc** %7, align 8
  %28 = getelementptr inbounds %struct.slic_stat_desc, %struct.slic_stat_desc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @SLIC_INVALID_STAT_DESC_IDX, align 4
  store i32 %32, i32* %2, align 4
  br label %87

33:                                               ; preds = %1
  %34 = load %struct.slic_stat_desc*, %struct.slic_stat_desc** %7, align 8
  %35 = getelementptr inbounds %struct.slic_stat_desc, %struct.slic_stat_desc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @le32_to_cpu(i64 %36)
  %38 = and i32 %37, 65535
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  %40 = load %struct.slic_stat_desc*, %struct.slic_stat_desc** %7, align 8
  %41 = getelementptr inbounds %struct.slic_stat_desc, %struct.slic_stat_desc* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.slic_stat_desc*, %struct.slic_stat_desc** %7, align 8
  %43 = getelementptr inbounds %struct.slic_stat_desc, %struct.slic_stat_desc* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.slic_stat_queue*, %struct.slic_stat_queue** %4, align 8
  %45 = getelementptr inbounds %struct.slic_stat_queue, %struct.slic_stat_queue* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.slic_stat_queue*, %struct.slic_stat_queue** %4, align 8
  %48 = getelementptr inbounds %struct.slic_stat_queue, %struct.slic_stat_queue* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @slic_next_queue_idx(i64 %46, i32 %49)
  %51 = load %struct.slic_stat_queue*, %struct.slic_stat_queue** %4, align 8
  %52 = getelementptr inbounds %struct.slic_stat_queue, %struct.slic_stat_queue* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.slic_stat_queue*, %struct.slic_stat_queue** %4, align 8
  %54 = getelementptr inbounds %struct.slic_stat_queue, %struct.slic_stat_queue* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %85, label %57

57:                                               ; preds = %33
  %58 = load %struct.slic_stat_queue*, %struct.slic_stat_queue** %4, align 8
  %59 = getelementptr inbounds %struct.slic_stat_queue, %struct.slic_stat_queue* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %66 = load i32, i32* @SLIC_REG_RBAR, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @lower_32_bits(i32 %67)
  %69 = load %struct.slic_stat_queue*, %struct.slic_stat_queue** %4, align 8
  %70 = getelementptr inbounds %struct.slic_stat_queue, %struct.slic_stat_queue* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %68, %71
  %73 = call i32 @slic_write(%struct.slic_device* %65, i32 %66, i32 %72)
  %74 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %75 = call i32 @slic_flush_write(%struct.slic_device* %74)
  %76 = load i32, i32* %5, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* @SLIC_NUM_STAT_DESC_ARRAYS, align 4
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.slic_stat_queue*, %struct.slic_stat_queue** %4, align 8
  %84 = getelementptr inbounds %struct.slic_stat_queue, %struct.slic_stat_queue* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %57, %33
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %31
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i64 @slic_next_queue_idx(i64, i32) #1

declare dso_local i32 @slic_write(%struct.slic_device*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @slic_flush_write(%struct.slic_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
