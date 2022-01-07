; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_read_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_read_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_hfi_device = type { i32 }
%struct.iface_queue = type { %struct.TYPE_2__, %struct.hfi_queue_header* }
%struct.TYPE_2__ = type { i32* }
%struct.hfi_queue_header = type { i32, i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@HFI_CTRL_TO_HOST_MSG_Q = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@IFACEQ_VAR_HUGE_PKT_SIZE = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_hfi_device*, %struct.iface_queue*, i8*, i32*)* @venus_read_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_read_queue(%struct.venus_hfi_device* %0, %struct.iface_queue* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.venus_hfi_device*, align 8
  %7 = alloca %struct.iface_queue*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hfi_queue_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.venus_hfi_device* %0, %struct.venus_hfi_device** %6, align 8
  store %struct.iface_queue* %1, %struct.iface_queue** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %21 = load %struct.iface_queue*, %struct.iface_queue** %7, align 8
  %22 = getelementptr inbounds %struct.iface_queue, %struct.iface_queue* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %175

29:                                               ; preds = %4
  %30 = load %struct.iface_queue*, %struct.iface_queue** %7, align 8
  %31 = getelementptr inbounds %struct.iface_queue, %struct.iface_queue* %30, i32 0, i32 1
  %32 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %31, align 8
  store %struct.hfi_queue_header* %32, %struct.hfi_queue_header** %10, align 8
  %33 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %34 = icmp ne %struct.hfi_queue_header* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %175

38:                                               ; preds = %29
  %39 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %40 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %15, align 4
  %42 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %43 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %13, align 4
  %45 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %46 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %14, align 4
  %48 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %49 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  %51 = call i32 (...) @rmb()
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* @HFI_CTRL_TO_HOST_MSG_Q, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %38
  store i32 1, i32* %18, align 4
  br label %57

57:                                               ; preds = %56, %38
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i32, i32* %18, align 4
  %63 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %64 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load i32*, i32** %9, align 8
  store i32 0, i32* %65, align 4
  %66 = call i32 (...) @wmb()
  %67 = load i32, i32* @ENODATA, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %175

69:                                               ; preds = %57
  %70 = load %struct.iface_queue*, %struct.iface_queue** %7, align 8
  %71 = getelementptr inbounds %struct.iface_queue, %struct.iface_queue* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = shl i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32* %77, i32** %17, align 8
  %78 = load i32*, i32** %17, align 8
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 2
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %69
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %175

86:                                               ; preds = %69
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %11, align 4
  %91 = shl i32 %90, 2
  %92 = load i32, i32* @IFACEQ_VAR_HUGE_PKT_SIZE, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %133

94:                                               ; preds = %86
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %133

98:                                               ; preds = %94
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i8*, i8** %8, align 8
  %104 = load i32*, i32** %17, align 8
  %105 = load i32, i32* %11, align 4
  %106 = shl i32 %105, 2
  %107 = call i32 @memcpy(i8* %103, i32* %104, i32 %106)
  br label %132

108:                                              ; preds = %98
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %12, align 4
  %111 = sub nsw i32 %110, %109
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = sub nsw i32 %112, %113
  %115 = shl i32 %114, 2
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %20, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = load i32*, i32** %17, align 8
  %119 = load i64, i64* %20, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @memcpy(i8* %117, i32* %118, i32 %120)
  %122 = load i8*, i8** %8, align 8
  %123 = load i64, i64* %20, align 8
  %124 = getelementptr i8, i8* %122, i64 %123
  %125 = load %struct.iface_queue*, %struct.iface_queue** %7, align 8
  %126 = getelementptr inbounds %struct.iface_queue, %struct.iface_queue* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = shl i32 %129, 2
  %131 = call i32 @memcpy(i8* %124, i32* %128, i32 %130)
  br label %132

132:                                              ; preds = %108, %102
  br label %139

133:                                              ; preds = %94, %86
  %134 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %135 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* @EBADMSG, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %19, align 4
  br label %139

139:                                              ; preds = %133, %132
  %140 = call i32 (...) @rmb()
  %141 = load i32, i32* %12, align 4
  %142 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %143 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = call i32 (...) @wmb()
  %145 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %146 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %13, align 4
  %148 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %149 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %14, align 4
  %151 = call i32 (...) @rmb()
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %14, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %139
  %156 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %157 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %156, i32 0, i32 4
  store i32 0, i32* %157, align 8
  br label %162

158:                                              ; preds = %139
  %159 = load i32, i32* %18, align 4
  %160 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %161 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %158, %155
  %163 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %164 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %163, i32 0, i32 5
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 1, i32 0
  %169 = load i32*, i32** %9, align 8
  store i32 %168, i32* %169, align 4
  %170 = call i32 (...) @mb()
  %171 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %6, align 8
  %172 = load i8*, i8** %8, align 8
  %173 = call i32 @venus_dump_packet(%struct.venus_hfi_device* %171, i8* %172)
  %174 = load i32, i32* %19, align 4
  store i32 %174, i32* %5, align 4
  br label %175

175:                                              ; preds = %162, %83, %61, %35, %26
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @venus_dump_packet(%struct.venus_hfi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
