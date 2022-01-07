; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.meson_host = type { i64 }

@SD_EMMC_PRE_REQ_DONE = common dso_local global i32 0, align 4
@SD_EMMC_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @meson_mmc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_mmc_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.meson_host*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.meson_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.meson_host* %8, %struct.meson_host** %5, align 8
  %9 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SD_EMMC_PRE_REQ_DONE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %13, %2
  %24 = phi i1 [ false, %2 ], [ %22, %13 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %30 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %31 = call i32 @meson_mmc_get_transfer_mode(%struct.mmc_host* %29, %struct.mmc_request* %30)
  %32 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %33 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32 @meson_mmc_desc_chain_mode(%struct.TYPE_2__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %28
  br label %39

39:                                               ; preds = %38, %23
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %44 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %45 = call i32 @meson_mmc_pre_req(%struct.mmc_host* %43, %struct.mmc_request* %44)
  br label %46

46:                                               ; preds = %42, %39
  %47 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %48 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SD_EMMC_START, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 0, i64 %51)
  %53 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %54 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %64

59:                                               ; preds = %46
  %60 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %61 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  br label %64

64:                                               ; preds = %59, %58
  %65 = phi i64 [ %56, %58 ], [ %63, %59 ]
  %66 = trunc i64 %65 to i32
  %67 = call i32 @meson_mmc_start_cmd(%struct.mmc_host* %53, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %72 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %73 = call i32 @meson_mmc_post_req(%struct.mmc_host* %71, %struct.mmc_request* %72, i32 0)
  br label %74

74:                                               ; preds = %70, %64
  ret void
}

declare dso_local %struct.meson_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @meson_mmc_get_transfer_mode(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @meson_mmc_desc_chain_mode(%struct.TYPE_2__*) #1

declare dso_local i32 @meson_mmc_pre_req(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @meson_mmc_start_cmd(%struct.mmc_host*, i32) #1

declare dso_local i32 @meson_mmc_post_req(%struct.mmc_host*, %struct.mmc_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
