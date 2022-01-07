; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_vfdi_fini_all_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_vfdi_fini_all_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siena_vf = type { i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, %struct.efx_nic* }
%struct.efx_nic = type { i32 }

@EFX_VI_BASE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@inbuf = common dso_local global i32 0, align 4
@MC_CMD_FLUSH_RX_QUEUES_IN_LENMAX = common dso_local global i32 0, align 4
@VF_MAX_RX_QUEUES = common dso_local global i64 0, align 8
@MC_CMD_FLUSH_RX_QUEUES_IN_QID_OFST_MAXNUM = common dso_local global i64 0, align 8
@FRF_AZ_TX_FLUSH_DESCQ_CMD = common dso_local global i32 0, align 4
@FRF_AZ_TX_FLUSH_DESCQ = common dso_local global i32 0, align 4
@FR_AZ_TX_FLUSH_DESCQ = common dso_local global i32 0, align 4
@FLUSH_RX_QUEUES_IN_QID_OFST = common dso_local global i32 0, align 4
@MC_CMD_FLUSH_RX_QUEUES = common dso_local global i32 0, align 4
@FR_BZ_RX_DESC_PTR_TBL = common dso_local global i32 0, align 4
@FR_BZ_TX_DESC_PTR_TBL = common dso_local global i32 0, align 4
@FR_BZ_EVQ_PTR_TBL = common dso_local global i32 0, align 4
@FR_BZ_TIMER_TBL = common dso_local global i32 0, align 4
@EFX_VF_BUFTBL_PER_VI = common dso_local global i32 0, align 4
@VFDI_RC_ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siena_vf*)* @efx_vfdi_fini_all_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_vfdi_fini_all_queues(%struct.siena_vf* %0) #0 {
  %2 = alloca %struct.siena_vf*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.siena_vf* %0, %struct.siena_vf** %2, align 8
  %11 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %12 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %11, i32 0, i32 10
  %13 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  store %struct.efx_nic* %13, %struct.efx_nic** %3, align 8
  %14 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %15 = call i32 @efx_vf_size(%struct.efx_nic* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @EFX_VI_BASE, align 4
  %17 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %18 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %21 = call i32 @efx_vf_size(%struct.efx_nic* %20)
  %22 = mul i32 %19, %21
  %23 = add i32 %16, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @HZ, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @inbuf, align 4
  %26 = load i32, i32* @MC_CMD_FLUSH_RX_QUEUES_IN_LENMAX, align 4
  %27 = call i32 @MCDI_DECLARE_BUF(i32 %25, i32 %26)
  %28 = load i64, i64* @VF_MAX_RX_QUEUES, align 8
  %29 = load i64, i64* @MC_CMD_FLUSH_RX_QUEUES_IN_QID_OFST_MAXNUM, align 8
  %30 = icmp sgt i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUILD_BUG_ON(i32 %31)
  %33 = call i32 (...) @rtnl_lock()
  %34 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %35 = call i32 @siena_prepare_flush(%struct.efx_nic* %34)
  %36 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %77, %1
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %80

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %44 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @test_bit(i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @FRF_AZ_TX_FLUSH_DESCQ_CMD, align 4
  %51 = load i32, i32* @FRF_AZ_TX_FLUSH_DESCQ, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %52, %53
  %55 = call i32 @EFX_POPULATE_OWORD_2(i32 %49, i32 %50, i32 1, i32 %51, i32 %54)
  %56 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %57 = load i32, i32* @FR_AZ_TX_FLUSH_DESCQ, align 4
  %58 = call i32 @efx_writeo(%struct.efx_nic* %56, i32* %4, i32 %57)
  br label %59

59:                                               ; preds = %48, %41
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %62 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @test_bit(i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load i32, i32* @inbuf, align 4
  %68 = load i32, i32* @FLUSH_RX_QUEUES_IN_QID_OFST, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %8, align 4
  %72 = add i32 %70, %71
  %73 = call i32 @MCDI_SET_ARRAY_DWORD(i32 %67, i32 %68, i32 %69, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %66, %59
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %37

80:                                               ; preds = %37
  %81 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %82 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %81, i32 0, i32 3
  %83 = call i32 @atomic_set(i32* %82, i32 0)
  br label %84

84:                                               ; preds = %147, %80
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %89 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %94 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %92, %87
  %98 = phi i1 [ true, %87 ], [ %96, %92 ]
  br label %99

99:                                               ; preds = %97, %84
  %100 = phi i1 [ false, %84 ], [ %98, %97 ]
  br i1 %100, label %101, label %148

101:                                              ; preds = %99
  %102 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %103 = load i32, i32* @MC_CMD_FLUSH_RX_QUEUES, align 4
  %104 = load i32, i32* @inbuf, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @MC_CMD_FLUSH_RX_QUEUES_IN_LEN(i32 %105)
  %107 = call i32 @efx_mcdi_rpc(%struct.efx_nic* %102, i32 %103, i32 %104, i32 %106, i32* null, i32 0, i32* null)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @WARN_ON(i32 %110)
  %112 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %113 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %116 = call i32 @efx_vfdi_flush_wake(%struct.siena_vf* %115)
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @wait_event_timeout(i32 %114, i32 %116, i32 %117)
  store i32 %118, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %144, %101
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %147

123:                                              ; preds = %119
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %126 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @test_and_clear_bit(i32 %124, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %123
  %131 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %132 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %131, i32 0, i32 3
  %133 = call i32 @atomic_dec(i32* %132)
  %134 = load i32, i32* @inbuf, align 4
  %135 = load i32, i32* @FLUSH_RX_QUEUES_IN_QID_OFST, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %8, align 4
  %139 = add i32 %137, %138
  %140 = call i32 @MCDI_SET_ARRAY_DWORD(i32 %134, i32 %135, i32 %136, i32 %139)
  %141 = load i32, i32* %9, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %130, %123
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %8, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %119

147:                                              ; preds = %119
  br label %84

148:                                              ; preds = %99
  %149 = call i32 (...) @rtnl_lock()
  %150 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %151 = call i32 @siena_finish_flush(%struct.efx_nic* %150)
  %152 = call i32 (...) @rtnl_unlock()
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @EFX_ZERO_OWORD(i32 %153)
  store i32 0, i32* %8, align 4
  br label %155

155:                                              ; preds = %184, %148
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %5, align 4
  %158 = icmp ult i32 %156, %157
  br i1 %158, label %159, label %187

159:                                              ; preds = %155
  %160 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %161 = load i32, i32* @FR_BZ_RX_DESC_PTR_TBL, align 4
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %8, align 4
  %164 = add i32 %162, %163
  %165 = call i32 @efx_writeo_table(%struct.efx_nic* %160, i32* %4, i32 %161, i32 %164)
  %166 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %167 = load i32, i32* @FR_BZ_TX_DESC_PTR_TBL, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %8, align 4
  %170 = add i32 %168, %169
  %171 = call i32 @efx_writeo_table(%struct.efx_nic* %166, i32* %4, i32 %167, i32 %170)
  %172 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %173 = load i32, i32* @FR_BZ_EVQ_PTR_TBL, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %8, align 4
  %176 = add i32 %174, %175
  %177 = call i32 @efx_writeo_table(%struct.efx_nic* %172, i32* %4, i32 %173, i32 %176)
  %178 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %179 = load i32, i32* @FR_BZ_TIMER_TBL, align 4
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %8, align 4
  %182 = add i32 %180, %181
  %183 = call i32 @efx_writeo_table(%struct.efx_nic* %178, i32* %4, i32 %179, i32 %182)
  br label %184

184:                                              ; preds = %159
  %185 = load i32, i32* %8, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %155

187:                                              ; preds = %155
  %188 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %189 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %190 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @EFX_VF_BUFTBL_PER_VI, align 4
  %193 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %194 = call i32 @efx_vf_size(%struct.efx_nic* %193)
  %195 = mul i32 %192, %194
  %196 = call i32 @efx_siena_sriov_bufs(%struct.efx_nic* %188, i32 %191, i32* null, i32 %195)
  %197 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %198 = call i32 @efx_vfdi_flush_clear(%struct.siena_vf* %197)
  %199 = load %struct.siena_vf*, %struct.siena_vf** %2, align 8
  %200 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %199, i32 0, i32 1
  store i64 0, i64* %200, align 8
  %201 = load i32, i32* %7, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %187
  br label %206

204:                                              ; preds = %187
  %205 = load i32, i32* @VFDI_RC_ETIMEDOUT, align 4
  br label %206

206:                                              ; preds = %204, %203
  %207 = phi i32 [ 0, %203 ], [ %205, %204 ]
  ret i32 %207
}

declare dso_local i32 @efx_vf_size(%struct.efx_nic*) #1

declare dso_local i32 @MCDI_DECLARE_BUF(i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @siena_prepare_flush(%struct.efx_nic*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @EFX_POPULATE_OWORD_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @efx_writeo(%struct.efx_nic*, i32*, i32) #1

declare dso_local i32 @MCDI_SET_ARRAY_DWORD(i32, i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @efx_mcdi_rpc(%struct.efx_nic*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @MC_CMD_FLUSH_RX_QUEUES_IN_LEN(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @efx_vfdi_flush_wake(%struct.siena_vf*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @siena_finish_flush(%struct.efx_nic*) #1

declare dso_local i32 @EFX_ZERO_OWORD(i32) #1

declare dso_local i32 @efx_writeo_table(%struct.efx_nic*, i32*, i32, i32) #1

declare dso_local i32 @efx_siena_sriov_bufs(%struct.efx_nic*, i32, i32*, i32) #1

declare dso_local i32 @efx_vfdi_flush_clear(%struct.siena_vf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
