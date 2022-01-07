; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_patch_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_patch_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.hl_cs_parser = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.goya_packet = type { i32 }
%struct.packet_lin_dma = type { i32 }
%struct.packet_wreg32 = type { i32 }

@PACKET_HEADER_PACKET_ID_MASK = common dso_local global i32 0, align 4
@PACKET_HEADER_PACKET_ID_SHIFT = common dso_local global i32 0, align 4
@goya_packet_sizes = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"packet 0x%x is out of CB boundary\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"User not allowed to use WREG_BULK\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"User not allowed to use MSG_PROT\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"User not allowed to use CP_DMA\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"User not allowed to use STOP\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Invalid packet header 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_cs_parser*)* @goya_patch_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_patch_cb(%struct.hl_device* %0, %struct.hl_cs_parser* %1) #0 {
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.hl_cs_parser*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.goya_packet*, align 8
  %12 = alloca %struct.goya_packet*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  store %struct.hl_cs_parser* %1, %struct.hl_cs_parser** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %139, %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %4, align 8
  %16 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %140

19:                                               ; preds = %13
  store i64 0, i64* %10, align 8
  %20 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %4, align 8
  %21 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %24, %25
  %27 = inttoptr i64 %26 to %struct.goya_packet*
  store %struct.goya_packet* %27, %struct.goya_packet** %11, align 8
  %28 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %4, align 8
  %29 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %32, %33
  %35 = inttoptr i64 %34 to %struct.goya_packet*
  store %struct.goya_packet* %35, %struct.goya_packet** %12, align 8
  %36 = load %struct.goya_packet*, %struct.goya_packet** %11, align 8
  %37 = getelementptr inbounds %struct.goya_packet, %struct.goya_packet* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le64_to_cpu(i32 %38)
  %40 = load i32, i32* @PACKET_HEADER_PACKET_ID_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @PACKET_HEADER_PACKET_ID_SHIFT, align 4
  %43 = ashr i32 %41, %42
  store i32 %43, i32* %8, align 4
  %44 = load i64*, i64** @goya_packet_sizes, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %5, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %4, align 8
  %54 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %19
  %58 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %59 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (i32, i8*, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %140

65:                                               ; preds = %19
  %66 = load i32, i32* %8, align 4
  switch i32 %66, label %127 [
    i32 135, label %67
    i32 129, label %78
    i32 128, label %91
    i32 133, label %98
    i32 137, label %105
    i32 130, label %112
    i32 134, label %119
    i32 132, label %119
    i32 136, label %119
    i32 131, label %119
  ]

67:                                               ; preds = %65
  %68 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %69 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %4, align 8
  %70 = load %struct.goya_packet*, %struct.goya_packet** %11, align 8
  %71 = bitcast %struct.goya_packet* %70 to %struct.packet_lin_dma*
  %72 = load %struct.goya_packet*, %struct.goya_packet** %12, align 8
  %73 = bitcast %struct.goya_packet* %72 to %struct.packet_lin_dma*
  %74 = call i32 @goya_patch_dma_packet(%struct.hl_device* %68, %struct.hl_cs_parser* %69, %struct.packet_lin_dma* %71, %struct.packet_lin_dma* %73, i64* %10)
  store i32 %74, i32* %7, align 4
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %6, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %6, align 8
  br label %135

78:                                               ; preds = %65
  %79 = load %struct.goya_packet*, %struct.goya_packet** %12, align 8
  %80 = load %struct.goya_packet*, %struct.goya_packet** %11, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @memcpy(%struct.goya_packet* %79, %struct.goya_packet* %80, i64 %81)
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %6, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %6, align 8
  %86 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %87 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %4, align 8
  %88 = load %struct.goya_packet*, %struct.goya_packet** %12, align 8
  %89 = bitcast %struct.goya_packet* %88 to %struct.packet_wreg32*
  %90 = call i32 @goya_validate_wreg32(%struct.hl_device* %86, %struct.hl_cs_parser* %87, %struct.packet_wreg32* %89)
  store i32 %90, i32* %7, align 4
  br label %135

91:                                               ; preds = %65
  %92 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %93 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, ...) @dev_err(i32 %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* @EPERM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %7, align 4
  br label %135

98:                                               ; preds = %65
  %99 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %100 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @dev_err(i32 %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @EPERM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %7, align 4
  br label %135

105:                                              ; preds = %65
  %106 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %107 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, ...) @dev_err(i32 %108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %110 = load i32, i32* @EPERM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %7, align 4
  br label %135

112:                                              ; preds = %65
  %113 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %114 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @dev_err(i32 %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i32, i32* @EPERM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %7, align 4
  br label %135

119:                                              ; preds = %65, %65, %65, %65
  %120 = load %struct.goya_packet*, %struct.goya_packet** %12, align 8
  %121 = load %struct.goya_packet*, %struct.goya_packet** %11, align 8
  %122 = load i64, i64* %9, align 8
  %123 = call i32 @memcpy(%struct.goya_packet* %120, %struct.goya_packet* %121, i64 %122)
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* %6, align 8
  %126 = add nsw i64 %125, %124
  store i64 %126, i64* %6, align 8
  br label %135

127:                                              ; preds = %65
  %128 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %129 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 (i32, i8*, ...) @dev_err(i32 %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %127, %119, %112, %105, %98, %91, %78, %67
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %140

139:                                              ; preds = %135
  br label %13

140:                                              ; preds = %138, %57, %13
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @goya_patch_dma_packet(%struct.hl_device*, %struct.hl_cs_parser*, %struct.packet_lin_dma*, %struct.packet_lin_dma*, i64*) #1

declare dso_local i32 @memcpy(%struct.goya_packet*, %struct.goya_packet*, i64) #1

declare dso_local i32 @goya_validate_wreg32(%struct.hl_device*, %struct.hl_cs_parser*, %struct.packet_wreg32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
