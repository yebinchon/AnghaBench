; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_get_phys_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_get_phys_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ctx = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hl_ctx*, i64)* @get_phys_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_phys_addr(%struct.hl_ctx* %0, i64 %1) #0 {
  %3 = alloca %struct.hl_ctx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.hl_ctx* %0, %struct.hl_ctx** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %14, 1
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = xor i64 %17, -1
  %19 = and i64 %16, %18
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = and i64 %20, %21
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %25 = call i64 @get_hop0_addr(%struct.hl_ctx* %24)
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call %struct.TYPE_6__* @get_pgt_info(%struct.hl_ctx* %28, i64 %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  br label %36

33:                                               ; preds = %2
  %34 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %35 = call i64 @get_phys_hop0_addr(%struct.hl_ctx* %34)
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = add nsw i64 %37, %38
  ret i64 %39
}

declare dso_local i64 @get_hop0_addr(%struct.hl_ctx*) #1

declare dso_local %struct.TYPE_6__* @get_pgt_info(%struct.hl_ctx*, i64) #1

declare dso_local i64 @get_phys_hop0_addr(%struct.hl_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
