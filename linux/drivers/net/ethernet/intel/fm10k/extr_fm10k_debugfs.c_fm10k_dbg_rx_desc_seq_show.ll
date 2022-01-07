; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_debugfs.c_fm10k_dbg_rx_desc_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_debugfs.c_fm10k_dbg_rx_desc_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.fm10k_ring* }
%struct.fm10k_ring = type { i32 }
%union.fm10k_rx_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@fm10k_dbg_rx_desc_seq_show.rx_desc_hdr = internal constant [76 x i8] c"DES DATA       RSS        STATERR    LENGTH VLAN   DGLORT SGLORT TIMESTAMP\0A\00", align 16
@.str = private unnamed_addr constant [37 x i8] c"%03X Descriptor ring not allocated.\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"%03X %#010x %#010x %#010x %#06x %#06x %#06x %#06x %#018llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @fm10k_dbg_rx_desc_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_dbg_rx_desc_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fm10k_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.fm10k_rx_desc*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.fm10k_ring*, %struct.fm10k_ring** %9, align 8
  store %struct.fm10k_ring* %10, %struct.fm10k_ring** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @fm10k_dbg_rx_desc_seq_show.rx_desc_hdr, i64 0, i64 0))
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = call i32 @fm10k_dbg_desc_break(%struct.seq_file* %19, i32 75)
  br label %21

21:                                               ; preds = %16, %2
  %22 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %23 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %69

30:                                               ; preds = %21
  %31 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call %union.fm10k_rx_desc* @FM10K_RX_DESC(%struct.fm10k_ring* %31, i32 %32)
  store %union.fm10k_rx_desc* %33, %union.fm10k_rx_desc** %7, align 8
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %7, align 8
  %37 = bitcast %union.fm10k_rx_desc* %36 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %7, align 8
  %41 = bitcast %union.fm10k_rx_desc* %40 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %7, align 8
  %45 = bitcast %union.fm10k_rx_desc* %44 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %7, align 8
  %49 = bitcast %union.fm10k_rx_desc* %48 to %struct.TYPE_5__*
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %7, align 8
  %53 = bitcast %union.fm10k_rx_desc* %52 to %struct.TYPE_5__*
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %7, align 8
  %57 = bitcast %union.fm10k_rx_desc* %56 to %struct.TYPE_5__*
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %7, align 8
  %61 = bitcast %union.fm10k_rx_desc* %60 to %struct.TYPE_5__*
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %7, align 8
  %65 = bitcast %union.fm10k_rx_desc* %64 to %struct.TYPE_6__*
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %39, i32 %43, i32 %47, i32 %51, i32 %55, i32 %59, i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %30, %26
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @fm10k_dbg_desc_break(%struct.seq_file*, i32) #1

declare dso_local %union.fm10k_rx_desc* @FM10K_RX_DESC(%struct.fm10k_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
