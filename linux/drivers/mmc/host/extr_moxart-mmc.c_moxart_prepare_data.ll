; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_moxart-mmc.c_moxart_prepare_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_moxart-mmc.c_moxart_prepare_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moxart_host = type { i32, i32, i32, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32 }

@DCR_DATA_EN = common dso_local global i32 0, align 4
@DCR_BLK_SIZE = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@DCR_DATA_WRITE = common dso_local global i32 0, align 4
@DCR_DMA_EN = common dso_local global i32 0, align 4
@DCR_DATA_FIFO_RESET = common dso_local global i32 0, align 4
@REG_DATA_CONTROL = common dso_local global i64 0, align 8
@MASK_DATA = common dso_local global i32 0, align 4
@FIFO_URUN = common dso_local global i32 0, align 4
@FIFO_ORUN = common dso_local global i32 0, align 4
@REG_CLEAR = common dso_local global i64 0, align 8
@REG_DATA_TIMER = common dso_local global i64 0, align 8
@REG_DATA_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.moxart_host*)* @moxart_prepare_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moxart_prepare_data(%struct.moxart_host* %0) #0 {
  %2 = alloca %struct.moxart_host*, align 8
  %3 = alloca %struct.mmc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.moxart_host* %0, %struct.moxart_host** %2, align 8
  %6 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %7 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %6, i32 0, i32 5
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.mmc_data*, %struct.mmc_data** %11, align 8
  store %struct.mmc_data* %12, %struct.mmc_data** %3, align 8
  %13 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %14 = icmp ne %struct.mmc_data* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %118

16:                                               ; preds = %1
  %17 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %18 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %25 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %27 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ffs(i32 %28)
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 1, %31
  %33 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %34 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %40 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %41 = call i32 @moxart_init_sg(%struct.moxart_host* %39, %struct.mmc_data* %40)
  %42 = load i32, i32* @DCR_DATA_EN, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @DCR_BLK_SIZE, align 4
  %45 = and i32 %43, %44
  %46 = or i32 %42, %45
  store i32 %46, i32* %4, align 4
  %47 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %48 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MMC_DATA_WRITE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %16
  %54 = load i32, i32* @DCR_DATA_WRITE, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %16
  %58 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %59 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %62 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %67 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @DCR_DMA_EN, align 4
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %65, %57
  %75 = load i32, i32* @DCR_DATA_FIFO_RESET, align 4
  %76 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %77 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @REG_DATA_CONTROL, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  %82 = load i32, i32* @MASK_DATA, align 4
  %83 = load i32, i32* @FIFO_URUN, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @FIFO_ORUN, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %88 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @REG_CLEAR, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  %93 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %94 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %97 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @REG_DATA_TIMER, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i32 %95, i64 %100)
  %102 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %103 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %106 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @REG_DATA_LENGTH, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 %104, i64 %109)
  %111 = load i32, i32* %4, align 4
  %112 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %113 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @REG_DATA_CONTROL, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel(i32 %111, i64 %116)
  br label %118

118:                                              ; preds = %74, %15
  ret void
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @moxart_init_sg(%struct.moxart_host*, %struct.mmc_data*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
