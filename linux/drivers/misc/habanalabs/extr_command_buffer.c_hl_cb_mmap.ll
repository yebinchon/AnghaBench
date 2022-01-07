; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_buffer.c_hl_cb_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_buffer.c_hl_cb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_fpriv = type { i32, %struct.hl_device* }
%struct.hl_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*, %struct.vm_area_struct*, i64, i32, i32)* }
%struct.vm_area_struct = type { i64, i64, %struct.hl_cb*, i32*, i32 }
%struct.hl_cb = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"CB mmap failed, no match to handle %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"CB mmap failed, mmap size 0x%lx != 0x%x cb size\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"CB mmap failed, CB already mmaped to user\0A\00", align 1
@cb_vm_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_cb_mmap(%struct.hl_fpriv* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_fpriv*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.hl_device*, align 8
  %7 = alloca %struct.hl_cb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hl_fpriv* %0, %struct.hl_fpriv** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %11 = load %struct.hl_fpriv*, %struct.hl_fpriv** %4, align 8
  %12 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %11, i32 0, i32 1
  %13 = load %struct.hl_device*, %struct.hl_device** %12, align 8
  store %struct.hl_device* %13, %struct.hl_device** %6, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %18 = load %struct.hl_fpriv*, %struct.hl_fpriv** %4, align 8
  %19 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %18, i32 0, i32 0
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.hl_cb* @hl_cb_get(%struct.hl_device* %17, i32* %19, i32 %20)
  store %struct.hl_cb* %21, %struct.hl_cb** %7, align 8
  %22 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %23 = icmp ne %struct.hl_cb* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %2
  %25 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %26 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %131

32:                                               ; preds = %2
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %41 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = call i64 @ALIGN(i32 %42, i32 %43)
  %45 = icmp ne i64 %39, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %32
  %47 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %48 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %58 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @dev_err(i32 %49, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %56, i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  br label %127

63:                                               ; preds = %32
  %64 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %65 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %64, i32 0, i32 1
  %66 = call i32 @spin_lock(i32* %65)
  %67 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %68 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %73 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %10, align 4
  br label %123

78:                                               ; preds = %63
  %79 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %80 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %82 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %81, i32 0, i32 1
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 3
  store i32* @cb_vm_ops, i32** %85, align 8
  %86 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %87, i32 0, i32 2
  store %struct.hl_cb* %86, %struct.hl_cb** %88, align 8
  %89 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %90 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = call i32 @virt_to_phys(i8* %92)
  store i32 %93, i32* %8, align 4
  %94 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %95 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32 (%struct.hl_device*, %struct.vm_area_struct*, i64, i32, i32)*, i32 (%struct.hl_device*, %struct.vm_area_struct*, i64, i32, i32)** %97, align 8
  %99 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %101 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %102 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %106 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 %98(%struct.hl_device* %99, %struct.vm_area_struct* %100, i64 %103, i32 %104, i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %78
  %112 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %113 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %112, i32 0, i32 1
  %114 = call i32 @spin_lock(i32* %113)
  %115 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %116 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  br label %123

117:                                              ; preds = %78
  %118 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %119 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %122 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  store i32 0, i32* %3, align 4
  br label %131

123:                                              ; preds = %111, %71
  %124 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %125 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %124, i32 0, i32 1
  %126 = call i32 @spin_unlock(i32* %125)
  br label %127

127:                                              ; preds = %123, %46
  %128 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %129 = call i32 @hl_cb_put(%struct.hl_cb* %128)
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %127, %117, %24
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.hl_cb* @hl_cb_get(%struct.hl_device*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @hl_cb_put(%struct.hl_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
