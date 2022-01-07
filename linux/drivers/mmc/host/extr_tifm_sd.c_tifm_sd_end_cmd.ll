; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_end_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_end_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_sd = type { i32, i64, %struct.mmc_request*, i32, %struct.tifm_dev* }
%struct.mmc_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32* }
%struct.tifm_dev = type { i32, i64, i32 }
%struct.mmc_host = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c" %s : no request to complete?\0A\00", align 1
@TIFM_MMCSD_BUFINT = common dso_local global i32 0, align 4
@SOCK_MMCSD_INT_ENABLE = common dso_local global i64 0, align 8
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@SOCK_MMCSD_NUM_BLOCKS = common dso_local global i64 0, align 8
@SOCK_MMCSD_BLOCK_LEN = common dso_local global i64 0, align 8
@TIFM_CTRL_LED = common dso_local global i32 0, align 4
@SOCK_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @tifm_sd_end_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tifm_sd_end_cmd(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tifm_sd*, align 8
  %4 = alloca %struct.tifm_dev*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca %struct.mmc_request*, align 8
  %7 = alloca %struct.mmc_data*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.tifm_sd*
  store %struct.tifm_sd* %10, %struct.tifm_sd** %3, align 8
  %11 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %12 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %11, i32 0, i32 4
  %13 = load %struct.tifm_dev*, %struct.tifm_dev** %12, align 8
  store %struct.tifm_dev* %13, %struct.tifm_dev** %4, align 8
  %14 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %15 = call %struct.mmc_host* @tifm_get_drvdata(%struct.tifm_dev* %14)
  store %struct.mmc_host* %15, %struct.mmc_host** %5, align 8
  store %struct.mmc_data* null, %struct.mmc_data** %7, align 8
  %16 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %17 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %21 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %20, i32 0, i32 3
  %22 = call i32 @del_timer(i32* %21)
  %23 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %24 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %23, i32 0, i32 2
  %25 = load %struct.mmc_request*, %struct.mmc_request** %24, align 8
  store %struct.mmc_request* %25, %struct.mmc_request** %6, align 8
  %26 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %27 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %26, i32 0, i32 2
  store %struct.mmc_request* null, %struct.mmc_request** %27, align 8
  %28 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %29 = icmp ne %struct.mmc_request* %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %1
  %31 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %32 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %31, i32 0, i32 2
  %33 = call i32 @dev_name(i32* %32)
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %36 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  br label %164

39:                                               ; preds = %1
  %40 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %41 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.mmc_data*, %struct.mmc_data** %43, align 8
  store %struct.mmc_data* %44, %struct.mmc_data** %7, align 8
  %45 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %46 = icmp ne %struct.mmc_data* %45, null
  br i1 %46, label %47, label %141

47:                                               ; preds = %39
  %48 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %49 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load i32, i32* @TIFM_MMCSD_BUFINT, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %56 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SOCK_MMCSD_INT_ENABLE, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readl(i64 %59)
  %61 = and i32 %54, %60
  %62 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %63 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SOCK_MMCSD_INT_ENABLE, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  br label %105

68:                                               ; preds = %47
  %69 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %70 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %71 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %70, i32 0, i32 0
  %72 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %73 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MMC_DATA_WRITE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %82

80:                                               ; preds = %68
  %81 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = call i32 @tifm_unmap_sg(%struct.tifm_dev* %69, i32* %71, i32 1, i32 %83)
  %85 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %86 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %87 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %86, i32 0, i32 5
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %90 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %93 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @MMC_DATA_WRITE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %82
  %99 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %102

100:                                              ; preds = %82
  %101 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  %104 = call i32 @tifm_unmap_sg(%struct.tifm_dev* %85, i32* %88, i32 %91, i32 %103)
  br label %105

105:                                              ; preds = %102, %52
  %106 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %107 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %110 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @SOCK_MMCSD_NUM_BLOCKS, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @readl(i64 %113)
  %115 = sub nsw i32 %108, %114
  %116 = sub nsw i32 %115, 1
  %117 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %118 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %120 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %123 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = mul nsw i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %127 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %130 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SOCK_MMCSD_BLOCK_LEN, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @readl(i64 %133)
  %135 = sub nsw i32 %128, %134
  %136 = add nsw i32 %135, 1
  %137 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %138 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %105, %39
  %142 = load i32, i32* @TIFM_CTRL_LED, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %145 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @SOCK_CONTROL, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @readl(i64 %148)
  %150 = and i32 %143, %149
  %151 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %152 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @SOCK_CONTROL, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @writel(i32 %150, i64 %155)
  %157 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %158 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %157, i32 0, i32 0
  %159 = load i64, i64* %8, align 8
  %160 = call i32 @spin_unlock_irqrestore(i32* %158, i64 %159)
  %161 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %162 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %163 = call i32 @mmc_request_done(%struct.mmc_host* %161, %struct.mmc_request* %162)
  br label %164

164:                                              ; preds = %141, %30
  ret void
}

declare dso_local %struct.mmc_host* @tifm_get_drvdata(%struct.tifm_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @tifm_unmap_sg(%struct.tifm_dev*, i32*, i32, i32) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
