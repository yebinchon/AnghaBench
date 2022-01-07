; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_validate_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_validate_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.hl_cs_parser = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.goya_packet = type { i32 }
%struct.packet_wreg32 = type { i32 }
%struct.packet_lin_dma = type { i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_cs_parser*, i32)* @goya_validate_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_validate_cb(%struct.hl_device* %0, %struct.hl_cs_parser* %1, i32 %2) #0 {
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca %struct.hl_cs_parser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.goya_packet*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store %struct.hl_cs_parser* %1, %struct.hl_cs_parser** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %13 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %128, %3
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %17 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %129

20:                                               ; preds = %14
  %21 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %22 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %25, %26
  %28 = inttoptr i64 %27 to %struct.goya_packet*
  store %struct.goya_packet* %28, %struct.goya_packet** %11, align 8
  %29 = load %struct.goya_packet*, %struct.goya_packet** %11, align 8
  %30 = getelementptr inbounds %struct.goya_packet, %struct.goya_packet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le64_to_cpu(i32 %31)
  %33 = load i32, i32* @PACKET_HEADER_PACKET_ID_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @PACKET_HEADER_PACKET_ID_SHIFT, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %9, align 4
  %37 = load i64*, i64** @goya_packet_sizes, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %47 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %20
  %51 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %52 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i32, i8*, ...) @dev_err(i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %129

58:                                               ; preds = %20
  %59 = load i32, i32* %9, align 4
  switch i32 %59, label %116 [
    i32 129, label %60
    i32 128, label %66
    i32 133, label %73
    i32 137, label %80
    i32 130, label %87
    i32 135, label %94
    i32 134, label %110
    i32 132, label %110
    i32 136, label %110
    i32 131, label %110
  ]

60:                                               ; preds = %58
  %61 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %62 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %63 = load %struct.goya_packet*, %struct.goya_packet** %11, align 8
  %64 = bitcast %struct.goya_packet* %63 to %struct.packet_wreg32*
  %65 = call i32 @goya_validate_wreg32(%struct.hl_device* %61, %struct.hl_cs_parser* %62, %struct.packet_wreg32* %64)
  store i32 %65, i32* %8, align 4
  br label %124

66:                                               ; preds = %58
  %67 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %68 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @dev_err(i32 %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @EPERM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %124

73:                                               ; preds = %58
  %74 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %75 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i8*, ...) @dev_err(i32 %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @EPERM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  br label %124

80:                                               ; preds = %58
  %81 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %82 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @EPERM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %8, align 4
  br label %124

87:                                               ; preds = %58
  %88 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %89 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32, i8*, ...) @dev_err(i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32, i32* @EPERM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  br label %124

94:                                               ; preds = %58
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %99 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %100 = load %struct.goya_packet*, %struct.goya_packet** %11, align 8
  %101 = bitcast %struct.goya_packet* %100 to %struct.packet_lin_dma*
  %102 = call i32 @goya_validate_dma_pkt_mmu(%struct.hl_device* %98, %struct.hl_cs_parser* %99, %struct.packet_lin_dma* %101)
  store i32 %102, i32* %8, align 4
  br label %109

103:                                              ; preds = %94
  %104 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %105 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %106 = load %struct.goya_packet*, %struct.goya_packet** %11, align 8
  %107 = bitcast %struct.goya_packet* %106 to %struct.packet_lin_dma*
  %108 = call i32 @goya_validate_dma_pkt_no_mmu(%struct.hl_device* %104, %struct.hl_cs_parser* %105, %struct.packet_lin_dma* %107)
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %103, %97
  br label %124

110:                                              ; preds = %58, %58, %58, %58
  %111 = load i64, i64* %10, align 8
  %112 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %113 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, %111
  store i64 %115, i64* %113, align 8
  br label %124

116:                                              ; preds = %58
  %117 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %118 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 (i32, i8*, ...) @dev_err(i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %116, %110, %109, %87, %80, %73, %66, %60
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %129

128:                                              ; preds = %124
  br label %14

129:                                              ; preds = %127, %50, %14
  %130 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %131 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, 8
  store i64 %133, i64* %131, align 8
  %134 = load i32, i32* %8, align 4
  ret i32 %134
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @goya_validate_wreg32(%struct.hl_device*, %struct.hl_cs_parser*, %struct.packet_wreg32*) #1

declare dso_local i32 @goya_validate_dma_pkt_mmu(%struct.hl_device*, %struct.hl_cs_parser*, %struct.packet_lin_dma*) #1

declare dso_local i32 @goya_validate_dma_pkt_no_mmu(%struct.hl_device*, %struct.hl_cs_parser*, %struct.packet_lin_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
