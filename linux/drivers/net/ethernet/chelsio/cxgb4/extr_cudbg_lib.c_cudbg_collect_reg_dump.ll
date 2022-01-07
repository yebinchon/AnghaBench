; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_reg_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_reg_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cudbg_buffer = type { i32, i64, i32 }
%struct.cudbg_error = type { i32 }

@T4_REGMAP_SIZE = common dso_local global i32 0, align 4
@T5_REGMAP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cudbg_collect_reg_dump(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca %struct.cudbg_buffer*, align 8
  %7 = alloca %struct.cudbg_error*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cudbg_buffer, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %5, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %6, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %7, align 8
  %12 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %13 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %12, i32 0, i32 0
  %14 = load %struct.adapter*, %struct.adapter** %13, align 8
  store %struct.adapter* %14, %struct.adapter** %8, align 8
  %15 = bitcast %struct.cudbg_buffer* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.adapter*, %struct.adapter** %8, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @is_t4(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @T4_REGMAP_SIZE, align 4
  store i32 %23, i32* %10, align 4
  br label %41

24:                                               ; preds = %3
  %25 = load %struct.adapter*, %struct.adapter** %8, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @is_t5(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load %struct.adapter*, %struct.adapter** %8, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @is_t6(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31, %24
  %39 = load i32, i32* @T5_REGMAP_SIZE, align 4
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %38, %31
  br label %41

41:                                               ; preds = %40, %22
  %42 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %43 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @cudbg_get_buff(%struct.cudbg_init* %42, %struct.cudbg_buffer* %43, i32 %44, %struct.cudbg_buffer* %9)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %61

50:                                               ; preds = %41
  %51 = load %struct.adapter*, %struct.adapter** %8, align 8
  %52 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @t4_get_regs(%struct.adapter* %51, i8* %54, i32 %56)
  %58 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %59 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %60 = call i32 @cudbg_write_and_release_buff(%struct.cudbg_init* %58, %struct.cudbg_buffer* %9, %struct.cudbg_buffer* %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %50, %48
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @is_t4(i32) #2

declare dso_local i64 @is_t5(i32) #2

declare dso_local i64 @is_t6(i32) #2

declare dso_local i32 @cudbg_get_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #2

declare dso_local i32 @t4_get_regs(%struct.adapter*, i8*, i32) #2

declare dso_local i32 @cudbg_write_and_release_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
