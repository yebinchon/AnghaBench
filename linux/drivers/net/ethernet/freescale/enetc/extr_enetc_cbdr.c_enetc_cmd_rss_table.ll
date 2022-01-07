; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_cbdr.c_enetc_cmd_rss_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_cbdr.c_enetc_cmd_rss_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_si = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.enetc_cbd = type { i32, i32, i8**, i32 }

@RSSE_ALIGN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"DMA mapping of RSS table failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"RSS cmd failed (%d)!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enetc_si*, i64*, i32, i32)* @enetc_cmd_rss_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_cmd_rss_table(%struct.enetc_si* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.enetc_si*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.enetc_cbd, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.enetc_si* %0, %struct.enetc_si** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = bitcast %struct.enetc_cbd* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @RSSE_ALIGN, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %139

24:                                               ; preds = %4
  %25 = load %struct.enetc_si*, %struct.enetc_si** %6, align 8
  %26 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @RSSE_ALIGN, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i64* @dma_alloc_coherent(i32* %28, i32 %31, i32* %11, i32 %32)
  store i64* %33, i64** %13, align 8
  %34 = load i64*, i64** %13, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %24
  %37 = load %struct.enetc_si*, %struct.enetc_si** %6, align 8
  %38 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %139

44:                                               ; preds = %24
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @RSSE_ALIGN, align 4
  %47 = call i32 @ALIGN(i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i64*, i64** %13, align 8
  %49 = load i32, i32* @RSSE_ALIGN, align 4
  %50 = call i64* @PTR_ALIGN(i64* %48, i32 %49)
  store i64* %50, i64** %14, align 8
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %72, label %53

53:                                               ; preds = %44
  store i32 0, i32* %16, align 4
  br label %54

54:                                               ; preds = %68, %53
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = load i64*, i64** %7, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %14, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 %63, i64* %67, align 8
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %16, align 4
  br label %54

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71, %44
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 2, i32 1
  %77 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %10, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %10, i32 0, i32 1
  store i32 3, i32* %78, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @cpu_to_le16(i32 %79)
  %81 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %10, i32 0, i32 3
  store i32 %80, i32* %81, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @lower_32_bits(i32 %82)
  %84 = call i8* @cpu_to_le32(i32 %83)
  %85 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %10, i32 0, i32 2
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  store i8* %84, i8** %87, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @upper_32_bits(i32 %88)
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %10, i32 0, i32 2
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 1
  store i8* %90, i8** %93, align 8
  %94 = load %struct.enetc_si*, %struct.enetc_si** %6, align 8
  %95 = call i32 @enetc_send_cmd(%struct.enetc_si* %94, %struct.enetc_cbd* %10)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %72
  %99 = load %struct.enetc_si*, %struct.enetc_si** %6, align 8
  %100 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %15, align 4
  %104 = call i32 (i32*, i8*, ...) @dev_err(i32* %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %98, %72
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %105
  store i32 0, i32* %16, align 4
  br label %109

109:                                              ; preds = %123, %108
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %109
  %114 = load i64*, i64** %14, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** %7, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  store i64 %118, i64* %122, align 8
  br label %123

123:                                              ; preds = %113
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %16, align 4
  br label %109

126:                                              ; preds = %109
  br label %127

127:                                              ; preds = %126, %105
  %128 = load %struct.enetc_si*, %struct.enetc_si** %6, align 8
  %129 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @RSSE_ALIGN, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i64*, i64** %13, align 8
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @dma_free_coherent(i32* %131, i32 %134, i64* %135, i32 %136)
  %138 = load i32, i32* %15, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %127, %36, %21
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64* @dma_alloc_coherent(i32*, i32, i32*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, ...) #2

declare dso_local i32 @ALIGN(i32, i32) #2

declare dso_local i64* @PTR_ALIGN(i64*, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @lower_32_bits(i32) #2

declare dso_local i32 @upper_32_bits(i32) #2

declare dso_local i32 @enetc_send_cmd(%struct.enetc_si*, %struct.enetc_cbd*) #2

declare dso_local i32 @dma_free_coherent(i32*, i32, i64*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
