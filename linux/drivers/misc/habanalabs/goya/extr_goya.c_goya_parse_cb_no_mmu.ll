; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_parse_cb_no_mmu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_parse_cb_no_mmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32 }
%struct.hl_cs_parser = type { i32, i32, i32 }

@HL_KERNEL_ASID_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to allocate patched CB for DMA CS %d\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"DMA CB handle invalid 0x%x\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_cs_parser*)* @goya_parse_cb_no_mmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_parse_cb_no_mmu(%struct.hl_device* %0, %struct.hl_cs_parser* %1) #0 {
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.hl_cs_parser*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  store %struct.hl_cs_parser* %1, %struct.hl_cs_parser** %4, align 8
  %7 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %8 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %4, align 8
  %9 = call i32 @goya_validate_cb(%struct.hl_device* %7, %struct.hl_cs_parser* %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %76

13:                                               ; preds = %2
  %14 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %15 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %16 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %15, i32 0, i32 0
  %17 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %4, align 8
  %18 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HL_KERNEL_ASID_ID, align 4
  %21 = call i32 @hl_cb_create(%struct.hl_device* %14, i32* %16, i32 %19, i32* %5, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %26 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %76

30:                                               ; preds = %13
  %31 = load i32, i32* @PAGE_SHIFT, align 4
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %35 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %36 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %35, i32 0, i32 0
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @hl_cb_get(%struct.hl_device* %34, i32* %36, i32 %37)
  %39 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %4, align 8
  %40 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %4, align 8
  %42 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @WARN(i32 %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %4, align 8
  %50 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %30
  %54 = load i32, i32* @EFAULT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %68

56:                                               ; preds = %30
  %57 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %58 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %4, align 8
  %59 = call i32 @goya_patch_cb(%struct.hl_device* %57, %struct.hl_cs_parser* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %4, align 8
  %64 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @hl_cb_put(i32 %65)
  br label %67

67:                                               ; preds = %62, %56
  br label %68

68:                                               ; preds = %67, %53
  %69 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %70 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %71 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %70, i32 0, i32 0
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @PAGE_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = call i32 @hl_cb_destroy(%struct.hl_device* %69, i32* %71, i32 %74)
  br label %76

76:                                               ; preds = %68, %24, %12
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %81 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %4, align 8
  %82 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @hl_userptr_delete_list(%struct.hl_device* %80, i32 %83)
  br label %85

85:                                               ; preds = %79, %76
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @goya_validate_cb(%struct.hl_device*, %struct.hl_cs_parser*, i32) #1

declare dso_local i32 @hl_cb_create(%struct.hl_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @hl_cb_get(%struct.hl_device*, i32*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @goya_patch_cb(%struct.hl_device*, %struct.hl_cs_parser*) #1

declare dso_local i32 @hl_cb_put(i32) #1

declare dso_local i32 @hl_cb_destroy(%struct.hl_device*, i32*, i32) #1

declare dso_local i32 @hl_userptr_delete_list(%struct.hl_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
