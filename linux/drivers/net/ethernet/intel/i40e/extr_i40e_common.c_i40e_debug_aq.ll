; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_debug_aq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_debug_aq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_7__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@I40E_DEBUG_AQ_DESCRIPTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"AQ CMD: opcode 0x%04X, flags 0x%04X, datalen 0x%04X, retval 0x%04X\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"\09cookie (h,l) 0x%08X 0x%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\09param (0,1)  0x%08X 0x%08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"\09addr (h,l)   0x%08X 0x%08X\0A\00", align 1
@I40E_DEBUG_AQ_DESC_BUFFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"AQ CMD Buffer:\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"i40e %02x:%02x.%x: \090x\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_debug_aq(%struct.i40e_hw* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.i40e_aq_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [27 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.i40e_aq_desc*
  store %struct.i40e_aq_desc* %17, %struct.i40e_aq_desc** %11, align 8
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %19 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %15, align 8
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %5
  br label %147

31:                                               ; preds = %27
  %32 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %33 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @le16_to_cpu(i32 %34)
  store i64 %35, i64* %14, align 8
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @I40E_DEBUG_AQ_DESCRIPTOR, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %41 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @le16_to_cpu(i32 %42)
  %44 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %45 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @le16_to_cpu(i32 %46)
  %48 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %49 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @le16_to_cpu(i32 %50)
  %52 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %53 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @le16_to_cpu(i32 %54)
  %56 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %36, i32 %39, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %47, i64 %51, i64 %55)
  %57 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @I40E_DEBUG_AQ_DESCRIPTOR, align 4
  %60 = and i32 %58, %59
  %61 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %62 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le32_to_cpu(i32 %63)
  %65 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %66 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  %69 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %57, i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %68)
  %70 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @I40E_DEBUG_AQ_DESCRIPTOR, align 4
  %73 = and i32 %71, %72
  %74 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %75 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  %80 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %81 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le32_to_cpu(i32 %84)
  %86 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %70, i32 %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %85)
  %87 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @I40E_DEBUG_AQ_DESCRIPTOR, align 4
  %90 = and i32 %88, %89
  %91 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %92 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le32_to_cpu(i32 %95)
  %97 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %98 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le32_to_cpu(i32 %101)
  %103 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %87, i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %96, i32 %102)
  %104 = load i8*, i8** %9, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %147

106:                                              ; preds = %31
  %107 = load i64, i64* %10, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %147

109:                                              ; preds = %106
  %110 = load i64, i64* %14, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %147

112:                                              ; preds = %109
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @I40E_DEBUG_AQ_DESC_BUFFER, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %147

117:                                              ; preds = %112
  %118 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %118, i32 %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* %14, align 8
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i64, i64* %10, align 8
  store i64 %125, i64* %14, align 8
  br label %126

126:                                              ; preds = %124, %117
  %127 = getelementptr inbounds [27 x i8], [27 x i8]* %13, i64 0, i64 0
  %128 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %129 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %133 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %137 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @snprintf(i8* %127, i32 27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %131, i32 %135, i32 %139)
  %141 = load i32, i32* @KERN_INFO, align 4
  %142 = getelementptr inbounds [27 x i8], [27 x i8]* %13, i64 0, i64 0
  %143 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %144 = load i32*, i32** %15, align 8
  %145 = load i64, i64* %14, align 8
  %146 = call i32 @print_hex_dump(i32 %141, i8* %142, i32 %143, i32 16, i32 1, i32* %144, i64 %145, i32 0)
  br label %147

147:                                              ; preds = %30, %126, %112, %109, %106, %31
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
