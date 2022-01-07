; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_set_clkreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_set_clkreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmci_host = type { i32, i32, %struct.TYPE_4__*, %struct.variant_data* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.variant_data = type { i32, i32, i32, i32, i64, i64 }

@MCI_CLK_BYPASS = common dso_local global i32 0, align 4
@MCI_ST_UX500_NEG_EDGE = common dso_local global i32 0, align 4
@MCI_CLK_ENABLE = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_4 = common dso_local global i64 0, align 8
@MCI_4BIT_BUS = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_8 = common dso_local global i64 0, align 8
@MMC_TIMING_UHS_DDR50 = common dso_local global i64 0, align 8
@MMC_TIMING_MMC_DDR52 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmci_host*, i32)* @mmci_set_clkreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmci_set_clkreg(%struct.mmci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.variant_data*, align 8
  %6 = alloca i32, align 4
  store %struct.mmci_host* %0, %struct.mmci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %8 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %7, i32 0, i32 3
  %9 = load %struct.variant_data*, %struct.variant_data** %8, align 8
  store %struct.variant_data* %9, %struct.variant_data** %5, align 8
  %10 = load %struct.variant_data*, %struct.variant_data** %5, align 8
  %11 = getelementptr inbounds %struct.variant_data, %struct.variant_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %14 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %106

17:                                               ; preds = %2
  %18 = load %struct.variant_data*, %struct.variant_data** %5, align 8
  %19 = getelementptr inbounds %struct.variant_data, %struct.variant_data* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %24 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %27 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %97

28:                                               ; preds = %17
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %31 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp uge i32 %29, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load i32, i32* @MCI_CLK_BYPASS, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.variant_data*, %struct.variant_data** %5, align 8
  %37 = getelementptr inbounds %struct.variant_data, %struct.variant_data* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @MCI_ST_UX500_NEG_EDGE, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %46 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %49 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %96

50:                                               ; preds = %28
  %51 = load %struct.variant_data*, %struct.variant_data** %5, align 8
  %52 = getelementptr inbounds %struct.variant_data, %struct.variant_data* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %57 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @DIV_ROUND_UP(i32 %58, i32 %59)
  %61 = sub nsw i32 %60, 2
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp sge i32 %62, 256
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store i32 255, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %55
  %66 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %67 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 2
  %71 = sdiv i32 %68, %70
  %72 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %73 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %95

74:                                               ; preds = %50
  %75 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %76 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %4, align 4
  %79 = mul i32 2, %78
  %80 = udiv i32 %77, %79
  %81 = sub i32 %80, 1
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp sge i32 %82, 256
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  store i32 255, i32* %6, align 4
  br label %85

85:                                               ; preds = %84, %74
  %86 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %87 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  %91 = mul nsw i32 2, %90
  %92 = sdiv i32 %88, %91
  %93 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %94 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %85, %65
  br label %96

96:                                               ; preds = %95, %44
  br label %97

97:                                               ; preds = %96, %22
  %98 = load %struct.variant_data*, %struct.variant_data** %5, align 8
  %99 = getelementptr inbounds %struct.variant_data, %struct.variant_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* @MCI_CLK_ENABLE, align 4
  %104 = load i32, i32* %6, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %97, %2
  %107 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %108 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %111 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %110, i32 0, i32 2
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %109, i32* %113, align 8
  %114 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %115 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %114, i32 0, i32 2
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @MMC_BUS_WIDTH_4, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %106
  %123 = load i32, i32* @MCI_4BIT_BUS, align 4
  %124 = load i32, i32* %6, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %122, %106
  %127 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %128 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %127, i32 0, i32 2
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @MMC_BUS_WIDTH_8, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %126
  %136 = load %struct.variant_data*, %struct.variant_data** %5, align 8
  %137 = getelementptr inbounds %struct.variant_data, %struct.variant_data* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %135, %126
  %142 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %143 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %142, i32 0, i32 2
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @MMC_TIMING_UHS_DDR50, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %159, label %150

150:                                              ; preds = %141
  %151 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %152 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %151, i32 0, i32 2
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @MMC_TIMING_MMC_DDR52, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %150, %141
  %160 = load %struct.variant_data*, %struct.variant_data** %5, align 8
  %161 = getelementptr inbounds %struct.variant_data, %struct.variant_data* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %6, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %159, %150
  %166 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @mmci_write_clkreg(%struct.mmci_host* %166, i32 %167)
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @mmci_write_clkreg(%struct.mmci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
