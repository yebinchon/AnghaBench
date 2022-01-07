; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_fd_handle_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_fd_handle_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i64, i32, %struct.TYPE_9__, i32, i32, i32, i32, %struct.pci_dev* }
%struct.TYPE_9__ = type { i32 }
%struct.pci_dev = type { i32 }
%union.i40e_rx_desc = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@I40E_RX_PROG_STATUS_DESC_QW1_ERROR_MASK = common dso_local global i64 0, align 8
@I40E_RX_PROG_STATUS_DESC_QW1_ERROR_SHIFT = common dso_local global i64 0, align 8
@I40E_RX_PROG_STATUS_DESC_FD_TBL_FULL_SHIFT = common dso_local global i32 0, align 4
@I40E_DEBUG_FD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ntuple filter loc = %d, could not be added\0A\00", align 1
@__I40E_FD_FLUSH_REQUESTED = common dso_local global i32 0, align 4
@__I40E_FD_SB_AUTO_DISABLED = common dso_local global i32 0, align 4
@__I40E_FD_ATR_AUTO_DISABLED = common dso_local global i32 0, align 4
@I40E_FDIR_BUFFER_FULL_MARGIN = common dso_local global i64 0, align 8
@I40E_FLAG_FD_SB_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"FD filter space full, new ntuple rules will not be added\0A\00", align 1
@I40E_RX_PROG_STATUS_DESC_NO_FD_ENTRY_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"ntuple filter fd_id = %d, could not be removed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_fd_handle_status(%struct.i40e_ring* %0, %union.i40e_rx_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_ring*, align 8
  %5 = alloca %union.i40e_rx_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.i40e_ring* %0, %struct.i40e_ring** %4, align 8
  store %union.i40e_rx_desc* %1, %union.i40e_rx_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %14 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  store %struct.i40e_pf* %17, %struct.i40e_pf** %7, align 8
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 7
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %8, align 8
  %21 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %5, align 8
  %22 = bitcast %union.i40e_rx_desc* %21 to %struct.TYPE_12__*
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le64_to_cpu(i32 %25)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @I40E_RX_PROG_STATUS_DESC_QW1_ERROR_MASK, align 8
  %29 = and i64 %27, %28
  %30 = load i64, i64* @I40E_RX_PROG_STATUS_DESC_QW1_ERROR_SHIFT, align 8
  %31 = ashr i64 %29, %30
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i32, i32* @I40E_RX_PROG_STATUS_DESC_FD_TBL_FULL_SHIFT, align 4
  %34 = call i64 @BIT(i32 %33)
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %150

36:                                               ; preds = %3
  %37 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %5, align 8
  %38 = bitcast %union.i40e_rx_desc* %37 to %struct.TYPE_12__*
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %45 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %5, align 8
  %47 = bitcast %union.i40e_rx_desc* %46 to %struct.TYPE_12__*
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %36
  %54 = load i32, i32* @I40E_DEBUG_FD, align 4
  %55 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %56 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %54, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %53, %36
  %62 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %65 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32*, i8*, ...) @dev_warn(i32* %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %61, %53
  %69 = load i32, i32* @__I40E_FD_FLUSH_REQUESTED, align 4
  %70 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %71 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @test_bit(i32 %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %175

76:                                               ; preds = %68
  %77 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %78 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %82 = call i32 @i40e_get_current_atr_cnt(%struct.i40e_pf* %81)
  %83 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %84 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %5, align 8
  %86 = bitcast %union.i40e_rx_desc* %85 to %struct.TYPE_12__*
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %76
  %93 = load i32, i32* @__I40E_FD_SB_AUTO_DISABLED, align 4
  %94 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %95 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @test_bit(i32 %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %92
  %100 = load i32, i32* @__I40E_FD_ATR_AUTO_DISABLED, align 4
  %101 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %102 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @set_bit(i32 %100, i32 %103)
  %105 = load i32, i32* @__I40E_FD_FLUSH_REQUESTED, align 4
  %106 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %107 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @set_bit(i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %99, %92, %76
  %111 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %112 = call i64 @i40e_get_global_fd_count(%struct.i40e_pf* %111)
  store i64 %112, i64* %9, align 8
  %113 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %114 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %10, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* @I40E_FDIR_BUFFER_FULL_MARGIN, align 8
  %119 = sub nsw i64 %117, %118
  %120 = icmp sge i64 %116, %119
  br i1 %120, label %121, label %149

121:                                              ; preds = %110
  %122 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %123 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @I40E_FLAG_FD_SB_ENABLED, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %148

128:                                              ; preds = %121
  %129 = load i32, i32* @__I40E_FD_SB_AUTO_DISABLED, align 4
  %130 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %131 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @test_and_set_bit(i32 %129, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %148, label %135

135:                                              ; preds = %128
  %136 = load i32, i32* @I40E_DEBUG_FD, align 4
  %137 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %138 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %136, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %135
  %144 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %145 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %144, i32 0, i32 0
  %146 = call i32 (i32*, i8*, ...) @dev_warn(i32* %145, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %147

147:                                              ; preds = %143, %135
  br label %148

148:                                              ; preds = %147, %128, %121
  br label %149

149:                                              ; preds = %148, %110
  br label %175

150:                                              ; preds = %3
  %151 = load i64, i64* %11, align 8
  %152 = load i32, i32* @I40E_RX_PROG_STATUS_DESC_NO_FD_ENTRY_SHIFT, align 4
  %153 = call i64 @BIT(i32 %152)
  %154 = icmp eq i64 %151, %153
  br i1 %154, label %155, label %174

155:                                              ; preds = %150
  %156 = load i32, i32* @I40E_DEBUG_FD, align 4
  %157 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %158 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %156, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %155
  %164 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %165 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %164, i32 0, i32 0
  %166 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %5, align 8
  %167 = bitcast %union.i40e_rx_desc* %166 to %struct.TYPE_12__*
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @dev_info(i32* %165, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %163, %155
  br label %174

174:                                              ; preds = %173, %150
  br label %175

175:                                              ; preds = %75, %174, %149
  ret void
}

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @i40e_get_current_atr_cnt(%struct.i40e_pf*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @i40e_get_global_fd_count(%struct.i40e_pf*) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
