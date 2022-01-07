; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_download_offload_pseudocode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_download_offload_pseudocode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vub300_mmc_host = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.mmc_card* }
%struct.mmc_card = type { i32, i32, %struct.sdio_func**, %struct.TYPE_5__ }
%struct.sdio_func = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"vub_%04X%04X\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"_%04X%04X\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".bin\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"requesting offload firmware %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"vub_default.bin\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"no SDIO offload firmware found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vub300_mmc_host*)* @download_offload_pseudocode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @download_offload_pseudocode(%struct.vub300_mmc_host* %0) #0 {
  %2 = alloca %struct.vub300_mmc_host*, align 8
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sdio_func*, align 8
  store %struct.vub300_mmc_host* %0, %struct.vub300_mmc_host** %2, align 8
  %10 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %11 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.mmc_card*, %struct.mmc_card** %13, align 8
  store %struct.mmc_card* %14, %struct.mmc_card** %3, align 8
  %15 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %16 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  store %struct.firmware* null, %struct.firmware** %5, align 8
  %18 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %19 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %22 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %26 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %20, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %28)
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %60, %1
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %30
  %35 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %36 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %35, i32 0, i32 2
  %37 = load %struct.sdio_func**, %struct.sdio_func*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.sdio_func*, %struct.sdio_func** %37, i64 %39
  %41 = load %struct.sdio_func*, %struct.sdio_func** %40, align 8
  store %struct.sdio_func* %41, %struct.sdio_func** %9, align 8
  %42 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %43 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = sub i64 4, %48
  %50 = trunc i64 %49 to i32
  %51 = load %struct.sdio_func*, %struct.sdio_func** %9, align 8
  %52 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sdio_func*, %struct.sdio_func** %9, align 8
  %55 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %46, i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %34
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %30

63:                                               ; preds = %30
  %64 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %65 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = sub i64 4, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %68, i32 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %75 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %79 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_info(i32* %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %83 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %86 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %85, i32 0, i32 1
  %87 = call i32 @request_firmware(%struct.firmware** %5, i32 %84, i32* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %63
  %91 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %92 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @strncpy(i32 %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %95 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %96 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %99 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %98, i32 0, i32 1
  %100 = call i32 @request_firmware(%struct.firmware** %5, i32 %97, i32* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %90
  %104 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %105 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @strncpy(i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 4)
  br label %114

108:                                              ; preds = %90
  %109 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %110 = load %struct.firmware*, %struct.firmware** %5, align 8
  %111 = call i32 @__download_offload_pseudocode(%struct.vub300_mmc_host* %109, %struct.firmware* %110)
  %112 = load %struct.firmware*, %struct.firmware** %5, align 8
  %113 = call i32 @release_firmware(%struct.firmware* %112)
  br label %114

114:                                              ; preds = %108, %103
  br label %121

115:                                              ; preds = %63
  %116 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %117 = load %struct.firmware*, %struct.firmware** %5, align 8
  %118 = call i32 @__download_offload_pseudocode(%struct.vub300_mmc_host* %116, %struct.firmware* %117)
  %119 = load %struct.firmware*, %struct.firmware** %5, align 8
  %120 = call i32 @release_firmware(%struct.firmware* %119)
  br label %121

121:                                              ; preds = %115, %114
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @__download_offload_pseudocode(%struct.vub300_mmc_host*, %struct.firmware*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
