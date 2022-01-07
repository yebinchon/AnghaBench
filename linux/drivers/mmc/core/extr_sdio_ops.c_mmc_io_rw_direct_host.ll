; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_ops.c_mmc_io_rw_direct_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_ops.c_mmc_io_rw_direct_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_command = type { i32, i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SD_IO_RW_DIRECT = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R5 = common dso_local global i32 0, align 4
@MMC_RSP_R5 = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@R5_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@R5_FUNCTION_NUMBER = common dso_local global i32 0, align 4
@R5_OUT_OF_RANGE = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32, i32, i32, i32, i32*)* @mmc_io_rw_direct_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_io_rw_direct_host(%struct.mmc_host* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmc_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.mmc_command, align 8
  %15 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = bitcast %struct.mmc_command* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 24, i1 false)
  %17 = load i32, i32* %10, align 4
  %18 = icmp ugt i32 %17, 7
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %138

22:                                               ; preds = %6
  %23 = load i32, i32* %11, align 4
  %24 = and i32 %23, -131072
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %138

29:                                               ; preds = %22
  %30 = load i32, i32* @SD_IO_RW_DIRECT, align 4
  %31 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 3
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 -2147483648, i32 0
  %36 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = shl i32 %37, 28
  %39 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load i32*, i32** %13, align 8
  %46 = icmp ne i32* %45, null
  br label %47

47:                                               ; preds = %44, %29
  %48 = phi i1 [ false, %29 ], [ %46, %44 ]
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 134217728, i32 0
  %51 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* %11, align 4
  %55 = shl i32 %54, 9
  %56 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %12, align 4
  %60 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* @MMC_RSP_SPI_R5, align 4
  %64 = load i32, i32* @MMC_RSP_R5, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @MMC_CMD_AC, align 4
  %67 = or i32 %65, %66
  %68 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %70 = call i32 @mmc_wait_for_cmd(%struct.mmc_host* %69, %struct.mmc_command* %14, i32 0)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %47
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %7, align 4
  br label %138

75:                                               ; preds = %47
  %76 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %77 = call i64 @mmc_host_is_spi(%struct.mmc_host* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %114

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @R5_ERROR, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %7, align 4
  br label %138

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @R5_FUNCTION_NUMBER, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %7, align 4
  br label %138

102:                                              ; preds = %91
  %103 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @R5_OUT_OF_RANGE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  %111 = load i32, i32* @ERANGE, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %7, align 4
  br label %138

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %113, %79
  %115 = load i32*, i32** %13, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %137

117:                                              ; preds = %114
  %118 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %119 = call i64 @mmc_host_is_spi(%struct.mmc_host* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = ashr i32 %125, 8
  %127 = and i32 %126, 255
  %128 = load i32*, i32** %13, align 8
  store i32 %127, i32* %128, align 4
  br label %136

129:                                              ; preds = %117
  %130 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 255
  %135 = load i32*, i32** %13, align 8
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %129, %121
  br label %137

137:                                              ; preds = %136, %114
  store i32 0, i32* %7, align 4
  br label %138

138:                                              ; preds = %137, %110, %99, %88, %73, %26, %19
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mmc_wait_for_cmd(%struct.mmc_host*, %struct.mmc_command*, i32) #2

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
