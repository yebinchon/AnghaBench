; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_parse_cb_mmu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_parse_cb_mmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32 }
%struct.hl_cs_parser = type { i64, i64, %struct.hl_cb*, %struct.hl_cb* }
%struct.hl_cb = type { i64 }

@HL_KERNEL_ASID_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to allocate patched CB for DMA CS %d\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"DMA CB handle invalid 0x%x\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"user CB size mismatch\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_cs_parser*)* @goya_parse_cb_mmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_parse_cb_mmu(%struct.hl_device* %0, %struct.hl_cs_parser* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca %struct.hl_cs_parser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.hl_cb*, align 8
  %9 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store %struct.hl_cs_parser* %1, %struct.hl_cs_parser** %5, align 8
  %10 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %11 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %15 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %17 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %18 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %17, i32 0, i32 0
  %19 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %20 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @HL_KERNEL_ASID_ID, align 4
  %23 = call i32 @hl_cb_create(%struct.hl_device* %16, i32* %18, i64 %21, i32* %6, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %28 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 (i32, i8*, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %129

33:                                               ; preds = %2
  %34 = load i32, i32* @PAGE_SHIFT, align 4
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %38 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %39 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %38, i32 0, i32 0
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = call %struct.hl_cb* @hl_cb_get(%struct.hl_device* %37, i32* %39, i64 %41)
  %43 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %44 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %43, i32 0, i32 2
  store %struct.hl_cb* %42, %struct.hl_cb** %44, align 8
  %45 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %46 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %45, i32 0, i32 2
  %47 = load %struct.hl_cb*, %struct.hl_cb** %46, align 8
  %48 = icmp ne %struct.hl_cb* %47, null
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = call i32 @WARN(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %55 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %54, i32 0, i32 2
  %56 = load %struct.hl_cb*, %struct.hl_cb** %55, align 8
  %57 = icmp ne %struct.hl_cb* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %33
  %59 = load i32, i32* @EFAULT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %120

61:                                               ; preds = %33
  %62 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %63 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %62, i32 0, i32 2
  %64 = load %struct.hl_cb*, %struct.hl_cb** %63, align 8
  %65 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %69 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %68, i32 0, i32 3
  %70 = load %struct.hl_cb*, %struct.hl_cb** %69, align 8
  %71 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %75 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @memcpy(i8* %67, i8* %73, i64 %76)
  %78 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %79 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %7, align 8
  %81 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %82 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %81, i32 0, i32 3
  %83 = load %struct.hl_cb*, %struct.hl_cb** %82, align 8
  store %struct.hl_cb* %83, %struct.hl_cb** %8, align 8
  %84 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %85 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %84, i32 0, i32 2
  %86 = load %struct.hl_cb*, %struct.hl_cb** %85, align 8
  %87 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %88 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %87, i32 0, i32 3
  store %struct.hl_cb* %86, %struct.hl_cb** %88, align 8
  %89 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %90 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %91 = call i32 @goya_validate_cb(%struct.hl_device* %89, %struct.hl_cs_parser* %90, i32 1)
  store i32 %91, i32* %9, align 4
  %92 = load %struct.hl_cb*, %struct.hl_cb** %8, align 8
  %93 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %94 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %93, i32 0, i32 3
  store %struct.hl_cb* %92, %struct.hl_cb** %94, align 8
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %61
  %98 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %99 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %98, i32 0, i32 2
  %100 = load %struct.hl_cb*, %struct.hl_cb** %99, align 8
  %101 = call i32 @hl_cb_put(%struct.hl_cb* %100)
  br label %120

102:                                              ; preds = %61
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %105 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %103, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %102
  %109 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %110 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32, i8*, ...) @dev_err(i32 %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %113 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %114 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %113, i32 0, i32 2
  %115 = load %struct.hl_cb*, %struct.hl_cb** %114, align 8
  %116 = call i32 @hl_cb_put(%struct.hl_cb* %115)
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %9, align 4
  br label %120

119:                                              ; preds = %102
  br label %120

120:                                              ; preds = %119, %108, %97, %58
  %121 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %122 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %123 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %122, i32 0, i32 0
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @PAGE_SHIFT, align 4
  %126 = shl i32 %124, %125
  %127 = call i32 @hl_cb_destroy(%struct.hl_device* %121, i32* %123, i32 %126)
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %120, %26
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @hl_cb_create(%struct.hl_device*, i32*, i64, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.hl_cb* @hl_cb_get(%struct.hl_device*, i32*, i64) #1

declare dso_local i32 @WARN(i32, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @goya_validate_cb(%struct.hl_device*, %struct.hl_cs_parser*, i32) #1

declare dso_local i32 @hl_cb_put(%struct.hl_cb*) #1

declare dso_local i32 @hl_cb_destroy(%struct.hl_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
