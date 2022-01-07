; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_restore_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_restore_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt_gl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sge_fl = type { i64, i64, i32, %struct.rx_sw_desc* }
%struct.rx_sw_desc = type { i32, i32 }

@RX_UNMAPPED_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pkt_gl*, %struct.sge_fl*, i32)* @restore_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_rx_bufs(%struct.pkt_gl* %0, %struct.sge_fl* %1, i32 %2) #0 {
  %4 = alloca %struct.pkt_gl*, align 8
  %5 = alloca %struct.sge_fl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rx_sw_desc*, align 8
  store %struct.pkt_gl* %0, %struct.pkt_gl** %4, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %29, %3
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %8
  %13 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %14 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %19 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %20, 1
  %22 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %23 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %29

24:                                               ; preds = %12
  %25 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %26 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, -1
  store i64 %28, i64* %26, align 8
  br label %29

29:                                               ; preds = %24, %17
  %30 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %31 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %30, i32 0, i32 3
  %32 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %31, align 8
  %33 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %34 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %32, i64 %35
  store %struct.rx_sw_desc* %36, %struct.rx_sw_desc** %7, align 8
  %37 = load %struct.pkt_gl*, %struct.pkt_gl** %4, align 8
  %38 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %7, align 8
  %46 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @RX_UNMAPPED_BUF, align 4
  %48 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %7, align 8
  %49 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %53 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %8

56:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
