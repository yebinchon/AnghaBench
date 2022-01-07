; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_process_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_process_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typhoon = type { i32, %struct.TYPE_2__, %struct.typhoon_indexes* }
%struct.TYPE_2__ = type { %struct.resp_desc* }
%struct.typhoon_indexes = type { i32, i32 }
%struct.resp_desc = type { i32, i64, i64, i32, i32, i32, i64 }

@TYPHOON_RESP_ERROR = common dso_local global i32 0, align 4
@RESPONSE_RING_SIZE = common dso_local global i64 0, align 8
@TYPHOON_CMD_READ_MEDIA_STATUS = common dso_local global i64 0, align 8
@TYPHOON_CMD_HELLO_RESP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"dumping unexpected response 0x%04x:%d:0x%02x:0x%04x:%08x:%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typhoon*, i32, %struct.resp_desc*)* @typhoon_process_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typhoon_process_response(%struct.typhoon* %0, i32 %1, %struct.resp_desc* %2) #0 {
  %4 = alloca %struct.typhoon*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resp_desc*, align 8
  %7 = alloca %struct.typhoon_indexes*, align 8
  %8 = alloca %struct.resp_desc*, align 8
  %9 = alloca %struct.resp_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.typhoon* %0, %struct.typhoon** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.resp_desc* %2, %struct.resp_desc** %6, align 8
  %15 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %16 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %15, i32 0, i32 2
  %17 = load %struct.typhoon_indexes*, %struct.typhoon_indexes** %16, align 8
  store %struct.typhoon_indexes* %17, %struct.typhoon_indexes** %7, align 8
  %18 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %19 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.resp_desc*, %struct.resp_desc** %20, align 8
  store %struct.resp_desc* %21, %struct.resp_desc** %9, align 8
  %22 = load %struct.typhoon_indexes*, %struct.typhoon_indexes** %7, align 8
  %23 = getelementptr inbounds %struct.typhoon_indexes, %struct.typhoon_indexes* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  store i64 %25, i64* %13, align 8
  %26 = load %struct.typhoon_indexes*, %struct.typhoon_indexes** %7, align 8
  %27 = getelementptr inbounds %struct.typhoon_indexes, %struct.typhoon_indexes* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le32_to_cpu(i32 %28)
  store i64 %29, i64* %14, align 8
  br label %30

30:                                               ; preds = %153, %3
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %14, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %156

34:                                               ; preds = %30
  %35 = load %struct.resp_desc*, %struct.resp_desc** %9, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds %struct.resp_desc, %struct.resp_desc* %35, i64 %36
  store %struct.resp_desc* %37, %struct.resp_desc** %8, align 8
  %38 = load %struct.resp_desc*, %struct.resp_desc** %8, align 8
  %39 = getelementptr inbounds %struct.resp_desc, %struct.resp_desc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  %42 = load %struct.resp_desc*, %struct.resp_desc** %6, align 8
  %43 = icmp ne %struct.resp_desc* %42, null
  br i1 %43, label %44, label %102

44:                                               ; preds = %34
  %45 = load %struct.resp_desc*, %struct.resp_desc** %8, align 8
  %46 = getelementptr inbounds %struct.resp_desc, %struct.resp_desc* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %102

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @TYPHOON_RESP_ERROR, align 4
  %55 = load %struct.resp_desc*, %struct.resp_desc** %6, align 8
  %56 = getelementptr inbounds %struct.resp_desc, %struct.resp_desc* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  br label %153

57:                                               ; preds = %49
  store i32 0, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 48
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %11, align 4
  %62 = load i64, i64* %13, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = load i64, i64* @RESPONSE_RING_SIZE, align 8
  %67 = icmp sgt i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %57
  %72 = load i64, i64* %13, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = load i64, i64* @RESPONSE_RING_SIZE, align 8
  %77 = sub nsw i64 %75, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %12, align 4
  %79 = load i64, i64* @RESPONSE_RING_SIZE, align 8
  %80 = load i64, i64* %13, align 8
  %81 = sub nsw i64 %79, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %71, %57
  %84 = load %struct.resp_desc*, %struct.resp_desc** %6, align 8
  %85 = load %struct.resp_desc*, %struct.resp_desc** %8, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @memcpy(%struct.resp_desc* %84, %struct.resp_desc* %85, i32 %86)
  %88 = load i32, i32* %12, align 4
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %83
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = udiv i64 %93, 48
  %95 = load %struct.resp_desc*, %struct.resp_desc** %6, align 8
  %96 = getelementptr inbounds %struct.resp_desc, %struct.resp_desc* %95, i64 %94
  store %struct.resp_desc* %96, %struct.resp_desc** %6, align 8
  %97 = load %struct.resp_desc*, %struct.resp_desc** %6, align 8
  %98 = load %struct.resp_desc*, %struct.resp_desc** %9, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @memcpy(%struct.resp_desc* %97, %struct.resp_desc* %98, i32 %99)
  br label %101

101:                                              ; preds = %91, %83
  store %struct.resp_desc* null, %struct.resp_desc** %6, align 8
  br label %152

102:                                              ; preds = %44, %34
  %103 = load %struct.resp_desc*, %struct.resp_desc** %8, align 8
  %104 = getelementptr inbounds %struct.resp_desc, %struct.resp_desc* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TYPHOON_CMD_READ_MEDIA_STATUS, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %110 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.resp_desc*, %struct.resp_desc** %8, align 8
  %113 = call i32 @typhoon_media_status(i32 %111, %struct.resp_desc* %112)
  br label %151

114:                                              ; preds = %102
  %115 = load %struct.resp_desc*, %struct.resp_desc** %8, align 8
  %116 = getelementptr inbounds %struct.resp_desc, %struct.resp_desc* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @TYPHOON_CMD_HELLO_RESP, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %122 = call i32 @typhoon_hello(%struct.typhoon* %121)
  br label %150

123:                                              ; preds = %114
  %124 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %125 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.resp_desc*, %struct.resp_desc** %8, align 8
  %128 = getelementptr inbounds %struct.resp_desc, %struct.resp_desc* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @le16_to_cpu(i64 %129)
  %131 = load %struct.resp_desc*, %struct.resp_desc** %8, align 8
  %132 = getelementptr inbounds %struct.resp_desc, %struct.resp_desc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.resp_desc*, %struct.resp_desc** %8, align 8
  %135 = getelementptr inbounds %struct.resp_desc, %struct.resp_desc* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.resp_desc*, %struct.resp_desc** %8, align 8
  %138 = getelementptr inbounds %struct.resp_desc, %struct.resp_desc* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @le16_to_cpu(i64 %139)
  %141 = load %struct.resp_desc*, %struct.resp_desc** %8, align 8
  %142 = getelementptr inbounds %struct.resp_desc, %struct.resp_desc* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @le32_to_cpu(i32 %143)
  %145 = load %struct.resp_desc*, %struct.resp_desc** %8, align 8
  %146 = getelementptr inbounds %struct.resp_desc, %struct.resp_desc* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @le32_to_cpu(i32 %147)
  %149 = call i32 @netdev_err(i32 %126, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %130, i32 %133, i32 %136, i32 %140, i64 %144, i64 %148)
  br label %150

150:                                              ; preds = %123, %120
  br label %151

151:                                              ; preds = %150, %108
  br label %152

152:                                              ; preds = %151, %101
  br label %153

153:                                              ; preds = %152, %53
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @typhoon_inc_resp_index(i64* %13, i32 %154)
  br label %30

156:                                              ; preds = %30
  %157 = load i64, i64* %13, align 8
  %158 = call i32 @cpu_to_le32(i64 %157)
  %159 = load %struct.typhoon_indexes*, %struct.typhoon_indexes** %7, align 8
  %160 = getelementptr inbounds %struct.typhoon_indexes, %struct.typhoon_indexes* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  %161 = call i32 (...) @wmb()
  %162 = load %struct.resp_desc*, %struct.resp_desc** %6, align 8
  %163 = icmp eq %struct.resp_desc* %162, null
  %164 = zext i1 %163 to i32
  ret i32 %164
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(%struct.resp_desc*, %struct.resp_desc*, i32) #1

declare dso_local i32 @typhoon_media_status(i32, %struct.resp_desc*) #1

declare dso_local i32 @typhoon_hello(%struct.typhoon*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @typhoon_inc_resp_index(i64*, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
