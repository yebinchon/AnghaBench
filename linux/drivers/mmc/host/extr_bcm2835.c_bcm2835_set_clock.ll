; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_host = type { i32, i32, i32, i64 }
%struct.mmc_host = type { i32, i32 }

@SDCDIV_MAX_CDIV = common dso_local global i32 0, align 4
@SDCDIV = common dso_local global i64 0, align 8
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@SDTOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_host*, i32)* @bcm2835_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_set_clock(%struct.bcm2835_host* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm2835_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca i32, align 4
  store %struct.bcm2835_host* %0, %struct.bcm2835_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %8 = call %struct.mmc_host* @mmc_from_priv(%struct.bcm2835_host* %7)
  store %struct.mmc_host* %8, %struct.mmc_host** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ult i32 %9, 100000
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i32, i32* @SDCDIV_MAX_CDIV, align 4
  %13 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %14 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %16 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %19 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SDCDIV, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  br label %97

24:                                               ; preds = %2
  %25 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %26 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = udiv i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 2, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %24
  %34 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %35 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = udiv i32 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %33
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, 2
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @SDCDIV_MAX_CDIV, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @SDCDIV_MAX_CDIV, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %50, %44
  %53 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %54 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 2
  %58 = udiv i32 %55, %57
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %61 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %4, align 4
  %63 = udiv i32 1000000000, %62
  %64 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %65 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 8, i32 32
  %72 = mul i32 %63, %71
  %73 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %74 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %77 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %79 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %82 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SDCDIV, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  %87 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %88 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = udiv i32 %89, 2
  %91 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %92 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SDTOUT, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writel(i32 %90, i64 %95)
  br label %97

97:                                               ; preds = %52, %11
  ret void
}

declare dso_local %struct.mmc_host* @mmc_from_priv(%struct.bcm2835_host*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
