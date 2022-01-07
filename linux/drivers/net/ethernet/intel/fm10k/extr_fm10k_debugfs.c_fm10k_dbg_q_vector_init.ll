; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_debugfs.c_fm10k_dbg_q_vector_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_debugfs.c_fm10k_dbg_q_vector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_q_vector = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.fm10k_intfc* }
%struct.TYPE_4__ = type { i32, %struct.fm10k_ring* }
%struct.fm10k_ring = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.fm10k_ring* }
%struct.fm10k_intfc = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"q_vector.%03d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"tx_ring.%03d\00", align 1
@fm10k_dbg_desc_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"rx_ring.%03d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm10k_dbg_q_vector_init(%struct.fm10k_q_vector* %0) #0 {
  %2 = alloca %struct.fm10k_q_vector*, align 8
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca [16 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.fm10k_ring*, align 8
  %7 = alloca %struct.fm10k_ring*, align 8
  store %struct.fm10k_q_vector* %0, %struct.fm10k_q_vector** %2, align 8
  %8 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %2, align 8
  %9 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %8, i32 0, i32 4
  %10 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  store %struct.fm10k_intfc* %10, %struct.fm10k_intfc** %3, align 8
  %11 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %12 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %88

16:                                               ; preds = %1
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %18 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %2, align 8
  %19 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @snprintf(i8* %17, i32 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %23 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %24 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @debugfs_create_dir(i8* %22, i32 %25)
  %27 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %2, align 8
  %28 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %55, %16
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %2, align 8
  %32 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %29
  %37 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %2, align 8
  %38 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load %struct.fm10k_ring*, %struct.fm10k_ring** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %40, i64 %42
  store %struct.fm10k_ring* %43, %struct.fm10k_ring** %6, align 8
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %45 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %46 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @snprintf(i8* %44, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %50 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %2, align 8
  %51 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %54 = call i32 @debugfs_create_file(i8* %49, i32 384, i32 %52, %struct.fm10k_ring* %53, i32* @fm10k_dbg_desc_fops)
  br label %55

55:                                               ; preds = %36
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %29

58:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %85, %58
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %2, align 8
  %62 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %59
  %67 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %2, align 8
  %68 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load %struct.fm10k_ring*, %struct.fm10k_ring** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %70, i64 %72
  store %struct.fm10k_ring* %73, %struct.fm10k_ring** %7, align 8
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %75 = load %struct.fm10k_ring*, %struct.fm10k_ring** %7, align 8
  %76 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @snprintf(i8* %74, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %80 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %2, align 8
  %81 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.fm10k_ring*, %struct.fm10k_ring** %7, align 8
  %84 = call i32 @debugfs_create_file(i8* %79, i32 384, i32 %82, %struct.fm10k_ring* %83, i32* @fm10k_dbg_desc_fops)
  br label %85

85:                                               ; preds = %66
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %59

88:                                               ; preds = %15, %59
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.fm10k_ring*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
