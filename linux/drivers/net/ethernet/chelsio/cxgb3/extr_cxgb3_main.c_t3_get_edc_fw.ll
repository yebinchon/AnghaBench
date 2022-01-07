; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_t3_get_edc_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_t3_get_edc_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32*, %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"could not upgrade firmware: unable to load %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"firmware image too large %u, expected %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"corrupted firmware image, checksum %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_get_edc_fw(%struct.cphy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cphy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.cphy*, %struct.cphy** %5, align 8
  %17 = getelementptr inbounds %struct.cphy, %struct.cphy* %16, i32 0, i32 1
  %18 = load %struct.adapter*, %struct.adapter** %17, align 8
  store %struct.adapter* %18, %struct.adapter** %8, align 8
  %19 = load %struct.cphy*, %struct.cphy** %5, align 8
  %20 = getelementptr inbounds %struct.cphy, %struct.cphy* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %13, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i8* @get_edc_fw_name(i32 %24)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load i8*, i8** %10, align 8
  %30 = load %struct.adapter*, %struct.adapter** %8, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @request_firmware(%struct.firmware** %9, i8* %29, i32* %33)
  store i32 %34, i32* %15, align 4
  br label %35

35:                                               ; preds = %28, %3
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.adapter*, %struct.adapter** %8, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %4, align 4
  br label %133

46:                                               ; preds = %35
  %47 = load %struct.firmware*, %struct.firmware** %9, align 8
  %48 = getelementptr inbounds %struct.firmware, %struct.firmware* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 4
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load %struct.adapter*, %struct.adapter** %8, align 8
  %55 = load %struct.firmware*, %struct.firmware** %9, align 8
  %56 = getelementptr inbounds %struct.firmware, %struct.firmware* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 4
  %60 = call i32 (%struct.adapter*, i8*, i32, ...) @CH_ERR(%struct.adapter* %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %53, %46
  %64 = load %struct.firmware*, %struct.firmware** %9, align 8
  %65 = getelementptr inbounds %struct.firmware, %struct.firmware* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  store i32* %67, i32** %12, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %88, %63
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.firmware*, %struct.firmware** %9, align 8
  %72 = getelementptr inbounds %struct.firmware, %struct.firmware* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = udiv i64 %74, 4
  %76 = icmp ult i64 %70, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %68
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @ntohl(i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %77
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %68

91:                                               ; preds = %68
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.adapter*, %struct.adapter** %8, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 (%struct.adapter*, i8*, i32, ...) @CH_ERR(%struct.adapter* %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %94, %91
  store i32 0, i32* %14, align 4
  br label %101

101:                                              ; preds = %126, %100
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %7, align 4
  %104 = sdiv i32 %103, 4
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %129

106:                                              ; preds = %101
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @be32_to_cpu(i32 %111)
  %113 = and i32 %112, -65536
  %114 = lshr i32 %113, 16
  %115 = load i32*, i32** %13, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %13, align 8
  store i32 %114, i32* %115, align 4
  %117 = load i32*, i32** %12, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @be32_to_cpu(i32 %121)
  %123 = and i32 %122, 65535
  %124 = load i32*, i32** %13, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %13, align 8
  store i32 %123, i32* %124, align 4
  br label %126

126:                                              ; preds = %106
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %101

129:                                              ; preds = %101
  %130 = load %struct.firmware*, %struct.firmware** %9, align 8
  %131 = call i32 @release_firmware(%struct.firmware* %130)
  %132 = load i32, i32* %15, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %129, %38
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i8* @get_edc_fw_name(i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*, i32, ...) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
