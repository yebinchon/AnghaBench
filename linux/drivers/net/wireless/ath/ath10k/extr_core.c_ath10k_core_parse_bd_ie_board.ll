; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_parse_bd_ie_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_parse_bd_ie_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i8*, i8* }
%struct.ath10k_fw_ie = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"invalid ATH10K_BD_IE_BOARD length: %zu < %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"board name\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"boot found match for name '%s'\00", align 1
@ATH10K_BD_IE_BOARD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"boot found board data for '%s'\00", align 1
@ATH10K_BD_IE_BOARD_EXT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"boot found eboard data for '%s'\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"unknown ATH10K_BD_IE_BOARD found: %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i8*, i64, i8*, i32)* @ath10k_core_parse_bd_ie_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_core_parse_bd_ie_board(%struct.ath10k* %0, i8* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ath10k_fw_ie*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %123, %5
  %18 = load i64, i64* %8, align 8
  %19 = icmp ugt i64 %18, 16
  br i1 %19, label %20, label %132

20:                                               ; preds = %17
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.ath10k_fw_ie*
  store %struct.ath10k_fw_ie* %22, %struct.ath10k_fw_ie** %11, align 8
  %23 = load %struct.ath10k_fw_ie*, %struct.ath10k_fw_ie** %11, align 8
  %24 = getelementptr inbounds %struct.ath10k_fw_ie, %struct.ath10k_fw_ie* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @le32_to_cpu(i32 %25)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = load %struct.ath10k_fw_ie*, %struct.ath10k_fw_ie** %11, align 8
  %29 = getelementptr inbounds %struct.ath10k_fw_ie, %struct.ath10k_fw_ie* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @le32_to_cpu(i32 %30)
  %32 = ptrtoint i8* %31 to i64
  store i64 %32, i64* %15, align 8
  %33 = load %struct.ath10k_fw_ie*, %struct.ath10k_fw_ie** %11, align 8
  %34 = getelementptr inbounds %struct.ath10k_fw_ie, %struct.ath10k_fw_ie* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %16, align 8
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %36, 16
  store i64 %37, i64* %8, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr i8, i8* %38, i64 16
  store i8* %39, i8** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %15, align 8
  %42 = call i64 @ALIGN(i64 %41, i32 4)
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %20
  %45 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %15, align 8
  %48 = call i64 @ALIGN(i64 %47, i32 4)
  %49 = call i32 @ath10k_err(%struct.ath10k* %45, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %46, i64 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %13, align 4
  br label %135

52:                                               ; preds = %20
  %53 = load i32, i32* %14, align 4
  switch i32 %53, label %119 [
    i32 128, label %54
    i32 129, label %79
  ]

54:                                               ; preds = %52
  %55 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %56 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %57 = load i8*, i8** %16, align 8
  %58 = load i64, i64* %15, align 8
  %59 = call i32 @ath10k_dbg_dump(%struct.ath10k* %55, i32 %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* %57, i64 %58)
  %60 = load i64, i64* %15, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = icmp ne i64 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %123

65:                                               ; preds = %54
  %66 = load i8*, i8** %16, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i64 @strlen(i8* %68)
  %70 = call i32 @memcmp(i8* %66, i8* %67, i64 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %123

74:                                               ; preds = %65
  store i32 1, i32* %12, align 4
  %75 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %76 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @ath10k_dbg(%struct.ath10k* %75, i32 %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  br label %123

79:                                               ; preds = %52
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  br label %123

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @ATH10K_BD_IE_BOARD, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %89 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @ath10k_dbg(%struct.ath10k* %88, i32 %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %90)
  %92 = load i8*, i8** %16, align 8
  %93 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %94 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  store i8* %92, i8** %95, align 8
  %96 = load i64, i64* %15, align 8
  %97 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %98 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i64 %96, i64* %99, align 8
  br label %118

100:                                              ; preds = %83
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @ATH10K_BD_IE_BOARD_EXT, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %100
  %105 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %106 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @ath10k_dbg(%struct.ath10k* %105, i32 %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %107)
  %109 = load i8*, i8** %16, align 8
  %110 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %111 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  store i8* %109, i8** %112, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %115 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i64 %113, i64* %116, align 8
  br label %117

117:                                              ; preds = %104, %100
  br label %118

118:                                              ; preds = %117, %87
  store i32 0, i32* %13, align 4
  br label %135

119:                                              ; preds = %52
  %120 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @ath10k_warn(%struct.ath10k* %120, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %119, %82, %74, %73, %64
  %124 = load i64, i64* %15, align 8
  %125 = call i64 @ALIGN(i64 %124, i32 4)
  store i64 %125, i64* %15, align 8
  %126 = load i64, i64* %15, align 8
  %127 = load i64, i64* %8, align 8
  %128 = sub i64 %127, %126
  store i64 %128, i64* %8, align 8
  %129 = load i64, i64* %15, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = getelementptr i8, i8* %130, i64 %129
  store i8* %131, i8** %7, align 8
  br label %17

132:                                              ; preds = %17
  %133 = load i32, i32* @ENOENT, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %13, align 4
  br label %135

135:                                              ; preds = %132, %118, %44
  %136 = load i32, i32* %13, align 4
  ret i32 %136
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i64, i64) #1

declare dso_local i32 @ath10k_dbg_dump(%struct.ath10k*, i32, i8*, i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i8*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
