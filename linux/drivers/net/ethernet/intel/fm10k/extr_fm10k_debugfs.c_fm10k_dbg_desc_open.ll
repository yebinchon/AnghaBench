; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_debugfs.c_fm10k_dbg_desc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_debugfs.c_fm10k_dbg_desc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_operations = type { i32 }
%struct.inode = type { %struct.fm10k_ring* }
%struct.fm10k_ring = type { %struct.fm10k_q_vector* }
%struct.fm10k_q_vector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fm10k_ring* }
%struct.file = type { i64 }
%struct.seq_file = type { %struct.fm10k_ring* }

@fm10k_dbg_tx_desc_seq_ops = common dso_local global %struct.seq_operations zeroinitializer, align 4
@fm10k_dbg_rx_desc_seq_ops = common dso_local global %struct.seq_operations zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @fm10k_dbg_desc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_dbg_desc_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.fm10k_ring*, align 8
  %7 = alloca %struct.fm10k_q_vector*, align 8
  %8 = alloca %struct.seq_operations*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.fm10k_ring*, %struct.fm10k_ring** %11, align 8
  store %struct.fm10k_ring* %12, %struct.fm10k_ring** %6, align 8
  %13 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %14 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %13, i32 0, i32 0
  %15 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %14, align 8
  store %struct.fm10k_q_vector* %15, %struct.fm10k_q_vector** %7, align 8
  %16 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %17 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %7, align 8
  %18 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.fm10k_ring*, %struct.fm10k_ring** %19, align 8
  %21 = icmp ult %struct.fm10k_ring* %16, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store %struct.seq_operations* @fm10k_dbg_tx_desc_seq_ops, %struct.seq_operations** %8, align 8
  br label %24

23:                                               ; preds = %2
  store %struct.seq_operations* @fm10k_dbg_rx_desc_seq_ops, %struct.seq_operations** %8, align 8
  br label %24

24:                                               ; preds = %23, %22
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = load %struct.seq_operations*, %struct.seq_operations** %8, align 8
  %27 = call i32 @seq_open(%struct.file* %25, %struct.seq_operations* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %39

32:                                               ; preds = %24
  %33 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.seq_file*
  %38 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %37, i32 0, i32 0
  store %struct.fm10k_ring* %33, %struct.fm10k_ring** %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %30
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @seq_open(%struct.file*, %struct.seq_operations*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
