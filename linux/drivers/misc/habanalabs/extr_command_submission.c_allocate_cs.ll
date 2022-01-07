; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_submission.c_allocate_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_submission.c_allocate_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.hl_ctx = type { i32, i32, %struct.dma_fence**, i32 }
%struct.dma_fence = type { i32 }
%struct.hl_cs = type { i32, i32, i32, i32, %struct.dma_fence, i32, %struct.dma_fence*, %struct.hl_device*, i32, i32, i32, i32, %struct.hl_ctx* }
%struct.hl_dma_fence = type { i32, i32, i32, i32, %struct.dma_fence, i32, %struct.dma_fence*, %struct.hl_device*, i32, i32, i32, i32, %struct.hl_ctx* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cs_timedout = common dso_local global i32 0, align 4
@HL_MAX_PENDING_CS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Rejecting CS because of too many in-flights CS\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@hl_fence_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_ctx*, %struct.hl_cs**)* @allocate_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_cs(%struct.hl_device* %0, %struct.hl_ctx* %1, %struct.hl_cs** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca %struct.hl_ctx*, align 8
  %7 = alloca %struct.hl_cs**, align 8
  %8 = alloca %struct.hl_dma_fence*, align 8
  %9 = alloca %struct.dma_fence*, align 8
  %10 = alloca %struct.hl_cs*, align 8
  %11 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store %struct.hl_ctx* %1, %struct.hl_ctx** %6, align 8
  store %struct.hl_cs** %2, %struct.hl_cs*** %7, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %9, align 8
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.hl_dma_fence* @kzalloc(i32 64, i32 %12)
  %14 = bitcast %struct.hl_dma_fence* %13 to %struct.hl_cs*
  store %struct.hl_cs* %14, %struct.hl_cs** %10, align 8
  %15 = load %struct.hl_cs*, %struct.hl_cs** %10, align 8
  %16 = icmp ne %struct.hl_cs* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %147

20:                                               ; preds = %3
  %21 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %22 = load %struct.hl_cs*, %struct.hl_cs** %10, align 8
  %23 = getelementptr inbounds %struct.hl_cs, %struct.hl_cs* %22, i32 0, i32 12
  store %struct.hl_ctx* %21, %struct.hl_ctx** %23, align 8
  %24 = load %struct.hl_cs*, %struct.hl_cs** %10, align 8
  %25 = getelementptr inbounds %struct.hl_cs, %struct.hl_cs* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.hl_cs*, %struct.hl_cs** %10, align 8
  %27 = getelementptr inbounds %struct.hl_cs, %struct.hl_cs* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.hl_cs*, %struct.hl_cs** %10, align 8
  %29 = getelementptr inbounds %struct.hl_cs, %struct.hl_cs* %28, i32 0, i32 11
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.hl_cs*, %struct.hl_cs** %10, align 8
  %32 = getelementptr inbounds %struct.hl_cs, %struct.hl_cs* %31, i32 0, i32 10
  %33 = load i32, i32* @cs_timedout, align 4
  %34 = call i32 @INIT_DELAYED_WORK(i32* %32, i32 %33)
  %35 = load %struct.hl_cs*, %struct.hl_cs** %10, align 8
  %36 = getelementptr inbounds %struct.hl_cs, %struct.hl_cs* %35, i32 0, i32 9
  %37 = call i32 @kref_init(i32* %36)
  %38 = load %struct.hl_cs*, %struct.hl_cs** %10, align 8
  %39 = getelementptr inbounds %struct.hl_cs, %struct.hl_cs* %38, i32 0, i32 8
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call %struct.hl_dma_fence* @kmalloc(i32 64, i32 %41)
  store %struct.hl_dma_fence* %42, %struct.hl_dma_fence** %8, align 8
  %43 = load %struct.hl_dma_fence*, %struct.hl_dma_fence** %8, align 8
  %44 = icmp ne %struct.hl_dma_fence* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %20
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %142

48:                                               ; preds = %20
  %49 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %50 = load %struct.hl_dma_fence*, %struct.hl_dma_fence** %8, align 8
  %51 = getelementptr inbounds %struct.hl_dma_fence, %struct.hl_dma_fence* %50, i32 0, i32 7
  store %struct.hl_device* %49, %struct.hl_device** %51, align 8
  %52 = load %struct.hl_dma_fence*, %struct.hl_dma_fence** %8, align 8
  %53 = getelementptr inbounds %struct.hl_dma_fence, %struct.hl_dma_fence* %52, i32 0, i32 5
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.hl_dma_fence*, %struct.hl_dma_fence** %8, align 8
  %56 = getelementptr inbounds %struct.hl_dma_fence, %struct.hl_dma_fence* %55, i32 0, i32 4
  %57 = load %struct.hl_cs*, %struct.hl_cs** %10, align 8
  %58 = getelementptr inbounds %struct.hl_cs, %struct.hl_cs* %57, i32 0, i32 6
  store %struct.dma_fence* %56, %struct.dma_fence** %58, align 8
  %59 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %60 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %59, i32 0, i32 1
  %61 = call i32 @spin_lock(i32* %60)
  %62 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %63 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.hl_dma_fence*, %struct.hl_dma_fence** %8, align 8
  %66 = getelementptr inbounds %struct.hl_dma_fence, %struct.hl_dma_fence* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %68 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %67, i32 0, i32 2
  %69 = load %struct.dma_fence**, %struct.dma_fence*** %68, align 8
  %70 = load %struct.hl_dma_fence*, %struct.hl_dma_fence** %8, align 8
  %71 = getelementptr inbounds %struct.hl_dma_fence, %struct.hl_dma_fence* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @HL_MAX_PENDING_CS, align 4
  %74 = sub nsw i32 %73, 1
  %75 = and i32 %72, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %69, i64 %76
  %78 = load %struct.dma_fence*, %struct.dma_fence** %77, align 8
  store %struct.dma_fence* %78, %struct.dma_fence** %9, align 8
  %79 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %80 = icmp ne %struct.dma_fence* %79, null
  br i1 %80, label %81, label %95

81:                                               ; preds = %48
  %82 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %83 = call i32 @dma_fence_is_signaled(%struct.dma_fence* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %81
  %86 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %87 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %86, i32 0, i32 1
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %90 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dev_dbg(i32 %91, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* @EAGAIN, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %11, align 4
  br label %139

95:                                               ; preds = %81, %48
  %96 = load %struct.hl_dma_fence*, %struct.hl_dma_fence** %8, align 8
  %97 = getelementptr inbounds %struct.hl_dma_fence, %struct.hl_dma_fence* %96, i32 0, i32 4
  %98 = load %struct.hl_dma_fence*, %struct.hl_dma_fence** %8, align 8
  %99 = getelementptr inbounds %struct.hl_dma_fence, %struct.hl_dma_fence* %98, i32 0, i32 5
  %100 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %101 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %104 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dma_fence_init(%struct.dma_fence* %97, i32* @hl_fence_ops, i32* %99, i32 %102, i32 %105)
  %107 = load %struct.hl_dma_fence*, %struct.hl_dma_fence** %8, align 8
  %108 = getelementptr inbounds %struct.hl_dma_fence, %struct.hl_dma_fence* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.hl_cs*, %struct.hl_cs** %10, align 8
  %111 = getelementptr inbounds %struct.hl_cs, %struct.hl_cs* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.hl_dma_fence*, %struct.hl_dma_fence** %8, align 8
  %113 = getelementptr inbounds %struct.hl_dma_fence, %struct.hl_dma_fence* %112, i32 0, i32 4
  %114 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %115 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %114, i32 0, i32 2
  %116 = load %struct.dma_fence**, %struct.dma_fence*** %115, align 8
  %117 = load %struct.hl_dma_fence*, %struct.hl_dma_fence** %8, align 8
  %118 = getelementptr inbounds %struct.hl_dma_fence, %struct.hl_dma_fence* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @HL_MAX_PENDING_CS, align 4
  %121 = sub nsw i32 %120, 1
  %122 = and i32 %119, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %116, i64 %123
  store %struct.dma_fence* %113, %struct.dma_fence** %124, align 8
  %125 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %126 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  %129 = load %struct.hl_dma_fence*, %struct.hl_dma_fence** %8, align 8
  %130 = getelementptr inbounds %struct.hl_dma_fence, %struct.hl_dma_fence* %129, i32 0, i32 4
  %131 = call i32 @dma_fence_get(%struct.dma_fence* %130)
  %132 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %133 = call i32 @dma_fence_put(%struct.dma_fence* %132)
  %134 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %135 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %134, i32 0, i32 1
  %136 = call i32 @spin_unlock(i32* %135)
  %137 = load %struct.hl_cs*, %struct.hl_cs** %10, align 8
  %138 = load %struct.hl_cs**, %struct.hl_cs*** %7, align 8
  store %struct.hl_cs* %137, %struct.hl_cs** %138, align 8
  store i32 0, i32* %4, align 4
  br label %147

139:                                              ; preds = %85
  %140 = load %struct.hl_dma_fence*, %struct.hl_dma_fence** %8, align 8
  %141 = call i32 @kfree(%struct.hl_dma_fence* %140)
  br label %142

142:                                              ; preds = %139, %45
  %143 = load %struct.hl_cs*, %struct.hl_cs** %10, align 8
  %144 = bitcast %struct.hl_cs* %143 to %struct.hl_dma_fence*
  %145 = call i32 @kfree(%struct.hl_dma_fence* %144)
  %146 = load i32, i32* %11, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %142, %95, %17
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local %struct.hl_dma_fence* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.hl_dma_fence* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dma_fence_init(%struct.dma_fence*, i32*, i32*, i32, i32) #1

declare dso_local i32 @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @kfree(%struct.hl_dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
