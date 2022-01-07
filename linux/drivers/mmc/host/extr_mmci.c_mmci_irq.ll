; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmci_host = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64 }

@MMCISTATUS = common dso_local global i64 0, align 8
@MMCIMASK0 = common dso_local global i64 0, align 8
@MMCICLEAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"irq0 (data+cmd) %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mmci_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmci_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mmci_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.mmci_host*
  store %struct.mmci_host* %9, %struct.mmci_host** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %11 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  br label %13

13:                                               ; preds = %138, %2
  %14 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %15 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MMCISTATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %21 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %13
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %27 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @mmci_pio_irq(i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %31, %24
  %36 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %37 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %35, %13
  %45 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %46 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MMCIMASK0, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %54 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %44
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %62 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %60, %66
  %68 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %69 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MMCICLEAR, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  br label %82

74:                                               ; preds = %44
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %77 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MMCICLEAR, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  br label %82

82:                                               ; preds = %74, %59
  %83 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %84 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @mmc_dev(i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @dev_dbg(i32 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %90 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %82
  %96 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %97 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %98 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @mmci_data_irq(%struct.mmci_host* %96, i32 %99, i32 %100)
  %102 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %103 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %104 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @mmci_cmd_irq(%struct.mmci_host* %102, i32 %105, i32 %106)
  br label %121

108:                                              ; preds = %82
  %109 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %110 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %111 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @mmci_cmd_irq(%struct.mmci_host* %109, i32 %112, i32 %113)
  %115 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %116 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %117 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @mmci_data_irq(%struct.mmci_host* %115, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %108, %95
  %122 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %123 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %121
  %129 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %130 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %129, i32 0, i32 2
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %6, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %128, %121
  store i32 1, i32* %7, align 4
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %13, label %141

141:                                              ; preds = %138
  %142 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %143 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %142, i32 0, i32 1
  %144 = call i32 @spin_unlock(i32* %143)
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @IRQ_RETVAL(i32 %145)
  ret i32 %146
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mmci_pio_irq(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmci_data_irq(%struct.mmci_host*, i32, i32) #1

declare dso_local i32 @mmci_cmd_irq(%struct.mmci_host*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
