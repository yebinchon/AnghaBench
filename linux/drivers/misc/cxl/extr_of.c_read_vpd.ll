; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_of.c_read_vpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_of.c_read_vpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { i32 }
%struct.cxl_afu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl*, %struct.cxl_afu*)* @read_vpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_vpd(%struct.cxl* %0, %struct.cxl_afu* %1) #0 {
  %3 = alloca %struct.cxl*, align 8
  %4 = alloca %struct.cxl_afu*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.cxl* %0, %struct.cxl** %3, align 8
  store %struct.cxl_afu* %1, %struct.cxl_afu** %4, align 8
  store i64 256, i64* %7, align 8
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %9 = load i64, i64* %7, align 8
  %10 = call i32 @memset(i8* %8, i32 0, i64 %9)
  %11 = load %struct.cxl*, %struct.cxl** %3, align 8
  %12 = icmp ne %struct.cxl* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.cxl*, %struct.cxl** %3, align 8
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @cxl_guest_read_adapter_vpd(%struct.cxl* %14, i8* %15, i64 %16)
  store i32 %17, i32* %6, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @cxl_guest_read_afu_vpd(%struct.cxl_afu* %19, i8* %20, i64 %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @cxl_dump_debug_buffer(i8* %27, i32 %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @cxl_guest_read_adapter_vpd(%struct.cxl*, i8*, i64) #1

declare dso_local i32 @cxl_guest_read_afu_vpd(%struct.cxl_afu*, i8*, i64) #1

declare dso_local i32 @cxl_dump_debug_buffer(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
