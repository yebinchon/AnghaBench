; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_common.c_iavf_debug_aq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_common.c_iavf_debug_aq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_hw = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.iavf_aq_desc = type { i64, %struct.TYPE_7__, i32, i32, i64, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [68 x i8] c"AQ CMD: opcode 0x%04X, flags 0x%04X, datalen 0x%04X, retval 0x%04X\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"\09cookie (h,l) 0x%08X 0x%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\09param (0,1)  0x%08X 0x%08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"\09addr (h,l)   0x%08X 0x%08X\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"AQ CMD Buffer:\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"iavf %02x:%02x.%x: \090x\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_debug_aq(%struct.iavf_hw* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.iavf_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.iavf_aq_desc*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [27 x i8], align 16
  store %struct.iavf_hw* %0, %struct.iavf_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.iavf_aq_desc*
  store %struct.iavf_aq_desc* %16, %struct.iavf_aq_desc** %11, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %12, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.iavf_hw*, %struct.iavf_hw** %6, align 8
  %21 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %5
  br label %139

29:                                               ; preds = %25
  %30 = load %struct.iavf_hw*, %struct.iavf_hw** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.iavf_aq_desc*, %struct.iavf_aq_desc** %11, align 8
  %33 = getelementptr inbounds %struct.iavf_aq_desc, %struct.iavf_aq_desc* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @le16_to_cpu(i64 %34)
  %36 = load %struct.iavf_aq_desc*, %struct.iavf_aq_desc** %11, align 8
  %37 = getelementptr inbounds %struct.iavf_aq_desc, %struct.iavf_aq_desc* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @le16_to_cpu(i64 %38)
  %40 = load %struct.iavf_aq_desc*, %struct.iavf_aq_desc** %11, align 8
  %41 = getelementptr inbounds %struct.iavf_aq_desc, %struct.iavf_aq_desc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @le16_to_cpu(i64 %42)
  %44 = load %struct.iavf_aq_desc*, %struct.iavf_aq_desc** %11, align 8
  %45 = getelementptr inbounds %struct.iavf_aq_desc, %struct.iavf_aq_desc* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @le16_to_cpu(i64 %46)
  %48 = call i32 (%struct.iavf_hw*, i32, i8*, ...) @iavf_debug(%struct.iavf_hw* %30, i32 %31, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %39, i64 %43, i64 %47)
  %49 = load %struct.iavf_hw*, %struct.iavf_hw** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.iavf_aq_desc*, %struct.iavf_aq_desc** %11, align 8
  %52 = getelementptr inbounds %struct.iavf_aq_desc, %struct.iavf_aq_desc* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = load %struct.iavf_aq_desc*, %struct.iavf_aq_desc** %11, align 8
  %56 = getelementptr inbounds %struct.iavf_aq_desc, %struct.iavf_aq_desc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @le32_to_cpu(i32 %57)
  %59 = call i32 (%struct.iavf_hw*, i32, i8*, ...) @iavf_debug(%struct.iavf_hw* %49, i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %58)
  %60 = load %struct.iavf_hw*, %struct.iavf_hw** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.iavf_aq_desc*, %struct.iavf_aq_desc** %11, align 8
  %63 = getelementptr inbounds %struct.iavf_aq_desc, %struct.iavf_aq_desc* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le32_to_cpu(i32 %66)
  %68 = load %struct.iavf_aq_desc*, %struct.iavf_aq_desc** %11, align 8
  %69 = getelementptr inbounds %struct.iavf_aq_desc, %struct.iavf_aq_desc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @le32_to_cpu(i32 %72)
  %74 = call i32 (%struct.iavf_hw*, i32, i8*, ...) @iavf_debug(%struct.iavf_hw* %60, i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %73)
  %75 = load %struct.iavf_hw*, %struct.iavf_hw** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.iavf_aq_desc*, %struct.iavf_aq_desc** %11, align 8
  %78 = getelementptr inbounds %struct.iavf_aq_desc, %struct.iavf_aq_desc* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le32_to_cpu(i32 %81)
  %83 = load %struct.iavf_aq_desc*, %struct.iavf_aq_desc** %11, align 8
  %84 = getelementptr inbounds %struct.iavf_aq_desc, %struct.iavf_aq_desc* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @le32_to_cpu(i32 %87)
  %89 = call i32 (%struct.iavf_hw*, i32, i8*, ...) @iavf_debug(%struct.iavf_hw* %75, i32 %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %82, i32 %88)
  %90 = load i8*, i8** %9, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %139

92:                                               ; preds = %29
  %93 = load %struct.iavf_aq_desc*, %struct.iavf_aq_desc** %11, align 8
  %94 = getelementptr inbounds %struct.iavf_aq_desc, %struct.iavf_aq_desc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %92
  %98 = load %struct.iavf_aq_desc*, %struct.iavf_aq_desc** %11, align 8
  %99 = getelementptr inbounds %struct.iavf_aq_desc, %struct.iavf_aq_desc* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @le16_to_cpu(i64 %100)
  store i64 %101, i64* %13, align 8
  %102 = load %struct.iavf_hw*, %struct.iavf_hw** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (%struct.iavf_hw*, i32, i8*, ...) @iavf_debug(%struct.iavf_hw* %102, i32 %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %13, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %97
  %109 = load i64, i64* %10, align 8
  store i64 %109, i64* %13, align 8
  br label %110

110:                                              ; preds = %108, %97
  %111 = load %struct.iavf_hw*, %struct.iavf_hw** %6, align 8
  %112 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %7, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %138

117:                                              ; preds = %110
  %118 = getelementptr inbounds [27 x i8], [27 x i8]* %14, i64 0, i64 0
  %119 = load %struct.iavf_hw*, %struct.iavf_hw** %6, align 8
  %120 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.iavf_hw*, %struct.iavf_hw** %6, align 8
  %124 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.iavf_hw*, %struct.iavf_hw** %6, align 8
  %128 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @snprintf(i8* %118, i32 27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %122, i32 %126, i32 %130)
  %132 = load i32, i32* @KERN_INFO, align 4
  %133 = getelementptr inbounds [27 x i8], [27 x i8]* %14, i64 0, i64 0
  %134 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %135 = load i32*, i32** %12, align 8
  %136 = load i64, i64* %13, align 8
  %137 = call i32 @print_hex_dump(i32 %132, i8* %133, i32 %134, i32 16, i32 1, i32* %135, i64 %136, i32 0)
  br label %138

138:                                              ; preds = %117, %110
  br label %139

139:                                              ; preds = %28, %138, %92, %29
  ret void
}

declare dso_local i32 @iavf_debug(%struct.iavf_hw*, i32, i8*, ...) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
