; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_alloc_prep_scat_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_alloc_prep_scat_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_sdio = type { i32 }
%struct.hif_scatter_req = type { i32, %struct.bus_request*, %struct.hif_scatter_req*, %struct.hif_scatter_req* }
%struct.bus_request = type { %struct.hif_scatter_req* }

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@ATH6KL_MAX_TRANSFER_SIZE_PER_SCATTER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_sdio*, i32, i32, i32)* @ath6kl_sdio_alloc_prep_scat_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_sdio_alloc_prep_scat_req(%struct.ath6kl_sdio* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath6kl_sdio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hif_scatter_req*, align 8
  %11 = alloca %struct.bus_request*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.hif_scatter_req*, align 8
  store %struct.ath6kl_sdio* %0, %struct.ath6kl_sdio** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 32, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %15, align 4
  br label %37

32:                                               ; preds = %4
  %33 = load i32, i32* @L1_CACHE_BYTES, align 4
  %34 = mul nsw i32 2, %33
  %35 = load i32, i32* @ATH6KL_MAX_TRANSFER_SIZE_PER_SCATTER, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %15, align 4
  br label %37

37:                                               ; preds = %32, %27
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %124, %37
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %127

42:                                               ; preds = %38
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kzalloc(i32 %43, i32 %44)
  %46 = bitcast i8* %45 to %struct.hif_scatter_req*
  store %struct.hif_scatter_req* %46, %struct.hif_scatter_req** %10, align 8
  %47 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %48 = icmp ne %struct.hif_scatter_req* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %128

52:                                               ; preds = %42
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @kzalloc(i32 %56, i32 %57)
  %59 = bitcast i8* %58 to %struct.hif_scatter_req*
  store %struct.hif_scatter_req* %59, %struct.hif_scatter_req** %16, align 8
  %60 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %16, align 8
  %61 = icmp ne %struct.hif_scatter_req* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %55
  %63 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %64 = call i32 @kfree(%struct.hif_scatter_req* %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %128

67:                                               ; preds = %55
  %68 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %16, align 8
  %69 = ptrtoint %struct.hif_scatter_req* %68 to i64
  %70 = call i64 @L1_CACHE_ALIGN(i64 %69)
  %71 = inttoptr i64 %70 to %struct.hif_scatter_req*
  %72 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %73 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %72, i32 0, i32 2
  store %struct.hif_scatter_req* %71, %struct.hif_scatter_req** %73, align 8
  br label %91

74:                                               ; preds = %52
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i8* @kzalloc(i32 %75, i32 %76)
  %78 = bitcast i8* %77 to %struct.hif_scatter_req*
  %79 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %80 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %79, i32 0, i32 3
  store %struct.hif_scatter_req* %78, %struct.hif_scatter_req** %80, align 8
  %81 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %82 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %81, i32 0, i32 3
  %83 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %82, align 8
  %84 = icmp ne %struct.hif_scatter_req* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %74
  %86 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %87 = call i32 @kfree(%struct.hif_scatter_req* %86)
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %128

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %90, %67
  %92 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %6, align 8
  %93 = call %struct.bus_request* @ath6kl_sdio_alloc_busreq(%struct.ath6kl_sdio* %92)
  store %struct.bus_request* %93, %struct.bus_request** %11, align 8
  %94 = load %struct.bus_request*, %struct.bus_request** %11, align 8
  %95 = icmp ne %struct.bus_request* %94, null
  br i1 %95, label %109, label %96

96:                                               ; preds = %91
  %97 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %98 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %97, i32 0, i32 3
  %99 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %98, align 8
  %100 = call i32 @kfree(%struct.hif_scatter_req* %99)
  %101 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %102 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %101, i32 0, i32 2
  %103 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %102, align 8
  %104 = call i32 @kfree(%struct.hif_scatter_req* %103)
  %105 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %106 = call i32 @kfree(%struct.hif_scatter_req* %105)
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %128

109:                                              ; preds = %91
  %110 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %111 = load %struct.bus_request*, %struct.bus_request** %11, align 8
  %112 = getelementptr inbounds %struct.bus_request, %struct.bus_request* %111, i32 0, i32 0
  store %struct.hif_scatter_req* %110, %struct.hif_scatter_req** %112, align 8
  %113 = load %struct.bus_request*, %struct.bus_request** %11, align 8
  %114 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %115 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %114, i32 0, i32 1
  store %struct.bus_request* %113, %struct.bus_request** %115, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %118 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %6, align 8
  %120 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %123 = call i32 @hif_scatter_req_add(i32 %121, %struct.hif_scatter_req* %122)
  br label %124

124:                                              ; preds = %109
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %38

127:                                              ; preds = %38
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %127, %96, %85, %62, %49
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.hif_scatter_req*) #1

declare dso_local i64 @L1_CACHE_ALIGN(i64) #1

declare dso_local %struct.bus_request* @ath6kl_sdio_alloc_busreq(%struct.ath6kl_sdio*) #1

declare dso_local i32 @hif_scatter_req_add(i32, %struct.hif_scatter_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
