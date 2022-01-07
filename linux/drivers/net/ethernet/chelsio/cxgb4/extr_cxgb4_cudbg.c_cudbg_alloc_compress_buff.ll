; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_cudbg.c_cudbg_alloc_compress_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_cudbg.c_cudbg_alloc_compress_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { i32, i64, i32* }

@CUDBG_COMPRESS_BUFF_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*)* @cudbg_alloc_compress_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cudbg_alloc_compress_buff(%struct.cudbg_init* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cudbg_init*, align 8
  %4 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %3, align 8
  %5 = call i32 (...) @cudbg_get_workspace_size()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @CUDBG_COMPRESS_BUFF_SIZE, align 4
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %6, %7
  %9 = call i64 @vzalloc(i32 %8)
  %10 = load %struct.cudbg_init*, %struct.cudbg_init** %3, align 8
  %11 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %10, i32 0, i32 1
  store i64 %9, i64* %11, align 8
  %12 = load %struct.cudbg_init*, %struct.cudbg_init** %3, align 8
  %13 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %36

19:                                               ; preds = %1
  %20 = load i32, i32* @CUDBG_COMPRESS_BUFF_SIZE, align 4
  %21 = load %struct.cudbg_init*, %struct.cudbg_init** %3, align 8
  %22 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.cudbg_init*, %struct.cudbg_init** %3, align 8
  %24 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = load i32, i32* @CUDBG_COMPRESS_BUFF_SIZE, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 0, %31
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load %struct.cudbg_init*, %struct.cudbg_init** %3, align 8
  %35 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %34, i32 0, i32 2
  store i32* %33, i32** %35, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %19, %16
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @cudbg_get_workspace_size(...) #1

declare dso_local i64 @vzalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
