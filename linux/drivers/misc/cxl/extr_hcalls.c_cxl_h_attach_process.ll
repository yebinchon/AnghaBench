; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_hcalls.c_cxl_h_attach_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_hcalls.c_cxl_h_attach_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_process_element_hcall = type { i32 }

@PLPAR_HCALL_BUFSIZE = common dso_local global i32 0, align 4
@H_ATTACH_CA_PROCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"cxl_h_attach_process(%#.16llx, %#.16lx): %li\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"token: 0x%.8lx mmio_addr: 0x%lx mmio_size: 0x%lx\0AProcess Element Structure:\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Unexpected return code: %lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cxl_h_attach_process(i64 %0, %struct.cxl_process_element_hcall* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cxl_process_element_hcall*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store %struct.cxl_process_element_hcall* %1, %struct.cxl_process_element_hcall** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load i32, i32* @PLPAR_HCALL_BUFSIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i64, i64* %14, align 8
  %21 = load i32, i32* @H_ATTACH_CA_PROCESS, align 4
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.cxl_process_element_hcall*, %struct.cxl_process_element_hcall** %8, align 8
  %24 = call i32 @virt_to_phys(%struct.cxl_process_element_hcall* %23)
  %25 = call i32 @CXL_H_WAIT_UNTIL_DONE(i64 %20, i64* %19, i32 %21, i64 %22, i32 %24)
  %26 = load i64, i64* %14, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.cxl_process_element_hcall*, %struct.cxl_process_element_hcall** %8, align 8
  %29 = call i32 @virt_to_phys(%struct.cxl_process_element_hcall* %28)
  %30 = load i64, i64* %14, align 8
  %31 = call i32 @_PRINT_MSG(i64 %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %27, i32 %29, i64 %30)
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.cxl_process_element_hcall*, %struct.cxl_process_element_hcall** %8, align 8
  %34 = call i32 @virt_to_phys(%struct.cxl_process_element_hcall* %33)
  %35 = getelementptr inbounds i64, i64* %19, i64 0
  %36 = load i64, i64* %35, align 16
  %37 = getelementptr inbounds i64, i64* %19, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i64, i64* %19, i64 2
  %40 = load i64, i64* %39, align 16
  %41 = load i64, i64* %14, align 8
  %42 = call i32 @trace_cxl_hcall_attach(i64 %32, i32 %34, i64 %36, i64 %38, i64 %40, i64 %41)
  %43 = getelementptr inbounds i64, i64* %19, i64 0
  %44 = load i64, i64* %43, align 16
  %45 = getelementptr inbounds i64, i64* %19, i64 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i64, i64* %19, i64 2
  %48 = load i64, i64* %47, align 16
  %49 = call i32 @pr_devel(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i64 %44, i64 %46, i64 %48)
  %50 = load %struct.cxl_process_element_hcall*, %struct.cxl_process_element_hcall** %8, align 8
  %51 = call i32 @cxl_dump_debug_buffer(%struct.cxl_process_element_hcall* %50, i32 4)
  %52 = load i64, i64* %14, align 8
  switch i64 %52, label %77 [
    i64 128, label %53
    i64 131, label %71
    i64 133, label %71
    i64 135, label %74
    i64 130, label %74
    i64 132, label %74
    i64 129, label %74
    i64 134, label %74
  ]

53:                                               ; preds = %5
  %54 = getelementptr inbounds i64, i64* %19, i64 0
  %55 = load i64, i64* %54, align 16
  %56 = load i64*, i64** %9, align 8
  store i64 %55, i64* %56, align 8
  %57 = load i64*, i64** %10, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = getelementptr inbounds i64, i64* %19, i64 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %10, align 8
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %53
  %64 = load i64*, i64** %11, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = getelementptr inbounds i64, i64* %19, i64 2
  %68 = load i64, i64* %67, align 16
  %69 = load i64*, i64** %11, align 8
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %63
  store i64 0, i64* %6, align 8
  store i32 1, i32* %15, align 4
  br label %82

71:                                               ; preds = %5, %5
  %72 = load i64, i64* @EINVAL, align 8
  %73 = sub nsw i64 0, %72
  store i64 %73, i64* %6, align 8
  store i32 1, i32* %15, align 4
  br label %82

74:                                               ; preds = %5, %5, %5, %5, %5
  %75 = load i64, i64* @EBUSY, align 8
  %76 = sub nsw i64 0, %75
  store i64 %76, i64* %6, align 8
  store i32 1, i32* %15, align 4
  br label %82

77:                                               ; preds = %5
  %78 = load i64, i64* %14, align 8
  %79 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %78)
  %80 = load i64, i64* @EINVAL, align 8
  %81 = sub nsw i64 0, %80
  store i64 %81, i64* %6, align 8
  store i32 1, i32* %15, align 4
  br label %82

82:                                               ; preds = %77, %74, %71, %70
  %83 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i64, i64* %6, align 8
  ret i64 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CXL_H_WAIT_UNTIL_DONE(i64, i64*, i32, i64, i32) #2

declare dso_local i32 @virt_to_phys(%struct.cxl_process_element_hcall*) #2

declare dso_local i32 @_PRINT_MSG(i64, i8*, i64, i32, i64) #2

declare dso_local i32 @trace_cxl_hcall_attach(i64, i32, i64, i64, i64, i64) #2

declare dso_local i32 @pr_devel(i8*, i64, i64, i64) #2

declare dso_local i32 @cxl_dump_debug_buffer(%struct.cxl_process_element_hcall*, i32) #2

declare dso_local i32 @WARN(i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
