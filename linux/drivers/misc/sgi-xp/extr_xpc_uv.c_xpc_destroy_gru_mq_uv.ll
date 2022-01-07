; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_destroy_gru_mq_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_destroy_gru_mq_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_gru_mq_uv = type { i64, i64, i32 }

@xpSuccess = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_gru_mq_uv*)* @xpc_destroy_gru_mq_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_destroy_gru_mq_uv(%struct.xpc_gru_mq_uv* %0) #0 {
  %2 = alloca %struct.xpc_gru_mq_uv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xpc_gru_mq_uv* %0, %struct.xpc_gru_mq_uv** %2, align 8
  %6 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %2, align 8
  %7 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = shl i64 1, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %2, align 8
  %12 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @xp_pa(i64 %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @xp_restrict_memprotect(i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @xpSuccess, align 4
  %19 = icmp ne i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %2, align 8
  %23 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @free_irq(i32 %24, i32* null)
  %26 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %2, align 8
  %27 = call i32 @xpc_release_gru_mq_irq_uv(%struct.xpc_gru_mq_uv* %26)
  %28 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %2, align 8
  %29 = call i32 @xpc_gru_mq_watchlist_free_uv(%struct.xpc_gru_mq_uv* %28)
  %30 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %2, align 8
  %31 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 %32, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %4, align 4
  %37 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %2, align 8
  %38 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @free_pages(i64 %39, i32 %40)
  %42 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %2, align 8
  %43 = call i32 @kfree(%struct.xpc_gru_mq_uv* %42)
  ret void
}

declare dso_local i32 @xp_restrict_memprotect(i32, i32) #1

declare dso_local i32 @xp_pa(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @xpc_release_gru_mq_irq_uv(%struct.xpc_gru_mq_uv*) #1

declare dso_local i32 @xpc_gru_mq_watchlist_free_uv(%struct.xpc_gru_mq_uv*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @kfree(%struct.xpc_gru_mq_uv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
