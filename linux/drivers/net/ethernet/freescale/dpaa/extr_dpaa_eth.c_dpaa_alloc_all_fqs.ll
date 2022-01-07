; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_alloc_all_fqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_alloc_all_fqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.list_head = type { i32 }
%struct.fm_port_fqs = type { %struct.dpaa_fq*, %struct.dpaa_fq*, %struct.dpaa_fq*, %struct.dpaa_fq*, %struct.dpaa_fq* }
%struct.dpaa_fq = type { i32 }

@FQ_TYPE_RX_ERROR = common dso_local global i32 0, align 4
@FQ_TYPE_RX_DEFAULT = common dso_local global i32 0, align 4
@DPAA_ETH_PCD_RXQ_NUM = common dso_local global i32 0, align 4
@FQ_TYPE_RX_PCD = common dso_local global i32 0, align 4
@DPAA_ETH_TXQ_NUM = common dso_local global i32 0, align 4
@FQ_TYPE_TX_CONF_MQ = common dso_local global i32 0, align 4
@FQ_TYPE_TX_ERROR = common dso_local global i32 0, align 4
@FQ_TYPE_TX_CONFIRM = common dso_local global i32 0, align 4
@FQ_TYPE_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"dpaa_fq_alloc() failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.list_head*, %struct.fm_port_fqs*)* @dpaa_alloc_all_fqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_alloc_all_fqs(%struct.device* %0, %struct.list_head* %1, %struct.fm_port_fqs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.fm_port_fqs*, align 8
  %8 = alloca %struct.dpaa_fq*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store %struct.fm_port_fqs* %2, %struct.fm_port_fqs** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load %struct.list_head*, %struct.list_head** %6, align 8
  %14 = load i32, i32* @FQ_TYPE_RX_ERROR, align 4
  %15 = call %struct.dpaa_fq* @dpaa_fq_alloc(%struct.device* %12, i64 0, i32 1, %struct.list_head* %13, i32 %14)
  store %struct.dpaa_fq* %15, %struct.dpaa_fq** %8, align 8
  %16 = load %struct.dpaa_fq*, %struct.dpaa_fq** %8, align 8
  %17 = icmp ne %struct.dpaa_fq* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %130

19:                                               ; preds = %3
  %20 = load %struct.dpaa_fq*, %struct.dpaa_fq** %8, align 8
  %21 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %20, i64 0
  %22 = load %struct.fm_port_fqs*, %struct.fm_port_fqs** %7, align 8
  %23 = getelementptr inbounds %struct.fm_port_fqs, %struct.fm_port_fqs* %22, i32 0, i32 4
  store %struct.dpaa_fq* %21, %struct.dpaa_fq** %23, align 8
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load %struct.list_head*, %struct.list_head** %6, align 8
  %26 = load i32, i32* @FQ_TYPE_RX_DEFAULT, align 4
  %27 = call %struct.dpaa_fq* @dpaa_fq_alloc(%struct.device* %24, i64 0, i32 1, %struct.list_head* %25, i32 %26)
  store %struct.dpaa_fq* %27, %struct.dpaa_fq** %8, align 8
  %28 = load %struct.dpaa_fq*, %struct.dpaa_fq** %8, align 8
  %29 = icmp ne %struct.dpaa_fq* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %130

31:                                               ; preds = %19
  %32 = load %struct.dpaa_fq*, %struct.dpaa_fq** %8, align 8
  %33 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %32, i64 0
  %34 = load %struct.fm_port_fqs*, %struct.fm_port_fqs** %7, align 8
  %35 = getelementptr inbounds %struct.fm_port_fqs, %struct.fm_port_fqs* %34, i32 0, i32 3
  store %struct.dpaa_fq* %33, %struct.dpaa_fq** %35, align 8
  %36 = load i32, i32* @DPAA_ETH_PCD_RXQ_NUM, align 4
  %37 = mul nsw i32 2, %36
  %38 = call i64 @qman_alloc_fqid_range(i64* %9, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %130

41:                                               ; preds = %31
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* @DPAA_ETH_PCD_RXQ_NUM, align 4
  %44 = call i64 @ALIGN(i64 %42, i32 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %11, align 8
  br label %46

46:                                               ; preds = %53, %41
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @qman_release_fqid(i64 %51)
  br label %53

53:                                               ; preds = %50
  %54 = load i64, i64* %11, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %11, align 8
  br label %46

56:                                               ; preds = %46
  %57 = load i64, i64* %10, align 8
  %58 = load i32, i32* @DPAA_ETH_PCD_RXQ_NUM, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %72, %56
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i32, i32* @DPAA_ETH_PCD_RXQ_NUM, align 4
  %65 = mul nsw i32 2, %64
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %63, %66
  %68 = icmp slt i64 %62, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @qman_release_fqid(i64 %70)
  br label %72

72:                                               ; preds = %69
  %73 = load i64, i64* %11, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %11, align 8
  br label %61

75:                                               ; preds = %61
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* @DPAA_ETH_PCD_RXQ_NUM, align 4
  %79 = load %struct.list_head*, %struct.list_head** %6, align 8
  %80 = load i32, i32* @FQ_TYPE_RX_PCD, align 4
  %81 = call %struct.dpaa_fq* @dpaa_fq_alloc(%struct.device* %76, i64 %77, i32 %78, %struct.list_head* %79, i32 %80)
  store %struct.dpaa_fq* %81, %struct.dpaa_fq** %8, align 8
  %82 = load %struct.dpaa_fq*, %struct.dpaa_fq** %8, align 8
  %83 = icmp ne %struct.dpaa_fq* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %75
  br label %130

85:                                               ; preds = %75
  %86 = load %struct.dpaa_fq*, %struct.dpaa_fq** %8, align 8
  %87 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %86, i64 0
  %88 = load %struct.fm_port_fqs*, %struct.fm_port_fqs** %7, align 8
  %89 = getelementptr inbounds %struct.fm_port_fqs, %struct.fm_port_fqs* %88, i32 0, i32 2
  store %struct.dpaa_fq* %87, %struct.dpaa_fq** %89, align 8
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = load i32, i32* @DPAA_ETH_TXQ_NUM, align 4
  %92 = load %struct.list_head*, %struct.list_head** %6, align 8
  %93 = load i32, i32* @FQ_TYPE_TX_CONF_MQ, align 4
  %94 = call %struct.dpaa_fq* @dpaa_fq_alloc(%struct.device* %90, i64 0, i32 %91, %struct.list_head* %92, i32 %93)
  %95 = icmp ne %struct.dpaa_fq* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %85
  br label %130

97:                                               ; preds = %85
  %98 = load %struct.device*, %struct.device** %5, align 8
  %99 = load %struct.list_head*, %struct.list_head** %6, align 8
  %100 = load i32, i32* @FQ_TYPE_TX_ERROR, align 4
  %101 = call %struct.dpaa_fq* @dpaa_fq_alloc(%struct.device* %98, i64 0, i32 1, %struct.list_head* %99, i32 %100)
  store %struct.dpaa_fq* %101, %struct.dpaa_fq** %8, align 8
  %102 = load %struct.dpaa_fq*, %struct.dpaa_fq** %8, align 8
  %103 = icmp ne %struct.dpaa_fq* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %97
  br label %130

105:                                              ; preds = %97
  %106 = load %struct.dpaa_fq*, %struct.dpaa_fq** %8, align 8
  %107 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %106, i64 0
  %108 = load %struct.fm_port_fqs*, %struct.fm_port_fqs** %7, align 8
  %109 = getelementptr inbounds %struct.fm_port_fqs, %struct.fm_port_fqs* %108, i32 0, i32 1
  store %struct.dpaa_fq* %107, %struct.dpaa_fq** %109, align 8
  %110 = load %struct.device*, %struct.device** %5, align 8
  %111 = load %struct.list_head*, %struct.list_head** %6, align 8
  %112 = load i32, i32* @FQ_TYPE_TX_CONFIRM, align 4
  %113 = call %struct.dpaa_fq* @dpaa_fq_alloc(%struct.device* %110, i64 0, i32 1, %struct.list_head* %111, i32 %112)
  store %struct.dpaa_fq* %113, %struct.dpaa_fq** %8, align 8
  %114 = load %struct.dpaa_fq*, %struct.dpaa_fq** %8, align 8
  %115 = icmp ne %struct.dpaa_fq* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %105
  br label %130

117:                                              ; preds = %105
  %118 = load %struct.dpaa_fq*, %struct.dpaa_fq** %8, align 8
  %119 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %118, i64 0
  %120 = load %struct.fm_port_fqs*, %struct.fm_port_fqs** %7, align 8
  %121 = getelementptr inbounds %struct.fm_port_fqs, %struct.fm_port_fqs* %120, i32 0, i32 0
  store %struct.dpaa_fq* %119, %struct.dpaa_fq** %121, align 8
  %122 = load %struct.device*, %struct.device** %5, align 8
  %123 = load i32, i32* @DPAA_ETH_TXQ_NUM, align 4
  %124 = load %struct.list_head*, %struct.list_head** %6, align 8
  %125 = load i32, i32* @FQ_TYPE_TX, align 4
  %126 = call %struct.dpaa_fq* @dpaa_fq_alloc(%struct.device* %122, i64 0, i32 %123, %struct.list_head* %124, i32 %125)
  %127 = icmp ne %struct.dpaa_fq* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %117
  br label %130

129:                                              ; preds = %117
  store i32 0, i32* %4, align 4
  br label %135

130:                                              ; preds = %128, %116, %104, %96, %84, %40, %30, %18
  %131 = load %struct.device*, %struct.device** %5, align 8
  %132 = call i32 @dev_err(%struct.device* %131, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %130, %129
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.dpaa_fq* @dpaa_fq_alloc(%struct.device*, i64, i32, %struct.list_head*, i32) #1

declare dso_local i64 @qman_alloc_fqid_range(i64*, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @qman_release_fqid(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
