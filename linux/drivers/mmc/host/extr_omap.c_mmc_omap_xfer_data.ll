; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_xfer_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_xfer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { i32, i64, i64, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_host*, i32)* @mmc_omap_xfer_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_xfer_data(%struct.mmc_omap_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_omap_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %13 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %20 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %26 = call i32 @mmc_omap_sg_to_buf(%struct.mmc_omap_host* %25)
  br label %27

27:                                               ; preds = %11, %2
  store i32 64, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %30 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %35 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @DIV_ROUND_UP(i32 %38, i32 2)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %47 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %52 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %51, i32 0, i32 6
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %50
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %37
  %60 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %61 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %64 = load i32, i32* @DATA, align 4
  %65 = call i64 @OMAP_MMC_REG(%struct.mmc_omap_host* %63, i32 %64)
  %66 = add nsw i64 %62, %65
  %67 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %68 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @__raw_writesw(i64 %66, i32 %69, i32 %70)
  br label %85

72:                                               ; preds = %37
  %73 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %74 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %77 = load i32, i32* @DATA, align 4
  %78 = call i64 @OMAP_MMC_REG(%struct.mmc_omap_host* %76, i32 %77)
  %79 = add nsw i64 %75, %78
  %80 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %81 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @__raw_readsw(i64 %79, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %72, %59
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %88 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, %86
  store i32 %90, i32* %88, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mmc_omap_sg_to_buf(%struct.mmc_omap_host*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @__raw_writesw(i64, i32, i32) #1

declare dso_local i64 @OMAP_MMC_REG(%struct.mmc_omap_host*, i32) #1

declare dso_local i32 @__raw_readsw(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
