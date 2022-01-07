; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_mx_mmc_host = type { i32, i32, %struct.mmc_command* }
%struct.mmc_command = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @meson_mx_mmc_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_mx_mmc_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.meson_mx_mmc_host*, align 8
  %7 = alloca %struct.mmc_command*, align 8
  %8 = alloca %struct.mmc_command*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.meson_mx_mmc_host*
  store %struct.meson_mx_mmc_host* %10, %struct.meson_mx_mmc_host** %6, align 8
  %11 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %12 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %11, i32 0, i32 2
  %13 = load %struct.mmc_command*, %struct.mmc_command** %12, align 8
  store %struct.mmc_command* %13, %struct.mmc_command** %7, align 8
  %14 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %15 = icmp ne %struct.mmc_command* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %21, i32* %3, align 4
  br label %81

22:                                               ; preds = %2
  %23 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %24 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %23, i32 0, i32 1
  %25 = call i32 @del_timer_sync(i32* %24)
  %26 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %27 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %65

30:                                               ; preds = %22
  %31 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %32 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @mmc_dev(i32 %33)
  %35 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %36 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %41 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %46 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = call i32 @mmc_get_dma_dir(%struct.TYPE_2__* %47)
  %49 = call i32 @dma_unmap_sg(i32 %34, i32 %39, i32 %44, i32 %48)
  %50 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %51 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %56 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %54, %59
  %61 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %62 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 4
  br label %65

65:                                               ; preds = %30, %22
  %66 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %67 = call %struct.mmc_command* @meson_mx_mmc_get_next_cmd(%struct.mmc_command* %66)
  store %struct.mmc_command* %67, %struct.mmc_command** %8, align 8
  %68 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %69 = icmp ne %struct.mmc_command* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %72 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %75 = call i32 @meson_mx_mmc_start_cmd(i32 %73, %struct.mmc_command* %74)
  br label %79

76:                                               ; preds = %65
  %77 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %78 = call i32 @meson_mx_mmc_request_done(%struct.meson_mx_mmc_host* %77)
  br label %79

79:                                               ; preds = %76, %70
  %80 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %20
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmc_get_dma_dir(%struct.TYPE_2__*) #1

declare dso_local %struct.mmc_command* @meson_mx_mmc_get_next_cmd(%struct.mmc_command*) #1

declare dso_local i32 @meson_mx_mmc_start_cmd(i32, %struct.mmc_command*) #1

declare dso_local i32 @meson_mx_mmc_request_done(%struct.meson_mx_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
