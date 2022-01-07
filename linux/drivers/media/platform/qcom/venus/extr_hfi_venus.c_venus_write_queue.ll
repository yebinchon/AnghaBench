; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_write_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_write_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_hfi_device = type { i32 }
%struct.iface_queue = type { %struct.TYPE_2__, %struct.hfi_queue_header* }
%struct.TYPE_2__ = type { i32* }
%struct.hfi_queue_header = type { i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_hfi_device*, %struct.iface_queue*, i8*, i32*)* @venus_write_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_write_queue(%struct.venus_hfi_device* %0, %struct.iface_queue* %1, i8* %2, i32* %3) #0 {
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
  %18 = alloca i64, align 8
  store %struct.venus_hfi_device* %0, %struct.venus_hfi_device** %6, align 8
  store %struct.iface_queue* %1, %struct.iface_queue** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.iface_queue*, %struct.iface_queue** %7, align 8
  %20 = getelementptr inbounds %struct.iface_queue, %struct.iface_queue* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %144

27:                                               ; preds = %4
  %28 = load %struct.iface_queue*, %struct.iface_queue** %7, align 8
  %29 = getelementptr inbounds %struct.iface_queue, %struct.iface_queue* %28, i32 0, i32 1
  %30 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %29, align 8
  store %struct.hfi_queue_header* %30, %struct.hfi_queue_header** %10, align 8
  %31 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %32 = icmp ne %struct.hfi_queue_header* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %144

36:                                               ; preds = %27
  %37 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %6, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @venus_dump_packet(%struct.venus_hfi_device* %37, i8* %38)
  %40 = load i8*, i8** %8, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 2
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %144

49:                                               ; preds = %36
  %50 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %51 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %14, align 4
  %53 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %54 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %15, align 4
  %56 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %57 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %16, align 4
  %59 = call i32 (...) @rmb()
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %49
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %14, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sub nsw i32 %64, %67
  store i32 %68, i32* %13, align 4
  br label %73

69:                                               ; preds = %49
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %79 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %78, i32 0, i32 3
  store i32 1, i32* %79, align 4
  %80 = call i32 (...) @wmb()
  %81 = load i32, i32* @ENOSPC, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %144

83:                                               ; preds = %73
  %84 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %85 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %84, i32 0, i32 3
  store i32 0, i32* %85, align 4
  %86 = call i32 (...) @wmb()
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, i32* %12, align 4
  %90 = load %struct.iface_queue*, %struct.iface_queue** %7, align 8
  %91 = getelementptr inbounds %struct.iface_queue, %struct.iface_queue* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = shl i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32* %97, i32** %17, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %83
  %102 = load i32*, i32** %17, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* %11, align 4
  %105 = shl i32 %104, 2
  %106 = call i32 @memcpy(i32* %102, i8* %103, i32 %105)
  br label %131

107:                                              ; preds = %83
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %12, align 4
  %110 = sub nsw i32 %109, %108
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = sub nsw i32 %111, %112
  %114 = shl i32 %113, 2
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %18, align 8
  %116 = load i32*, i32** %17, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = load i64, i64* %18, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 @memcpy(i32* %116, i8* %117, i32 %119)
  %121 = load %struct.iface_queue*, %struct.iface_queue** %7, align 8
  %122 = getelementptr inbounds %struct.iface_queue, %struct.iface_queue* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load i64, i64* %18, align 8
  %127 = getelementptr i8, i8* %125, i64 %126
  %128 = load i32, i32* %12, align 4
  %129 = shl i32 %128, 2
  %130 = call i32 @memcpy(i32* %124, i8* %127, i32 %129)
  br label %131

131:                                              ; preds = %107, %101
  %132 = call i32 (...) @wmb()
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %135 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %10, align 8
  %137 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 1, i32 0
  %142 = load i32*, i32** %9, align 8
  store i32 %141, i32* %142, align 4
  %143 = call i32 (...) @mb()
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %131, %77, %46, %33, %24
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @venus_dump_packet(%struct.venus_hfi_device*, i8*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
