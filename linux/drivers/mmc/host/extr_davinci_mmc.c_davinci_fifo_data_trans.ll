; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_davinci_fifo_data_trans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_davinci_fifo_data_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_davinci_host = type { i32, i32, i64, i32*, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@DAVINCI_MMC_DATADIR_WRITE = common dso_local global i64 0, align 8
@DAVINCI_MMCDXR = common dso_local global i64 0, align 8
@DAVINCI_MMCDRR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_davinci_host*, i32)* @davinci_fifo_data_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davinci_fifo_data_trans(%struct.mmc_davinci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_davinci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_davinci_host* %0, %struct.mmc_davinci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %13 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %12, i32 0, i32 5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sg_next(i32 %16)
  %18 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %21 = call i32 @mmc_davinci_sg_to_buf(%struct.mmc_davinci_host* %20)
  br label %22

22:                                               ; preds = %11, %2
  %23 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %28 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ugt i32 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %33 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %22
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %38 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %43 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %47 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DAVINCI_MMC_DATADIR_WRITE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %91

51:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %68, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %4, align 4
  %55 = lshr i32 %54, 2
  %56 = icmp ult i32 %53, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %61 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DAVINCI_MMCDXR, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  store i32* %67, i32** %5, align 8
  br label %68

68:                                               ; preds = %57
  %69 = load i32, i32* %6, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %52

71:                                               ; preds = %52
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, 3
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %77 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DAVINCI_MMCDXR, align 8
  %80 = add nsw i64 %78, %79
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %4, align 4
  %83 = and i32 %82, 3
  %84 = call i32 @iowrite8_rep(i64 %80, i32* %81, i32 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %4, align 4
  %87 = and i32 %86, 3
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32* %89, i32** %5, align 8
  br label %90

90:                                               ; preds = %75, %71
  br label %130

91:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %107, %91
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %4, align 4
  %95 = lshr i32 %94, 2
  %96 = icmp ult i32 %93, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %99 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @DAVINCI_MMCDRR, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @readl(i64 %102)
  %104 = load i32*, i32** %5, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  store i32* %106, i32** %5, align 8
  br label %107

107:                                              ; preds = %97
  %108 = load i32, i32* %6, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %92

110:                                              ; preds = %92
  %111 = load i32, i32* %4, align 4
  %112 = and i32 %111, 3
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %110
  %115 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %116 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @DAVINCI_MMCDRR, align 8
  %119 = add nsw i64 %117, %118
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %4, align 4
  %122 = and i32 %121, 3
  %123 = call i32 @ioread8_rep(i64 %119, i32* %120, i32 %122)
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %4, align 4
  %126 = and i32 %125, 3
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  store i32* %128, i32** %5, align 8
  br label %129

129:                                              ; preds = %114, %110
  br label %130

130:                                              ; preds = %129, %90
  %131 = load i32*, i32** %5, align 8
  %132 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %133 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %132, i32 0, i32 3
  store i32* %131, i32** %133, align 8
  ret void
}

declare dso_local i32 @sg_next(i32) #1

declare dso_local i32 @mmc_davinci_sg_to_buf(%struct.mmc_davinci_host*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @iowrite8_rep(i64, i32*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @ioread8_rep(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
