; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_config_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_config_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.hclge_dev = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.hclge_fd_key_cfg* }
%struct.hclge_fd_key_cfg = type { i32 }
%struct.hclge_fd_rule = type { i32, i32 }

@MAX_KEY_BYTES = common dso_local global i32 0, align 4
@MAX_TUPLE = common dso_local global i32 0, align 4
@tuple_key_info = common dso_local global %struct.TYPE_6__* null, align 8
@MAX_META_DATA_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"fd key_y config fail, loc=%d, ret=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"fd key_x config fail, loc=%d, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i64, %struct.hclge_fd_rule*)* @hclge_config_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_config_key(%struct.hclge_dev* %0, i64 %1, %struct.hclge_fd_rule* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hclge_fd_rule*, align 8
  %8 = alloca %struct.hclge_fd_key_cfg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hclge_fd_rule* %2, %struct.hclge_fd_rule** %7, align 8
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %22 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.hclge_fd_key_cfg*, %struct.hclge_fd_key_cfg** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.hclge_fd_key_cfg, %struct.hclge_fd_key_cfg* %24, i64 %25
  store %struct.hclge_fd_key_cfg* %26, %struct.hclge_fd_key_cfg** %8, align 8
  %27 = load i32, i32* @MAX_KEY_BYTES, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %9, align 8
  %30 = alloca i64, i64 %28, align 16
  store i64 %28, i64* %10, align 8
  %31 = load i32, i32* @MAX_KEY_BYTES, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i64, i64 %32, align 16
  store i64 %32, i64* %11, align 8
  %34 = mul nuw i64 8, %28
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(i64* %30, i32 0, i32 %35)
  %37 = mul nuw i64 8, %32
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memset(i64* %33, i32 0, i32 %38)
  store i64* %30, i64** %12, align 8
  store i64* %33, i64** %13, align 8
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %75, %3
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @MAX_TUPLE, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %78

44:                                               ; preds = %40
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tuple_key_info, align 8
  %46 = load i32, i32* %14, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %50, 8
  store i32 %51, i32* %16, align 4
  %52 = load %struct.hclge_fd_key_cfg*, %struct.hclge_fd_key_cfg** %8, align 8
  %53 = getelementptr inbounds %struct.hclge_fd_key_cfg, %struct.hclge_fd_key_cfg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = and i32 %54, %56
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load i64*, i64** %12, align 8
  %60 = load i64*, i64** %13, align 8
  %61 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %62 = call i32 @hclge_fd_convert_tuple(i32 %58, i64* %59, i64* %60, %struct.hclge_fd_rule* %61)
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %44
  %66 = load i32, i32* %16, align 4
  %67 = load i64*, i64** %12, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64* %69, i64** %12, align 8
  %70 = load i32, i32* %16, align 4
  %71 = load i64*, i64** %13, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64* %73, i64** %13, align 8
  br label %74

74:                                               ; preds = %65, %44
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %14, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %40

78:                                               ; preds = %40
  %79 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %80 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sdiv i32 %82, 8
  %84 = load i32, i32* @MAX_META_DATA_LENGTH, align 4
  %85 = sdiv i32 %84, 8
  %86 = sub nsw i32 %83, %85
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %17, align 8
  %88 = load %struct.hclge_fd_key_cfg*, %struct.hclge_fd_key_cfg** %8, align 8
  %89 = load i64, i64* %17, align 8
  %90 = getelementptr inbounds i64, i64* %30, i64 %89
  %91 = bitcast i64* %90 to i32*
  %92 = load i64, i64* %17, align 8
  %93 = getelementptr inbounds i64, i64* %33, i64 %92
  %94 = bitcast i64* %93 to i32*
  %95 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %96 = call i32 @hclge_fd_convert_meta_data(%struct.hclge_fd_key_cfg* %88, i32* %91, i32* %94, %struct.hclge_fd_rule* %95)
  %97 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %100 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @hclge_fd_tcam_config(%struct.hclge_dev* %97, i64 %98, i32 0, i32 %101, i64* %33, i32 1)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %78
  %106 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %107 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %111 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load i32, i32* %15, align 4
  store i32 %115, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %137

116:                                              ; preds = %78
  %117 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %120 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @hclge_fd_tcam_config(%struct.hclge_dev* %117, i64 %118, i32 1, i32 %121, i64* %30, i32 1)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %116
  %126 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %127 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %126, i32 0, i32 0
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %131 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @dev_err(i32* %129, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %125, %116
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %137

137:                                              ; preds = %135, %105
  %138 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @hclge_fd_convert_tuple(i32, i64*, i64*, %struct.hclge_fd_rule*) #2

declare dso_local i32 @hclge_fd_convert_meta_data(%struct.hclge_fd_key_cfg*, i32*, i32*, %struct.hclge_fd_rule*) #2

declare dso_local i32 @hclge_fd_tcam_config(%struct.hclge_dev*, i64, i32, i32, i64*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
