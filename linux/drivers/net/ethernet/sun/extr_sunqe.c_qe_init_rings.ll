; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunqe.c_qe_init_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunqe.c_qe_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunqe = type { i64, i64, i64, i64, i32, %struct.sunqe_buffers*, %struct.sunqe_buffers* }
%struct.sunqe_buffers = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.qe_init_block = type { %struct.TYPE_2__* }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@rx_buf = common dso_local global i32 0, align 4
@RXD_OWN = common dso_local global i32 0, align 4
@RXD_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sunqe*)* @qe_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qe_init_rings(%struct.sunqe* %0) #0 {
  %2 = alloca %struct.sunqe*, align 8
  %3 = alloca %struct.qe_init_block*, align 8
  %4 = alloca %struct.sunqe_buffers*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sunqe* %0, %struct.sunqe** %2, align 8
  %7 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %8 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %7, i32 0, i32 6
  %9 = load %struct.sunqe_buffers*, %struct.sunqe_buffers** %8, align 8
  %10 = bitcast %struct.sunqe_buffers* %9 to %struct.qe_init_block*
  store %struct.qe_init_block* %10, %struct.qe_init_block** %3, align 8
  %11 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %12 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %11, i32 0, i32 5
  %13 = load %struct.sunqe_buffers*, %struct.sunqe_buffers** %12, align 8
  store %struct.sunqe_buffers* %13, %struct.sunqe_buffers** %4, align 8
  %14 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %15 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %19 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %21 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %23 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %25 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.qe_init_block*, %struct.qe_init_block** %3, align 8
  %27 = bitcast %struct.qe_init_block* %26 to %struct.sunqe_buffers*
  %28 = call i32 @memset(%struct.sunqe_buffers* %27, i32 0, i32 8)
  %29 = load %struct.sunqe_buffers*, %struct.sunqe_buffers** %4, align 8
  %30 = call i32 @memset(%struct.sunqe_buffers* %29, i32 0, i32 8)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %57, %1
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @RX_RING_SIZE, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* @rx_buf, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @qebuf_offset(i32 %37, i32 %38)
  %40 = add nsw i64 %36, %39
  %41 = load %struct.qe_init_block*, %struct.qe_init_block** %3, align 8
  %42 = getelementptr inbounds %struct.qe_init_block, %struct.qe_init_block* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i64 %40, i64* %47, align 8
  %48 = load i32, i32* @RXD_OWN, align 4
  %49 = or i32 %48, ptrtoint (i32* @RXD_LENGTH to i32)
  %50 = load %struct.qe_init_block*, %struct.qe_init_block** %3, align 8
  %51 = getelementptr inbounds %struct.qe_init_block, %struct.qe_init_block* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %49, i32* %56, align 8
  br label %57

57:                                               ; preds = %35
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %31

60:                                               ; preds = %31
  ret void
}

declare dso_local i32 @memset(%struct.sunqe_buffers*, i32, i32) #1

declare dso_local i64 @qebuf_offset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
