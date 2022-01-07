; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_hl_mmu_ctx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_hl_mmu_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ctx = type { i32, i32, i32, %struct.hl_device* }
%struct.hl_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_mmu_ctx_init(%struct.hl_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_ctx*, align 8
  %4 = alloca %struct.hl_device*, align 8
  store %struct.hl_ctx* %0, %struct.hl_ctx** %3, align 8
  %5 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %5, i32 0, i32 3
  %7 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  store %struct.hl_device* %7, %struct.hl_device** %4, align 8
  %8 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %9 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %14, i32 0, i32 2
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @hash_init(i32 %19)
  %21 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @hash_init(i32 %23)
  %25 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %26 = call i32 @dram_default_mapping_init(%struct.hl_ctx* %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %13, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @hash_init(i32) #1

declare dso_local i32 @dram_default_mapping_init(%struct.hl_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
