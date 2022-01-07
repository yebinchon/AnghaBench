; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_fetch_board_data_api_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_fetch_board_data_api_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32* }

@ATH10K_BOARD_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"failed to find magic value in %s/%s, file too short: %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"found invalid board magic\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"failed: %s/%s too small to contain board data, len: %zu\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"failed to fetch board data for %s from %s/%s\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i8*, i8*, i8*)* @ath10k_core_fetch_board_data_api_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_core_fetch_board_data_api_n(%struct.ath10k* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %4
  %20 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %21 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %22 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call %struct.TYPE_10__* @ath10k_fetch_fw_file(%struct.ath10k* %20, i32 %25, i8* %26)
  %28 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %29 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %30, align 8
  br label %31

31:                                               ; preds = %19, %4
  %32 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %33 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = call i64 @IS_ERR(%struct.TYPE_10__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %40 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = call i32 @PTR_ERR(%struct.TYPE_10__* %42)
  store i32 %43, i32* %5, align 4
  br label %156

44:                                               ; preds = %31
  %45 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %46 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %12, align 8
  %51 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %52 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %10, align 8
  %57 = load i32, i32* @ATH10K_BOARD_MAGIC, align 4
  %58 = call i32 @strlen(i32 %57)
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %44
  %65 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %66 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %67 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %65, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %70, i8* %71, i64 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %13, align 4
  br label %152

76:                                               ; preds = %44
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* @ATH10K_BOARD_MAGIC, align 4
  %79 = load i64, i64* %11, align 8
  %80 = call i64 @memcmp(i32* %77, i32 %78, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %84 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %13, align 4
  br label %152

87:                                               ; preds = %76
  %88 = load i64, i64* %11, align 8
  %89 = call i64 @ALIGN(i64 %88, i32 4)
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %11, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %87
  %94 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %95 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %96 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %94, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %99, i8* %100, i64 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %13, align 4
  br label %152

105:                                              ; preds = %87
  %106 = load i64, i64* %11, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 %106
  store i32* %108, i32** %12, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* %10, align 8
  %111 = sub i64 %110, %109
  store i64 %111, i64* %10, align 8
  %112 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = load i64, i64* %10, align 8
  %116 = call i32 @ath10k_core_search_bd(%struct.ath10k* %112, i8* %113, i32* %114, i64 %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @ENOENT, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %105
  %122 = load i8*, i8** %8, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = load i32*, i32** %12, align 8
  %128 = load i64, i64* %10, align 8
  %129 = call i32 @ath10k_core_search_bd(%struct.ath10k* %125, i8* %126, i32* %127, i64 %128)
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %124, %121, %105
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @ENOENT, align 4
  %133 = sub nsw i32 0, %132
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %130
  %136 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %139 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %136, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %137, i32 %142, i8* %143)
  %145 = load i32, i32* @ENODATA, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %13, align 4
  br label %147

147:                                              ; preds = %135, %130
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  br label %152

151:                                              ; preds = %147
  store i32 0, i32* %5, align 4
  br label %156

152:                                              ; preds = %150, %93, %82, %64
  %153 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %154 = call i32 @ath10k_core_free_board_files(%struct.ath10k* %153)
  %155 = load i32, i32* %13, align 4
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %152, %151, %38
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local %struct.TYPE_10__* @ath10k_fetch_fw_file(%struct.ath10k*, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, ...) #1

declare dso_local i64 @memcmp(i32*, i32, i64) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @ath10k_core_search_bd(%struct.ath10k*, i8*, i32*, i64) #1

declare dso_local i32 @ath10k_core_free_board_files(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
