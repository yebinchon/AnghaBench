; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp.c_nfp_nsp_command_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp.c_nfp_nsp_command_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_nsp = type { i32, %struct.TYPE_3__, %struct.nfp_cpp* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nfp_cpp = type { i32 }
%struct.nfp_nsp_command_buf_arg = type { i64, i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"NSP: Code 0x%04x with buffer not supported (ABI %hu.%hu)\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NSP_DFLT_BUFFER_CONFIG = common dso_local global i64 0, align 8
@NSP_DFLT_BUFFER_SIZE_MB = common dso_local global i32 0, align 4
@SZ_1M = common dso_local global i32 0, align 4
@NSP_DFLT_BUFFER_SIZE_4KB = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@NSP_DFLT_BUFFER_DMA_CHUNK_ORDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"NSP: default buffer too small for command 0x%04x (%u < %u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_nsp*, %struct.nfp_nsp_command_buf_arg*)* @nfp_nsp_command_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_nsp_command_buf(%struct.nfp_nsp* %0, %struct.nfp_nsp_command_buf_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_nsp*, align 8
  %5 = alloca %struct.nfp_nsp_command_buf_arg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfp_cpp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfp_nsp* %0, %struct.nfp_nsp** %4, align 8
  store %struct.nfp_nsp_command_buf_arg* %1, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %12 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %13 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %12, i32 0, i32 2
  %14 = load %struct.nfp_cpp*, %struct.nfp_cpp** %13, align 8
  store %struct.nfp_cpp* %14, %struct.nfp_cpp** %9, align 8
  %15 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %16 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 13
  br i1 %19, label %20, label %37

20:                                               ; preds = %2
  %21 = load %struct.nfp_cpp*, %struct.nfp_cpp** %9, align 8
  %22 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %23 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %27 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %31 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @nfp_err(%struct.nfp_cpp* %21, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %29, i32 %33)
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %134

37:                                               ; preds = %2
  %38 = load %struct.nfp_cpp*, %struct.nfp_cpp** %9, align 8
  %39 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %40 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @nfp_resource_cpp_id(i32 %41)
  %43 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %44 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @nfp_resource_address(i32 %45)
  %47 = load i64, i64* @NSP_DFLT_BUFFER_CONFIG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @nfp_cpp_readq(%struct.nfp_cpp* %38, i32 %42, i64 %48, i32* %10)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %3, align 4
  br label %134

54:                                               ; preds = %37
  %55 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %56 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %54
  %60 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %61 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %66 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %69 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %64
  %73 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %74 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %77 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %80 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %78, %81
  %83 = call i32 @memset(i64 %75, i32 0, i64 %82)
  br label %84

84:                                               ; preds = %72, %64, %59, %54
  %85 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %86 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %89 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @max(i64 %87, i64 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* @NSP_DFLT_BUFFER_SIZE_MB, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @FIELD_GET(i32 %92, i32 %93)
  %95 = load i32, i32* @SZ_1M, align 4
  %96 = mul i32 %94, %95
  %97 = load i32, i32* @NSP_DFLT_BUFFER_SIZE_4KB, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @FIELD_GET(i32 %97, i32 %98)
  %100 = load i32, i32* @SZ_4K, align 4
  %101 = mul i32 %99, %100
  %102 = add i32 %96, %101
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* @NSP_DFLT_BUFFER_DMA_CHUNK_ORDER, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @FIELD_GET(i32 %103, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp uge i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %84
  %110 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %111 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %112 = call i32 @nfp_nsp_command_buf_def(%struct.nfp_nsp* %110, %struct.nfp_nsp_command_buf_arg* %111)
  store i32 %112, i32* %3, align 4
  br label %134

113:                                              ; preds = %84
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %113
  %117 = load %struct.nfp_cpp*, %struct.nfp_cpp** %9, align 8
  %118 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %119 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @nfp_err(%struct.nfp_cpp* %117, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32 %122, i32 %123)
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %134

127:                                              ; preds = %113
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %130 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @nfp_nsp_command_buf_dma(%struct.nfp_nsp* %129, %struct.nfp_nsp_command_buf_arg* %130, i32 %131, i32 %132)
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %128, %116, %109, %52, %20
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @nfp_err(%struct.nfp_cpp*, i8*, i32, i32, i32) #1

declare dso_local i32 @nfp_cpp_readq(%struct.nfp_cpp*, i32, i64, i32*) #1

declare dso_local i32 @nfp_resource_cpp_id(i32) #1

declare dso_local i64 @nfp_resource_address(i32) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @max(i64, i64) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @nfp_nsp_command_buf_def(%struct.nfp_nsp*, %struct.nfp_nsp_command_buf_arg*) #1

declare dso_local i32 @nfp_nsp_command_buf_dma(%struct.nfp_nsp*, %struct.nfp_nsp_command_buf_arg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
