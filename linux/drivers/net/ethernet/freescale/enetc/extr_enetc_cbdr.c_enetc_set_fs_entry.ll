; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_cbdr.c_enetc_set_fs_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_cbdr.c_enetc_set_fs_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_si = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.enetc_cmd_rfse = type { i32 }
%struct.enetc_cbd = type { i32, i8**, i8**, i8*, i8*, i64 }

@RFSE_ALIGN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"DMA mapping of RFS entry failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"FS entry add failed (%d)!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enetc_set_fs_entry(%struct.enetc_si* %0, %struct.enetc_cmd_rfse* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.enetc_si*, align 8
  %6 = alloca %struct.enetc_cmd_rfse*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.enetc_cbd, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.enetc_si* %0, %struct.enetc_si** %5, align 8
  store %struct.enetc_cmd_rfse* %1, %struct.enetc_cmd_rfse** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = bitcast %struct.enetc_cbd* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 48, i1 false)
  %15 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %8, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %8, i32 0, i32 0
  store i32 4, i32* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i8* @cpu_to_le16(i32 %17)
  %19 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %8, i32 0, i32 4
  store i8* %18, i8** %19, align 8
  %20 = call i8* @cpu_to_le16(i32 4)
  %21 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %8, i32 0, i32 3
  store i8* %20, i8** %21, align 8
  %22 = call i8* @cpu_to_le32(i32 0)
  %23 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %8, i32 0, i32 2
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 3
  store i8* %22, i8** %25, align 8
  %26 = load %struct.enetc_si*, %struct.enetc_si** %5, align 8
  %27 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* @RFSE_ALIGN, align 8
  %31 = add i64 4, %30
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @dma_alloc_coherent(i32* %29, i64 %31, i32* %9, i32 %32)
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %3
  %37 = load %struct.enetc_si*, %struct.enetc_si** %5, align 8
  %38 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %88

44:                                               ; preds = %3
  %45 = load i32, i32* %9, align 4
  %46 = load i64, i64* @RFSE_ALIGN, align 8
  %47 = call i32 @ALIGN(i32 %45, i64 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = load i64, i64* @RFSE_ALIGN, align 8
  %50 = call i8* @PTR_ALIGN(i8* %48, i64 %49)
  store i8* %50, i8** %12, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load %struct.enetc_cmd_rfse*, %struct.enetc_cmd_rfse** %6, align 8
  %53 = call i32 @memcpy(i8* %51, %struct.enetc_cmd_rfse* %52, i32 4)
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @lower_32_bits(i32 %54)
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %8, i32 0, i32 1
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  store i8* %56, i8** %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @upper_32_bits(i32 %60)
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %8, i32 0, i32 1
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  store i8* %62, i8** %65, align 8
  %66 = load %struct.enetc_si*, %struct.enetc_si** %5, align 8
  %67 = call i32 @enetc_send_cmd(%struct.enetc_si* %66, %struct.enetc_cbd* %8)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %44
  %71 = load %struct.enetc_si*, %struct.enetc_si** %5, align 8
  %72 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %13, align 4
  %76 = call i32 (i32*, i8*, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %70, %44
  %78 = load %struct.enetc_si*, %struct.enetc_si** %5, align 8
  %79 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* @RFSE_ALIGN, align 8
  %83 = add i64 4, %82
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @dma_free_coherent(i32* %81, i64 %83, i8* %84, i32 %85)
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %77, %36
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i8* @dma_alloc_coherent(i32*, i64, i32*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, ...) #2

declare dso_local i32 @ALIGN(i32, i64) #2

declare dso_local i8* @PTR_ALIGN(i8*, i64) #2

declare dso_local i32 @memcpy(i8*, %struct.enetc_cmd_rfse*, i32) #2

declare dso_local i32 @lower_32_bits(i32) #2

declare dso_local i32 @upper_32_bits(i32) #2

declare dso_local i32 @enetc_send_cmd(%struct.enetc_si*, %struct.enetc_cbd*) #2

declare dso_local i32 @dma_free_coherent(i32*, i64, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
