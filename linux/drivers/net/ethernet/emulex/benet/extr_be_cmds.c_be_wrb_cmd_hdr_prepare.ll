; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_wrb_cmd_hdr_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_wrb_cmd_hdr_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_cmd_req_hdr = type { i64, i8*, i8*, i8* }
%struct.be_mcc_wrb = type { i32, i32 }
%struct.be_dma_mem = type { i32, i32 }
%struct.be_sge = type { i8*, i8*, i8* }

@MCC_WRB_SGE_CNT_MASK = common dso_local global i32 0, align 4
@MCC_WRB_SGE_CNT_SHIFT = common dso_local global i32 0, align 4
@MCC_WRB_EMBEDDED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_cmd_req_hdr*, i8*, i8*, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*)* @be_wrb_cmd_hdr_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_wrb_cmd_hdr_prepare(%struct.be_cmd_req_hdr* %0, i8* %1, i8* %2, i32 %3, %struct.be_mcc_wrb* %4, %struct.be_dma_mem* %5) #0 {
  %7 = alloca %struct.be_cmd_req_hdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.be_mcc_wrb*, align 8
  %12 = alloca %struct.be_dma_mem*, align 8
  %13 = alloca %struct.be_sge*, align 8
  store %struct.be_cmd_req_hdr* %0, %struct.be_cmd_req_hdr** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.be_mcc_wrb* %4, %struct.be_mcc_wrb** %11, align 8
  store %struct.be_dma_mem* %5, %struct.be_dma_mem** %12, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load %struct.be_cmd_req_hdr*, %struct.be_cmd_req_hdr** %7, align 8
  %16 = getelementptr inbounds %struct.be_cmd_req_hdr, %struct.be_cmd_req_hdr* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.be_cmd_req_hdr*, %struct.be_cmd_req_hdr** %7, align 8
  %19 = getelementptr inbounds %struct.be_cmd_req_hdr, %struct.be_cmd_req_hdr* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = sub i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = load %struct.be_cmd_req_hdr*, %struct.be_cmd_req_hdr** %7, align 8
  %26 = getelementptr inbounds %struct.be_cmd_req_hdr, %struct.be_cmd_req_hdr* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.be_cmd_req_hdr*, %struct.be_cmd_req_hdr** %7, align 8
  %28 = getelementptr inbounds %struct.be_cmd_req_hdr, %struct.be_cmd_req_hdr* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %30 = load %struct.be_cmd_req_hdr*, %struct.be_cmd_req_hdr** %7, align 8
  %31 = ptrtoint %struct.be_cmd_req_hdr* %30 to i32
  %32 = call i32 @fill_wrb_tags(%struct.be_mcc_wrb* %29, i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %35 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.be_dma_mem*, %struct.be_dma_mem** %12, align 8
  %37 = icmp ne %struct.be_dma_mem* %36, null
  br i1 %37, label %38, label %68

38:                                               ; preds = %6
  %39 = load i32, i32* @MCC_WRB_SGE_CNT_MASK, align 4
  %40 = and i32 1, %39
  %41 = load i32, i32* @MCC_WRB_SGE_CNT_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %44 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %48 = call %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb* %47)
  store %struct.be_sge* %48, %struct.be_sge** %13, align 8
  %49 = load %struct.be_dma_mem*, %struct.be_dma_mem** %12, align 8
  %50 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @upper_32_bits(i32 %51)
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = load %struct.be_sge*, %struct.be_sge** %13, align 8
  %55 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.be_dma_mem*, %struct.be_dma_mem** %12, align 8
  %57 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = load %struct.be_sge*, %struct.be_sge** %13, align 8
  %61 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.be_dma_mem*, %struct.be_dma_mem** %12, align 8
  %63 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = load %struct.be_sge*, %struct.be_sge** %13, align 8
  %67 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %74

68:                                               ; preds = %6
  %69 = load i32, i32* @MCC_WRB_EMBEDDED_MASK, align 4
  %70 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %71 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %38
  %75 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %76 = call i32 @be_dws_cpu_to_le(%struct.be_mcc_wrb* %75, i32 8)
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @fill_wrb_tags(%struct.be_mcc_wrb*, i32) #1

declare dso_local %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb*) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @be_dws_cpu_to_le(%struct.be_mcc_wrb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
