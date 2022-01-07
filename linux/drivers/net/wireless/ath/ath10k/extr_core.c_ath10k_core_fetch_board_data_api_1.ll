; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_fetch_board_data_api_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_fetch_board_data_api_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.firmware*, i32, i32, %struct.firmware*, i32, i32 }
%struct.firmware = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ATH10K_BD_IE_BOARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to find board file fw entry\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATH10K_BD_IE_BOARD_EXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to find eboard file fw entry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32)* @ath10k_core_fetch_board_data_api_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_core_fetch_board_data_api_1(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.firmware*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @ATH10K_BD_IE_BOARD, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %70

10:                                               ; preds = %2
  %11 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %19 = call i32 @ath10k_err(%struct.ath10k* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %137

22:                                               ; preds = %10
  %23 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %24 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %25 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %30 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @ath10k_fetch_fw_file(%struct.ath10k* %23, i32 %28, i32 %33)
  %35 = bitcast i8* %34 to %struct.firmware*
  %36 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %37 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  store %struct.firmware* %35, %struct.firmware** %38, align 8
  %39 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %40 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load %struct.firmware*, %struct.firmware** %41, align 8
  %43 = call i64 @IS_ERR(%struct.firmware* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %22
  %46 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %47 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load %struct.firmware*, %struct.firmware** %48, align 8
  %50 = call i32 @PTR_ERR(%struct.firmware* %49)
  store i32 %50, i32* %3, align 4
  br label %137

51:                                               ; preds = %22
  %52 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %53 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load %struct.firmware*, %struct.firmware** %54, align 8
  %56 = getelementptr inbounds %struct.firmware, %struct.firmware* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %59 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 5
  store i32 %57, i32* %60, align 4
  %61 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %62 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load %struct.firmware*, %struct.firmware** %63, align 8
  %65 = getelementptr inbounds %struct.firmware, %struct.firmware* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %68 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 4
  store i32 %66, i32* %69, align 8
  br label %136

70:                                               ; preds = %2
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @ATH10K_BD_IE_BOARD_EXT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %135

74:                                               ; preds = %70
  %75 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %76 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %74
  %82 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %83 = call i32 @ath10k_err(%struct.ath10k* %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %137

86:                                               ; preds = %74
  %87 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %88 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %89 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %94 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @ath10k_fetch_fw_file(%struct.ath10k* %87, i32 %92, i32 %97)
  %99 = bitcast i8* %98 to %struct.firmware*
  store %struct.firmware* %99, %struct.firmware** %6, align 8
  %100 = load %struct.firmware*, %struct.firmware** %6, align 8
  %101 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %102 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store %struct.firmware* %100, %struct.firmware** %103, align 8
  %104 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %105 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load %struct.firmware*, %struct.firmware** %106, align 8
  %108 = call i64 @IS_ERR(%struct.firmware* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %86
  %111 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %112 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load %struct.firmware*, %struct.firmware** %113, align 8
  %115 = call i32 @PTR_ERR(%struct.firmware* %114)
  store i32 %115, i32* %3, align 4
  br label %137

116:                                              ; preds = %86
  %117 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %118 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load %struct.firmware*, %struct.firmware** %119, align 8
  %121 = getelementptr inbounds %struct.firmware, %struct.firmware* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %124 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  store i32 %122, i32* %125, align 4
  %126 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %127 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load %struct.firmware*, %struct.firmware** %128, align 8
  %130 = getelementptr inbounds %struct.firmware, %struct.firmware* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %133 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 8
  br label %135

135:                                              ; preds = %116, %70
  br label %136

136:                                              ; preds = %135, %51
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %110, %81, %45, %17
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*) #1

declare dso_local i8* @ath10k_fetch_fw_file(%struct.ath10k*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.firmware*) #1

declare dso_local i32 @PTR_ERR(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
