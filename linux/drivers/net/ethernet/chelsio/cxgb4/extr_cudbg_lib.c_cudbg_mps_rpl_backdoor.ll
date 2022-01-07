; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_mps_rpl_backdoor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_mps_rpl_backdoor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fw_ldst_mps_rplc = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@MPS_VF_RPLCT_MAP3_A = common dso_local global i32 0, align 4
@MPS_VF_RPLCT_MAP2_A = common dso_local global i32 0, align 4
@MPS_VF_RPLCT_MAP1_A = common dso_local global i32 0, align 4
@MPS_VF_RPLCT_MAP0_A = common dso_local global i32 0, align 4
@MPS_VF_RPLCT_MAP7_A = common dso_local global i32 0, align 4
@MPS_VF_RPLCT_MAP6_A = common dso_local global i32 0, align 4
@MPS_VF_RPLCT_MAP5_A = common dso_local global i32 0, align 4
@MPS_VF_RPLCT_MAP4_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.fw_ldst_mps_rplc*)* @cudbg_mps_rpl_backdoor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cudbg_mps_rpl_backdoor(%struct.adapter* %0, %struct.fw_ldst_mps_rplc* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.fw_ldst_mps_rplc*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.fw_ldst_mps_rplc* %1, %struct.fw_ldst_mps_rplc** %4, align 8
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @is_t5(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = load i32, i32* @MPS_VF_RPLCT_MAP3_A, align 4
  %14 = call i32 @t4_read_reg(%struct.adapter* %12, i32 %13)
  %15 = call i8* @htonl(i32 %14)
  %16 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %17 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %16, i32 0, i32 7
  store i8* %15, i8** %17, align 8
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = load i32, i32* @MPS_VF_RPLCT_MAP2_A, align 4
  %20 = call i32 @t4_read_reg(%struct.adapter* %18, i32 %19)
  %21 = call i8* @htonl(i32 %20)
  %22 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %23 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %22, i32 0, i32 6
  store i8* %21, i8** %23, align 8
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = load i32, i32* @MPS_VF_RPLCT_MAP1_A, align 4
  %26 = call i32 @t4_read_reg(%struct.adapter* %24, i32 %25)
  %27 = call i8* @htonl(i32 %26)
  %28 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %29 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = load i32, i32* @MPS_VF_RPLCT_MAP0_A, align 4
  %32 = call i32 @t4_read_reg(%struct.adapter* %30, i32 %31)
  %33 = call i8* @htonl(i32 %32)
  %34 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %35 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  br label %61

36:                                               ; preds = %2
  %37 = load %struct.adapter*, %struct.adapter** %3, align 8
  %38 = load i32, i32* @MPS_VF_RPLCT_MAP7_A, align 4
  %39 = call i32 @t4_read_reg(%struct.adapter* %37, i32 %38)
  %40 = call i8* @htonl(i32 %39)
  %41 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %42 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load %struct.adapter*, %struct.adapter** %3, align 8
  %44 = load i32, i32* @MPS_VF_RPLCT_MAP6_A, align 4
  %45 = call i32 @t4_read_reg(%struct.adapter* %43, i32 %44)
  %46 = call i8* @htonl(i32 %45)
  %47 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %48 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load %struct.adapter*, %struct.adapter** %3, align 8
  %50 = load i32, i32* @MPS_VF_RPLCT_MAP5_A, align 4
  %51 = call i32 @t4_read_reg(%struct.adapter* %49, i32 %50)
  %52 = call i8* @htonl(i32 %51)
  %53 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %54 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load %struct.adapter*, %struct.adapter** %3, align 8
  %56 = load i32, i32* @MPS_VF_RPLCT_MAP4_A, align 4
  %57 = call i32 @t4_read_reg(%struct.adapter* %55, i32 %56)
  %58 = call i8* @htonl(i32 %57)
  %59 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %60 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %36, %11
  %62 = load %struct.adapter*, %struct.adapter** %3, align 8
  %63 = load i32, i32* @MPS_VF_RPLCT_MAP3_A, align 4
  %64 = call i32 @t4_read_reg(%struct.adapter* %62, i32 %63)
  %65 = call i8* @htonl(i32 %64)
  %66 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %67 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.adapter*, %struct.adapter** %3, align 8
  %69 = load i32, i32* @MPS_VF_RPLCT_MAP2_A, align 4
  %70 = call i32 @t4_read_reg(%struct.adapter* %68, i32 %69)
  %71 = call i8* @htonl(i32 %70)
  %72 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %73 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load %struct.adapter*, %struct.adapter** %3, align 8
  %75 = load i32, i32* @MPS_VF_RPLCT_MAP1_A, align 4
  %76 = call i32 @t4_read_reg(%struct.adapter* %74, i32 %75)
  %77 = call i8* @htonl(i32 %76)
  %78 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %79 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load %struct.adapter*, %struct.adapter** %3, align 8
  %81 = load i32, i32* @MPS_VF_RPLCT_MAP0_A, align 4
  %82 = call i32 @t4_read_reg(%struct.adapter* %80, i32 %81)
  %83 = call i8* @htonl(i32 %82)
  %84 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %85 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  ret void
}

declare dso_local i64 @is_t5(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
