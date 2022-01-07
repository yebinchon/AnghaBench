; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_hl_mem_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_hl_mem_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_fpriv = type { %struct.hl_ctx*, %struct.hl_device* }
%struct.hl_ctx = type { i32 }
%struct.hl_device = type { i32, i32, i32, i32 }
%union.hl_mem_args = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Device is %s. Can't execute MEMORY IOCTL\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"in_reset\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"DRAM alloc is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"alloc size must be larger than 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Unknown opcode for memory IOCTL\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_mem_ioctl(%struct.hl_fpriv* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_fpriv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %union.hl_mem_args*, align 8
  %7 = alloca %struct.hl_device*, align 8
  %8 = alloca %struct.hl_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hl_fpriv* %0, %struct.hl_fpriv** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %union.hl_mem_args*
  store %union.hl_mem_args* %13, %union.hl_mem_args** %6, align 8
  %14 = load %struct.hl_fpriv*, %struct.hl_fpriv** %4, align 8
  %15 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %14, i32 0, i32 1
  %16 = load %struct.hl_device*, %struct.hl_device** %15, align 8
  store %struct.hl_device* %16, %struct.hl_device** %7, align 8
  %17 = load %struct.hl_fpriv*, %struct.hl_fpriv** %4, align 8
  %18 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %17, i32 0, i32 0
  %19 = load %struct.hl_ctx*, %struct.hl_ctx** %18, align 8
  store %struct.hl_ctx* %19, %struct.hl_ctx** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %21 = call i64 @hl_device_disabled_or_in_reset(%struct.hl_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %25 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %28 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %27, i32 0, i32 3
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 @dev_warn_ratelimited(i32 %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %124

36:                                               ; preds = %2
  %37 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %38 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load %struct.hl_fpriv*, %struct.hl_fpriv** %4, align 8
  %43 = load %union.hl_mem_args*, %union.hl_mem_args** %6, align 8
  %44 = call i32 @mem_ioctl_no_mmu(%struct.hl_fpriv* %42, %union.hl_mem_args* %43)
  store i32 %44, i32* %3, align 4
  br label %124

45:                                               ; preds = %36
  %46 = load %union.hl_mem_args*, %union.hl_mem_args** %6, align 8
  %47 = bitcast %union.hl_mem_args* %46 to %struct.TYPE_11__*
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %114 [
    i32 131, label %50
    i32 130, label %87
    i32 129, label %95
    i32 128, label %106
  ]

50:                                               ; preds = %45
  %51 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %52 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %57 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %11, align 4
  br label %122

62:                                               ; preds = %50
  %63 = load %union.hl_mem_args*, %union.hl_mem_args** %6, align 8
  %64 = bitcast %union.hl_mem_args* %63 to %struct.TYPE_11__*
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %71 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %11, align 4
  br label %122

76:                                               ; preds = %62
  %77 = load %struct.hl_ctx*, %struct.hl_ctx** %8, align 8
  %78 = load %union.hl_mem_args*, %union.hl_mem_args** %6, align 8
  %79 = bitcast %union.hl_mem_args* %78 to %struct.TYPE_11__*
  %80 = call i32 @alloc_device_memory(%struct.hl_ctx* %77, %struct.TYPE_11__* %79, i32* %10)
  store i32 %80, i32* %11, align 4
  %81 = load %union.hl_mem_args*, %union.hl_mem_args** %6, align 8
  %82 = call i32 @memset(%union.hl_mem_args* %81, i32 0, i32 16)
  %83 = load i32, i32* %10, align 4
  %84 = load %union.hl_mem_args*, %union.hl_mem_args** %6, align 8
  %85 = bitcast %union.hl_mem_args* %84 to %struct.TYPE_9__*
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  br label %121

87:                                               ; preds = %45
  %88 = load %struct.hl_ctx*, %struct.hl_ctx** %8, align 8
  %89 = load %union.hl_mem_args*, %union.hl_mem_args** %6, align 8
  %90 = bitcast %union.hl_mem_args* %89 to %struct.TYPE_11__*
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @free_device_memory(%struct.hl_ctx* %88, i32 %93)
  store i32 %94, i32* %11, align 4
  br label %121

95:                                               ; preds = %45
  %96 = load %struct.hl_ctx*, %struct.hl_ctx** %8, align 8
  %97 = load %union.hl_mem_args*, %union.hl_mem_args** %6, align 8
  %98 = bitcast %union.hl_mem_args* %97 to %struct.TYPE_11__*
  %99 = call i32 @map_device_va(%struct.hl_ctx* %96, %struct.TYPE_11__* %98, i32* %9)
  store i32 %99, i32* %11, align 4
  %100 = load %union.hl_mem_args*, %union.hl_mem_args** %6, align 8
  %101 = call i32 @memset(%union.hl_mem_args* %100, i32 0, i32 16)
  %102 = load i32, i32* %9, align 4
  %103 = load %union.hl_mem_args*, %union.hl_mem_args** %6, align 8
  %104 = bitcast %union.hl_mem_args* %103 to %struct.TYPE_9__*
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 4
  br label %121

106:                                              ; preds = %45
  %107 = load %struct.hl_ctx*, %struct.hl_ctx** %8, align 8
  %108 = load %union.hl_mem_args*, %union.hl_mem_args** %6, align 8
  %109 = bitcast %union.hl_mem_args* %108 to %struct.TYPE_11__*
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @unmap_device_va(%struct.hl_ctx* %107, i32 %112)
  store i32 %113, i32* %11, align 4
  br label %121

114:                                              ; preds = %45
  %115 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %116 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dev_err(i32 %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %119 = load i32, i32* @ENOTTY, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %114, %106, %95, %87, %76
  br label %122

122:                                              ; preds = %121, %69, %55
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %41, %23
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i64 @hl_device_disabled_or_in_reset(%struct.hl_device*) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*, i8*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mem_ioctl_no_mmu(%struct.hl_fpriv*, %union.hl_mem_args*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @alloc_device_memory(%struct.hl_ctx*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @memset(%union.hl_mem_args*, i32, i32) #1

declare dso_local i32 @free_device_memory(%struct.hl_ctx*, i32) #1

declare dso_local i32 @map_device_va(%struct.hl_ctx*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @unmap_device_va(%struct.hl_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
