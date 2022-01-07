; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_send_bus_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_send_bus_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.mmc_data*, %struct.mmc_command* }
%struct.mmc_data = type { i32, i32, i32, i32, %struct.scatterlist*, i32 }
%struct.scatterlist = type { i32 }
%struct.mmc_command = type { i32, i32, i32, i64 }

@mmc_send_bus_test.testdata_8bit = internal global [8 x i32] [i32 85, i32 170, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@mmc_send_bus_test.testdata_4bit = internal global [4 x i32] [i32 90, i32 0, i32 0, i32 0], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: Invalid bus_width %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MMC_BUS_TEST_W = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R1 = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_ADTC = common dso_local global i32 0, align 4
@MMC_BUS_TEST_R = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, %struct.mmc_host*, i32, i32)* @mmc_send_bus_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_send_bus_test(%struct.mmc_card* %0, %struct.mmc_host* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_card*, align 8
  %7 = alloca %struct.mmc_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mmc_request, align 8
  %11 = alloca %struct.mmc_command, align 8
  %12 = alloca %struct.mmc_data, align 8
  %13 = alloca %struct.scatterlist, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %6, align 8
  store %struct.mmc_host* %1, %struct.mmc_host** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = bitcast %struct.mmc_request* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = bitcast %struct.mmc_command* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 24, i1 false)
  %20 = bitcast %struct.mmc_data* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 32, i1 false)
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32* @kmalloc(i32 %21, i32 %22)
  store i32* %23, i32** %14, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %138

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @mmc_send_bus_test.testdata_8bit, i64 0, i64 0), i32** %15, align 8
  br label %47

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @mmc_send_bus_test.testdata_4bit, i64 0, i64 0), i32** %15, align 8
  br label %46

37:                                               ; preds = %33
  %38 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %39 = call i32 @mmc_hostname(%struct.mmc_host* %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @kfree(i32* %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %138

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @MMC_BUS_TEST_W, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32*, i32** %14, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @memcpy(i32* %52, i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %47
  %57 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %10, i32 0, i32 1
  store %struct.mmc_command* %11, %struct.mmc_command** %57, align 8
  %58 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %10, i32 0, i32 0
  store %struct.mmc_data* %12, %struct.mmc_data** %58, align 8
  %59 = load i32, i32* %8, align 4
  %60 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @MMC_RSP_SPI_R1, align 4
  %63 = load i32, i32* @MMC_RSP_R1, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @MMC_CMD_ADTC, align 4
  %66 = or i32 %64, %65
  %67 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %9, align 4
  %69 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %12, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %12, i32 0, i32 1
  store i32 1, i32* %70, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @MMC_BUS_TEST_R, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %56
  %75 = load i32, i32* @MMC_DATA_READ, align 4
  %76 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %12, i32 0, i32 5
  store i32 %75, i32* %76, align 8
  br label %80

77:                                               ; preds = %56
  %78 = load i32, i32* @MMC_DATA_WRITE, align 4
  %79 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %12, i32 0, i32 5
  store i32 %78, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %74
  %81 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %12, i32 0, i32 4
  store %struct.scatterlist* %13, %struct.scatterlist** %81, align 8
  %82 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %12, i32 0, i32 2
  store i32 1, i32* %82, align 8
  %83 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %84 = call i32 @mmc_set_data_timeout(%struct.mmc_data* %12, %struct.mmc_card* %83)
  %85 = load i32*, i32** %14, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @sg_init_one(%struct.scatterlist* %13, i32* %85, i32 %86)
  %88 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %89 = call i32 @mmc_wait_for_req(%struct.mmc_host* %88, %struct.mmc_request* %10)
  store i32 0, i32* %17, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @MMC_BUS_TEST_R, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %120

93:                                               ; preds = %80
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %116, %93
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sdiv i32 %96, 4
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %94
  %100 = load i32*, i32** %15, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %14, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = xor i32 %104, %109
  %111 = icmp ne i32 %110, 255
  br i1 %111, label %112, label %115

112:                                              ; preds = %99
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %17, align 4
  br label %119

115:                                              ; preds = %99
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %16, align 4
  br label %94

119:                                              ; preds = %112, %94
  br label %120

120:                                              ; preds = %119, %80
  %121 = load i32*, i32** %14, align 8
  %122 = call i32 @kfree(i32* %121)
  %123 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %5, align 4
  br label %138

129:                                              ; preds = %120
  %130 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %12, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %12, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %5, align 4
  br label %138

136:                                              ; preds = %129
  %137 = load i32, i32* %17, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %136, %133, %126, %37, %26
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @kmalloc(i32, i32) #2

declare dso_local i32 @pr_err(i8*, i32, i32) #2

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @mmc_set_data_timeout(%struct.mmc_data*, %struct.mmc_card*) #2

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #2

declare dso_local i32 @mmc_wait_for_req(%struct.mmc_host*, %struct.mmc_request*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
