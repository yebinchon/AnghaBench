; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.mmc_command*, %struct.mmc_command*, %struct.TYPE_2__* }
%struct.mmc_command = type { i64 }
%struct.TYPE_2__ = type { i32 }
%struct.meson_mx_mmc_host = type { i64, %struct.mmc_request*, i64 }

@MESON_MX_SDIO_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @meson_mx_mmc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_mx_mmc_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.meson_mx_mmc_host*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.meson_mx_mmc_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.meson_mx_mmc_host* %8, %struct.meson_mx_mmc_host** %5, align 8
  %9 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 0
  %11 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  store %struct.mmc_command* %11, %struct.mmc_command** %6, align 8
  %12 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %13 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %18 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %19 = call i64 @meson_mx_mmc_map_dma(%struct.mmc_host* %17, %struct.mmc_request* %18)
  %20 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %21 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %24 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %29 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %32 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %34 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %35 = call i32 @mmc_request_done(%struct.mmc_host* %33, %struct.mmc_request* %34)
  br label %74

36:                                               ; preds = %22
  %37 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %38 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %39 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %38, i32 0, i32 1
  store %struct.mmc_request* %37, %struct.mmc_request** %39, align 8
  %40 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %41 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %36
  %45 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %46 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sg_dma_address(i32 %49)
  %51 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %52 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MESON_MX_SDIO_ADDR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  br label %57

57:                                               ; preds = %44, %36
  %58 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %59 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %58, i32 0, i32 1
  %60 = load %struct.mmc_command*, %struct.mmc_command** %59, align 8
  %61 = icmp ne %struct.mmc_command* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %64 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %65 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %64, i32 0, i32 1
  %66 = load %struct.mmc_command*, %struct.mmc_command** %65, align 8
  %67 = call i32 @meson_mx_mmc_start_cmd(%struct.mmc_host* %63, %struct.mmc_command* %66)
  br label %74

68:                                               ; preds = %57
  %69 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %70 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %71 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %70, i32 0, i32 0
  %72 = load %struct.mmc_command*, %struct.mmc_command** %71, align 8
  %73 = call i32 @meson_mx_mmc_start_cmd(%struct.mmc_host* %69, %struct.mmc_command* %72)
  br label %74

74:                                               ; preds = %27, %68, %62
  ret void
}

declare dso_local %struct.meson_mx_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i64 @meson_mx_mmc_map_dma(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @sg_dma_address(i32) #1

declare dso_local i32 @meson_mx_mmc_start_cmd(%struct.mmc_host*, %struct.mmc_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
