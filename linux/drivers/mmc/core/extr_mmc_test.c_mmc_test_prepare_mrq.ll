; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_prepare_mrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_prepare_mrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { i32 }
%struct.mmc_request = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.scatterlist*, i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.scatterlist = type { i32 }

@MMC_WRITE_MULTIPLE_BLOCK = common dso_local global i32 0, align 4
@MMC_READ_MULTIPLE_BLOCK = common dso_local global i32 0, align 4
@MMC_WRITE_BLOCK = common dso_local global i32 0, align 4
@MMC_READ_SINGLE_BLOCK = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_ADTC = common dso_local global i32 0, align 4
@MMC_STOP_TRANSMISSION = common dso_local global i32 0, align 4
@MMC_RSP_R1B = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_test_card*, %struct.mmc_request*, %struct.scatterlist*, i32, i32, i32, i32, i32)* @mmc_test_prepare_mrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_test_prepare_mrq(%struct.mmc_test_card* %0, %struct.mmc_request* %1, %struct.scatterlist* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.mmc_test_card*, align 8
  %10 = alloca %struct.mmc_request*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %9, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %10, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %18 = icmp ne %struct.mmc_request* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %8
  %20 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %21 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %26 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %31 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %24, %19, %8
  %36 = phi i1 [ true, %24 ], [ true, %19 ], [ true, %8 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %162

41:                                               ; preds = %35
  %42 = load i32, i32* %14, align 4
  %43 = icmp ugt i32 %42, 1
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @MMC_WRITE_MULTIPLE_BLOCK, align 4
  br label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @MMC_READ_MULTIPLE_BLOCK, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %54 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 %52, i32* %56, align 4
  br label %70

57:                                               ; preds = %41
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @MMC_WRITE_BLOCK, align 4
  br label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @MMC_READ_SINGLE_BLOCK, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %67 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %51
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %73 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 4
  %76 = load %struct.mmc_test_card*, %struct.mmc_test_card** %9, align 8
  %77 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @mmc_card_blockaddr(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %70
  %82 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %83 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 9
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %81, %70
  %89 = load i32, i32* @MMC_RSP_R1, align 4
  %90 = load i32, i32* @MMC_CMD_ADTC, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %93 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 %91, i32* %95, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %100 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %99, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %100, align 8
  br label %118

101:                                              ; preds = %88
  %102 = load i32, i32* @MMC_STOP_TRANSMISSION, align 4
  %103 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %104 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  store i32 %102, i32* %106, align 8
  %107 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %108 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %107, i32 0, i32 1
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  %111 = load i32, i32* @MMC_RSP_R1B, align 4
  %112 = load i32, i32* @MMC_CMD_AC, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %115 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %114, i32 0, i32 1
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i32 %113, i32* %117, align 8
  br label %118

118:                                              ; preds = %101, %98
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %121 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i32 %119, i32* %123, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %126 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store i32 %124, i32* %128, align 4
  %129 = load i32, i32* %16, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %118
  %132 = load i32, i32* @MMC_DATA_WRITE, align 4
  br label %135

133:                                              ; preds = %118
  %134 = load i32, i32* @MMC_DATA_READ, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  %137 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %138 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 4
  store i32 %136, i32* %140, align 8
  %141 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %142 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %143 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %142, i32 0, i32 0
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  store %struct.scatterlist* %141, %struct.scatterlist** %145, align 8
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %148 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %147, i32 0, i32 0
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  store i32 %146, i32* %150, align 8
  %151 = load %struct.mmc_test_card*, %struct.mmc_test_card** %9, align 8
  %152 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %153 = load i32, i32* %14, align 4
  %154 = call i32 @mmc_test_prepare_sbc(%struct.mmc_test_card* %151, %struct.mmc_request* %152, i32 %153)
  %155 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %156 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %155, i32 0, i32 0
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load %struct.mmc_test_card*, %struct.mmc_test_card** %9, align 8
  %159 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @mmc_set_data_timeout(%struct.TYPE_6__* %157, i32 %160)
  br label %162

162:                                              ; preds = %135, %40
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mmc_card_blockaddr(i32) #1

declare dso_local i32 @mmc_test_prepare_sbc(%struct.mmc_test_card*, %struct.mmc_request*, i32) #1

declare dso_local i32 @mmc_set_data_timeout(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
