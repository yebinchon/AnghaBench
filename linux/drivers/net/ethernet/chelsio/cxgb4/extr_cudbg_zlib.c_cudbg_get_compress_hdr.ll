; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_zlib.c_cudbg_get_compress_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_zlib.c_cudbg_get_compress_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_buffer = type { i64, i64, i8* }

@CUDBG_STATUS_NO_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_buffer*, %struct.cudbg_buffer*)* @cudbg_get_compress_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cudbg_get_compress_hdr(%struct.cudbg_buffer* %0, %struct.cudbg_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cudbg_buffer*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  store %struct.cudbg_buffer* %0, %struct.cudbg_buffer** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  %6 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %8, 4
  %10 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ugt i64 %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @CUDBG_STATUS_NO_MEM, align 4
  store i32 %15, i32* %3, align 4
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %25 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %27 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %29 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %28, i32 0, i32 1
  store i64 4, i64* %29, align 8
  %30 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 4
  store i64 %33, i64* %31, align 8
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %16, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
