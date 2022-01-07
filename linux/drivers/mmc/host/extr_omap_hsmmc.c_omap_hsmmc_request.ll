; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.omap_hsmmc_host = type { i32, i32, i32, %struct.mmc_request*, i32, i32, i64 }

@AUTO_CMD23 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @omap_hsmmc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.omap_hsmmc_host*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.omap_hsmmc_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.omap_hsmmc_host* %8, %struct.omap_hsmmc_host** %5, align 8
  %9 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %10 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %14 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, -1
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %20 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %25 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %24, i32 0, i32 6
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %28 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %27, i32 0, i32 3
  %29 = load %struct.mmc_request*, %struct.mmc_request** %28, align 8
  %30 = icmp ne %struct.mmc_request* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %34 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %35 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %34, i32 0, i32 3
  store %struct.mmc_request* %33, %struct.mmc_request** %35, align 8
  %36 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %37 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @clk_get_rate(i32 %38)
  %40 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %41 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %43 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %44 = call i32 @omap_hsmmc_prepare_data(%struct.omap_hsmmc_host* %42, %struct.mmc_request* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %26
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %50 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  %53 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %54 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %60 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %47
  %64 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %65 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %64, i32 0, i32 3
  store %struct.mmc_request* null, %struct.mmc_request** %65, align 8
  %66 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %67 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %68 = call i32 @mmc_request_done(%struct.mmc_host* %66, %struct.mmc_request* %67)
  br label %98

69:                                               ; preds = %26
  %70 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %71 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = icmp ne %struct.TYPE_3__* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %76 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @AUTO_CMD23, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %74
  %82 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %83 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %84 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %83, i32 0, i32 2
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = call i32 @omap_hsmmc_start_command(%struct.omap_hsmmc_host* %82, %struct.TYPE_3__* %85, %struct.TYPE_4__* null)
  br label %98

87:                                               ; preds = %74, %69
  %88 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %89 = call i32 @omap_hsmmc_start_dma_transfer(%struct.omap_hsmmc_host* %88)
  %90 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %91 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %92 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %91, i32 0, i32 1
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %95 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = call i32 @omap_hsmmc_start_command(%struct.omap_hsmmc_host* %90, %struct.TYPE_3__* %93, %struct.TYPE_4__* %96)
  br label %98

98:                                               ; preds = %87, %81, %63
  ret void
}

declare dso_local %struct.omap_hsmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @omap_hsmmc_prepare_data(%struct.omap_hsmmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @omap_hsmmc_start_command(%struct.omap_hsmmc_host*, %struct.TYPE_3__*, %struct.TYPE_4__*) #1

declare dso_local i32 @omap_hsmmc_start_dma_transfer(%struct.omap_hsmmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
