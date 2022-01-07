; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_xfer_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_xfer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { %struct.mmc_request*, i32*, i64, %struct.TYPE_2__* }
%struct.mmc_request = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_data = type { i32, i32, %struct.mmc_request*, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*, %struct.mmc_data*)* @omap_hsmmc_xfer_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_xfer_done(%struct.omap_hsmmc_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.omap_hsmmc_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %6 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %7 = icmp ne %struct.mmc_data* %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %2
  %9 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %9, i32 0, i32 0
  %11 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  store %struct.mmc_request* %11, %struct.mmc_request** %5, align 8
  %12 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %8
  %17 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %18 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 6
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %25 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %30 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  br label %87

31:                                               ; preds = %23, %16, %8
  %32 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %33 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %34 = call i32 @omap_hsmmc_request_done(%struct.omap_hsmmc_host* %32, %struct.mmc_request* %33)
  br label %87

35:                                               ; preds = %2
  %36 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %37 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %35
  %43 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %44 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %47 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, %50
  store i64 %54, i64* %52, align 8
  br label %58

55:                                               ; preds = %35
  %56 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %57 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %56, i32 0, i32 5
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %42
  %59 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %60 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %65 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %70 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %69, i32 0, i32 0
  %71 = load %struct.mmc_request*, %struct.mmc_request** %70, align 8
  %72 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %68, %63
  %76 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %77 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %78 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @omap_hsmmc_start_command(%struct.omap_hsmmc_host* %76, i64 %79, i32* null)
  br label %87

81:                                               ; preds = %68, %58
  %82 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %83 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %84 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %83, i32 0, i32 2
  %85 = load %struct.mmc_request*, %struct.mmc_request** %84, align 8
  %86 = call i32 @omap_hsmmc_request_done(%struct.omap_hsmmc_host* %82, %struct.mmc_request* %85)
  br label %87

87:                                               ; preds = %28, %31, %81, %75
  ret void
}

declare dso_local i32 @omap_hsmmc_request_done(%struct.omap_hsmmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @omap_hsmmc_start_command(%struct.omap_hsmmc_host*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
