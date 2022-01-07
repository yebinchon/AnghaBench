; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_set_data_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_set_data_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_data = type { i32, i32, i32 }
%struct.mmc_card = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_set_data_timeout(%struct.mmc_data* %0, %struct.mmc_card* %1) #0 {
  %3 = alloca %struct.mmc_data*, align 8
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_data* %0, %struct.mmc_data** %3, align 8
  store %struct.mmc_card* %1, %struct.mmc_card** %4, align 8
  %8 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %9 = call i64 @mmc_card_sdio(%struct.mmc_card* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %13 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %12, i32 0, i32 0
  store i32 1000000000, i32* %13, align 4
  %14 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  br label %159

16:                                               ; preds = %2
  %17 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %18 = call i64 @mmc_card_sd(%struct.mmc_card* %17)
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 100, i32 10
  store i32 %21, i32* %5, align 4
  %22 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %23 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MMC_DATA_WRITE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %16
  %29 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %28, %16
  %36 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %37 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = mul i32 %39, %40
  %42 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %43 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = mul i32 %47, %48
  %50 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %51 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %53 = call i64 @mmc_card_sd(%struct.mmc_card* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %111

55:                                               ; preds = %35
  %56 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %57 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 1000
  store i32 %59, i32* %6, align 4
  %60 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %61 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %55
  %68 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %69 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul i32 %70, 1000
  %72 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %73 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %77, 1000
  %79 = udiv i32 %71, %78
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %67, %55
  %83 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %84 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MMC_DATA_WRITE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 3000000, i32* %7, align 4
  br label %91

90:                                               ; preds = %82
  store i32 100000, i32* %7, align 4
  br label %91

91:                                               ; preds = %90, %89
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ugt i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load i32, i32* %7, align 4
  %97 = mul i32 %96, 1000
  %98 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %99 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %101 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %100, i32 0, i32 1
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %95, %91
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32, i32* %7, align 4
  %107 = mul i32 %106, 1000
  %108 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %109 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %105, %102
  br label %111

111:                                              ; preds = %110, %35
  %112 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %113 = call i64 @mmc_card_long_read_time(%struct.mmc_card* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %111
  %116 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %117 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @MMC_DATA_READ, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %124 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %123, i32 0, i32 0
  store i32 600000000, i32* %124, align 4
  %125 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %126 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  br label %127

127:                                              ; preds = %122, %115, %111
  %128 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %129 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = call i64 @mmc_host_is_spi(%struct.TYPE_6__* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %159

133:                                              ; preds = %127
  %134 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %135 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @MMC_DATA_WRITE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %133
  %141 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %142 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %143, 1000000000
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %147 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %146, i32 0, i32 0
  store i32 1000000000, i32* %147, align 4
  br label %148

148:                                              ; preds = %145, %140
  br label %158

149:                                              ; preds = %133
  %150 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %151 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %152, 100000000
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %156 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %155, i32 0, i32 0
  store i32 100000000, i32* %156, align 4
  br label %157

157:                                              ; preds = %154, %149
  br label %158

158:                                              ; preds = %157, %148
  br label %159

159:                                              ; preds = %11, %158, %127
  ret void
}

declare dso_local i64 @mmc_card_sdio(%struct.mmc_card*) #1

declare dso_local i64 @mmc_card_sd(%struct.mmc_card*) #1

declare dso_local i64 @mmc_card_long_read_time(%struct.mmc_card*) #1

declare dso_local i64 @mmc_host_is_spi(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
