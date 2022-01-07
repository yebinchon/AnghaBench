; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_free_hop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_free_hop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ctx = type { %struct.hl_device* }
%struct.hl_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pgt_info = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_ctx*, i64, i64)* @free_hop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_hop(%struct.hl_ctx* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pgt_info, align 8
  %5 = alloca %struct.hl_ctx*, align 8
  %6 = alloca %struct.hl_device*, align 8
  %7 = alloca %struct.pgt_info*, align 8
  %8 = bitcast %struct.pgt_info* %4 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %1, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %2, i64* %10, align 8
  store %struct.hl_ctx* %0, %struct.hl_ctx** %5, align 8
  %11 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %11, i32 0, i32 0
  %13 = load %struct.hl_device*, %struct.hl_device** %12, align 8
  store %struct.hl_device* %13, %struct.hl_device** %6, align 8
  %14 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %15 = bitcast %struct.pgt_info* %4 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call %struct.pgt_info* @get_pgt_info(%struct.hl_ctx* %14, i64 %17, i64 %19)
  store %struct.pgt_info* %20, %struct.pgt_info** %7, align 8
  %21 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %22 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pgt_info*, %struct.pgt_info** %7, align 8
  %25 = getelementptr inbounds %struct.pgt_info, %struct.pgt_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %28 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @gen_pool_free(i32 %23, i32 %26, i32 %30)
  %32 = load %struct.pgt_info*, %struct.pgt_info** %7, align 8
  %33 = getelementptr inbounds %struct.pgt_info, %struct.pgt_info* %32, i32 0, i32 1
  %34 = call i32 @hash_del(i32* %33)
  %35 = load %struct.pgt_info*, %struct.pgt_info** %7, align 8
  %36 = getelementptr inbounds %struct.pgt_info, %struct.pgt_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.pgt_info*
  %39 = call i32 @kfree(%struct.pgt_info* %38)
  %40 = load %struct.pgt_info*, %struct.pgt_info** %7, align 8
  %41 = call i32 @kfree(%struct.pgt_info* %40)
  ret void
}

declare dso_local %struct.pgt_info* @get_pgt_info(%struct.hl_ctx*, i64, i64) #1

declare dso_local i32 @gen_pool_free(i32, i32, i32) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @kfree(%struct.pgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
