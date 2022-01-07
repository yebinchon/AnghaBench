; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_mem_ioctl_no_mmu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_mem_ioctl_no_mmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_fpriv = type { %struct.hl_ctx*, %struct.hl_device* }
%struct.hl_ctx = type { i32 }
%struct.hl_device = type { i32 }
%union.hl_mem_args = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"alloc size must be larger than 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HL_MEM_CONTIGUOUS = common dso_local global i32 0, align 4
@HL_MEM_USERPTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unknown opcode for memory IOCTL\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_fpriv*, %union.hl_mem_args*)* @mem_ioctl_no_mmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_ioctl_no_mmu(%struct.hl_fpriv* %0, %union.hl_mem_args* %1) #0 {
  %3 = alloca %struct.hl_fpriv*, align 8
  %4 = alloca %union.hl_mem_args*, align 8
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca %struct.hl_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hl_fpriv* %0, %struct.hl_fpriv** %3, align 8
  store %union.hl_mem_args* %1, %union.hl_mem_args** %4, align 8
  %10 = load %struct.hl_fpriv*, %struct.hl_fpriv** %3, align 8
  %11 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %10, i32 0, i32 1
  %12 = load %struct.hl_device*, %struct.hl_device** %11, align 8
  store %struct.hl_device* %12, %struct.hl_device** %5, align 8
  %13 = load %struct.hl_fpriv*, %struct.hl_fpriv** %3, align 8
  %14 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %13, i32 0, i32 0
  %15 = load %struct.hl_ctx*, %struct.hl_ctx** %14, align 8
  store %struct.hl_ctx* %15, %struct.hl_ctx** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load %union.hl_mem_args*, %union.hl_mem_args** %4, align 8
  %17 = bitcast %union.hl_mem_args* %16 to %struct.TYPE_11__*
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %86 [
    i32 131, label %20
    i32 130, label %51
    i32 129, label %59
    i32 128, label %85
  ]

20:                                               ; preds = %2
  %21 = load %union.hl_mem_args*, %union.hl_mem_args** %4, align 8
  %22 = bitcast %union.hl_mem_args* %21 to %struct.TYPE_11__*
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %29 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  br label %94

34:                                               ; preds = %20
  %35 = load i32, i32* @HL_MEM_CONTIGUOUS, align 4
  %36 = load %union.hl_mem_args*, %union.hl_mem_args** %4, align 8
  %37 = bitcast %union.hl_mem_args* %36 to %struct.TYPE_11__*
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 4
  %41 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %42 = load %union.hl_mem_args*, %union.hl_mem_args** %4, align 8
  %43 = bitcast %union.hl_mem_args* %42 to %struct.TYPE_11__*
  %44 = call i32 @alloc_device_memory(%struct.hl_ctx* %41, %struct.TYPE_11__* %43, i32* %8)
  store i32 %44, i32* %9, align 4
  %45 = load %union.hl_mem_args*, %union.hl_mem_args** %4, align 8
  %46 = call i32 @memset(%union.hl_mem_args* %45, i32 0, i32 20)
  %47 = load i32, i32* %8, align 4
  %48 = load %union.hl_mem_args*, %union.hl_mem_args** %4, align 8
  %49 = bitcast %union.hl_mem_args* %48 to %struct.TYPE_10__*
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  br label %93

51:                                               ; preds = %2
  %52 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %53 = load %union.hl_mem_args*, %union.hl_mem_args** %4, align 8
  %54 = bitcast %union.hl_mem_args* %53 to %struct.TYPE_11__*
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @free_device_memory(%struct.hl_ctx* %52, i32 %57)
  store i32 %58, i32* %9, align 4
  br label %93

59:                                               ; preds = %2
  %60 = load %union.hl_mem_args*, %union.hl_mem_args** %4, align 8
  %61 = bitcast %union.hl_mem_args* %60 to %struct.TYPE_11__*
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @HL_MEM_USERPTR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load %union.hl_mem_args*, %union.hl_mem_args** %4, align 8
  %69 = bitcast %union.hl_mem_args* %68 to %struct.TYPE_11__*
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %78

73:                                               ; preds = %59
  %74 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %75 = load %union.hl_mem_args*, %union.hl_mem_args** %4, align 8
  %76 = bitcast %union.hl_mem_args* %75 to %struct.TYPE_11__*
  %77 = call i32 @get_paddr_from_handle(%struct.hl_ctx* %74, %struct.TYPE_11__* %76, i32* %7)
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %73, %67
  %79 = load %union.hl_mem_args*, %union.hl_mem_args** %4, align 8
  %80 = call i32 @memset(%union.hl_mem_args* %79, i32 0, i32 20)
  %81 = load i32, i32* %7, align 4
  %82 = load %union.hl_mem_args*, %union.hl_mem_args** %4, align 8
  %83 = bitcast %union.hl_mem_args* %82 to %struct.TYPE_10__*
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 4
  br label %93

85:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %93

86:                                               ; preds = %2
  %87 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %88 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* @ENOTTY, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %86, %85, %78, %51, %34
  br label %94

94:                                               ; preds = %93, %27
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @alloc_device_memory(%struct.hl_ctx*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @memset(%union.hl_mem_args*, i32, i32) #1

declare dso_local i32 @free_device_memory(%struct.hl_ctx*, i32) #1

declare dso_local i32 @get_paddr_from_handle(%struct.hl_ctx*, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
