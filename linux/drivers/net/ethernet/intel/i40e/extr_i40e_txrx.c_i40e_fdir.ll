; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_fdir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_fdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64 }
%struct.i40e_fdir_filter = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.i40e_filter_program_desc = type { i8*, i8*, i8*, i8* }

@I40E_TXD_FLTR_QW0_QINDEX_MASK = common dso_local global i32 0, align 4
@I40E_TXD_FLTR_QW0_QINDEX_SHIFT = common dso_local global i32 0, align 4
@I40E_TXD_FLTR_QW0_FLEXOFF_MASK = common dso_local global i32 0, align 4
@I40E_TXD_FLTR_QW0_FLEXOFF_SHIFT = common dso_local global i32 0, align 4
@I40E_TXD_FLTR_QW0_PCTYPE_MASK = common dso_local global i32 0, align 4
@I40E_TXD_FLTR_QW0_PCTYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_TXD_FLTR_QW0_DEST_VSI_MASK = common dso_local global i32 0, align 4
@I40E_TXD_FLTR_QW0_DEST_VSI_SHIFT = common dso_local global i32 0, align 4
@I40E_TX_DESC_DTYPE_FILTER_PROG = common dso_local global i32 0, align 4
@I40E_FILTER_PROGRAM_DESC_PCMD_ADD_UPDATE = common dso_local global i32 0, align 4
@I40E_TXD_FLTR_QW1_PCMD_SHIFT = common dso_local global i32 0, align 4
@I40E_FILTER_PROGRAM_DESC_PCMD_REMOVE = common dso_local global i32 0, align 4
@I40E_TXD_FLTR_QW1_DEST_MASK = common dso_local global i32 0, align 4
@I40E_TXD_FLTR_QW1_DEST_SHIFT = common dso_local global i32 0, align 4
@I40E_TXD_FLTR_QW1_FD_STATUS_MASK = common dso_local global i32 0, align 4
@I40E_TXD_FLTR_QW1_FD_STATUS_SHIFT = common dso_local global i32 0, align 4
@I40E_TXD_FLTR_QW1_CNT_ENA_MASK = common dso_local global i32 0, align 4
@I40E_TXD_FLTR_QW1_CNTINDEX_MASK = common dso_local global i32 0, align 4
@I40E_TXD_FLTR_QW1_CNTINDEX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_ring*, %struct.i40e_fdir_filter*, i32)* @i40e_fdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_fdir(%struct.i40e_ring* %0, %struct.i40e_fdir_filter* %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_ring*, align 8
  %5 = alloca %struct.i40e_fdir_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_filter_program_desc*, align 8
  %8 = alloca %struct.i40e_pf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.i40e_ring* %0, %struct.i40e_ring** %4, align 8
  store %struct.i40e_fdir_filter* %1, %struct.i40e_fdir_filter** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %13 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %15, align 8
  store %struct.i40e_pf* %16, %struct.i40e_pf** %8, align 8
  %17 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %18 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %21 = load i64, i64* %11, align 8
  %22 = call %struct.i40e_filter_program_desc* @I40E_TX_FDIRDESC(%struct.i40e_ring* %20, i64 %21)
  store %struct.i40e_filter_program_desc* %22, %struct.i40e_filter_program_desc** %7, align 8
  %23 = load i64, i64* %11, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %27 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i64, i64* %11, align 8
  br label %33

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i64 [ %31, %30 ], [ 0, %32 ]
  %35 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %36 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @I40E_TXD_FLTR_QW0_QINDEX_MASK, align 4
  %38 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %5, align 8
  %39 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @I40E_TXD_FLTR_QW0_QINDEX_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = and i32 %37, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @I40E_TXD_FLTR_QW0_FLEXOFF_MASK, align 4
  %45 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %5, align 8
  %46 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @I40E_TXD_FLTR_QW0_FLEXOFF_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = and i32 %44, %49
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* @I40E_TXD_FLTR_QW0_PCTYPE_MASK, align 4
  %54 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %5, align 8
  %55 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @I40E_TXD_FLTR_QW0_PCTYPE_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = and i32 %53, %58
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @I40E_TXD_FLTR_QW0_PCTYPE_MASK, align 4
  %63 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %5, align 8
  %64 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @I40E_TXD_FLTR_QW0_FLEXOFF_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = and i32 %62, %67
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* @I40E_TXD_FLTR_QW0_DEST_VSI_MASK, align 4
  %72 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %5, align 8
  %73 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %72, i32 0, i32 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %33
  br label %88

77:                                               ; preds = %33
  %78 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %79 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %79, align 8
  %81 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %82 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %80, i64 %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  br label %88

88:                                               ; preds = %77, %76
  %89 = phi i64 [ %74, %76 ], [ %87, %77 ]
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* @I40E_TXD_FLTR_QW0_DEST_VSI_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = and i32 %71, %92
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* @I40E_TX_DESC_DTYPE_FILTER_PROG, align 4
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %88
  %100 = load i32, i32* @I40E_FILTER_PROGRAM_DESC_PCMD_ADD_UPDATE, align 4
  %101 = load i32, i32* @I40E_TXD_FLTR_QW1_PCMD_SHIFT, align 4
  %102 = shl i32 %100, %101
  br label %107

103:                                              ; preds = %88
  %104 = load i32, i32* @I40E_FILTER_PROGRAM_DESC_PCMD_REMOVE, align 4
  %105 = load i32, i32* @I40E_TXD_FLTR_QW1_PCMD_SHIFT, align 4
  %106 = shl i32 %104, %105
  br label %107

107:                                              ; preds = %103, %99
  %108 = phi i32 [ %102, %99 ], [ %106, %103 ]
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* @I40E_TXD_FLTR_QW1_DEST_MASK, align 4
  %112 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %5, align 8
  %113 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @I40E_TXD_FLTR_QW1_DEST_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = and i32 %111, %116
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* @I40E_TXD_FLTR_QW1_FD_STATUS_MASK, align 4
  %121 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %5, align 8
  %122 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @I40E_TXD_FLTR_QW1_FD_STATUS_SHIFT, align 4
  %125 = shl i32 %123, %124
  %126 = and i32 %120, %125
  %127 = load i32, i32* %10, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %10, align 4
  %129 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %5, align 8
  %130 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %129, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %107
  %134 = load i32, i32* @I40E_TXD_FLTR_QW1_CNT_ENA_MASK, align 4
  %135 = load i32, i32* %10, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* @I40E_TXD_FLTR_QW1_CNTINDEX_MASK, align 4
  %138 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %5, align 8
  %139 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = load i32, i32* @I40E_TXD_FLTR_QW1_CNTINDEX_SHIFT, align 4
  %143 = shl i32 %141, %142
  %144 = and i32 %137, %143
  %145 = load i32, i32* %10, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %133, %107
  %148 = load i32, i32* %9, align 4
  %149 = call i8* @cpu_to_le32(i32 %148)
  %150 = load %struct.i40e_filter_program_desc*, %struct.i40e_filter_program_desc** %7, align 8
  %151 = getelementptr inbounds %struct.i40e_filter_program_desc, %struct.i40e_filter_program_desc* %150, i32 0, i32 3
  store i8* %149, i8** %151, align 8
  %152 = call i8* @cpu_to_le32(i32 0)
  %153 = load %struct.i40e_filter_program_desc*, %struct.i40e_filter_program_desc** %7, align 8
  %154 = getelementptr inbounds %struct.i40e_filter_program_desc, %struct.i40e_filter_program_desc* %153, i32 0, i32 2
  store i8* %152, i8** %154, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i8* @cpu_to_le32(i32 %155)
  %157 = load %struct.i40e_filter_program_desc*, %struct.i40e_filter_program_desc** %7, align 8
  %158 = getelementptr inbounds %struct.i40e_filter_program_desc, %struct.i40e_filter_program_desc* %157, i32 0, i32 1
  store i8* %156, i8** %158, align 8
  %159 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %5, align 8
  %160 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = call i8* @cpu_to_le32(i32 %161)
  %163 = load %struct.i40e_filter_program_desc*, %struct.i40e_filter_program_desc** %7, align 8
  %164 = getelementptr inbounds %struct.i40e_filter_program_desc, %struct.i40e_filter_program_desc* %163, i32 0, i32 0
  store i8* %162, i8** %164, align 8
  ret void
}

declare dso_local %struct.i40e_filter_program_desc* @I40E_TX_FDIRDESC(%struct.i40e_ring*, i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
