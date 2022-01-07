; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mng_tlv.c_qed_mfw_get_gen_tlv_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mng_tlv.c_qed_mfw_get_gen_tlv_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_drv_tlv_hdr = type { i32 }
%struct.qed_mfw_tlv_generic = type { i32**, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.qed_tlv_parsed_buf = type { i32*, i32* }

@QED_TLV_DATA_MAX = common dso_local global i32 0, align 4
@QED_MFW_TLV_FLAGS_SIZE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_drv_tlv_hdr*, %struct.qed_mfw_tlv_generic*, %struct.qed_tlv_parsed_buf*)* @qed_mfw_get_gen_tlv_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_mfw_get_gen_tlv_value(%struct.qed_drv_tlv_hdr* %0, %struct.qed_mfw_tlv_generic* %1, %struct.qed_tlv_parsed_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_drv_tlv_hdr*, align 8
  %6 = alloca %struct.qed_mfw_tlv_generic*, align 8
  %7 = alloca %struct.qed_tlv_parsed_buf*, align 8
  %8 = alloca i32, align 4
  store %struct.qed_drv_tlv_hdr* %0, %struct.qed_drv_tlv_hdr** %5, align 8
  store %struct.qed_mfw_tlv_generic* %1, %struct.qed_mfw_tlv_generic** %6, align 8
  store %struct.qed_tlv_parsed_buf* %2, %struct.qed_tlv_parsed_buf** %7, align 8
  %9 = load %struct.qed_drv_tlv_hdr*, %struct.qed_drv_tlv_hdr** %5, align 8
  %10 = getelementptr inbounds %struct.qed_drv_tlv_hdr, %struct.qed_drv_tlv_hdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %128 [
    i32 133, label %12
    i32 132, label %59
    i32 135, label %59
    i32 134, label %59
    i32 130, label %84
    i32 131, label %95
    i32 128, label %106
    i32 129, label %117
  ]

12:                                               ; preds = %3
  %13 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %6, align 8
  %14 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %13, i32 0, i32 10
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %12
  %19 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %20 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @QED_TLV_DATA_MAX, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memset(i32* %21, i32 0, i32 %25)
  %27 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %6, align 8
  %28 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %27, i32 0, i32 10
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  %34 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %35 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %6, align 8
  %39 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %38, i32 0, i32 10
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  %45 = shl i32 %44, 1
  %46 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %47 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %45
  store i32 %51, i32* %49, align 4
  %52 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %53 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %56 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  %57 = load i32, i32* @QED_MFW_TLV_FLAGS_SIZE, align 4
  store i32 %57, i32* %4, align 4
  br label %130

58:                                               ; preds = %12
  br label %129

59:                                               ; preds = %3, %3, %3
  %60 = load %struct.qed_drv_tlv_hdr*, %struct.qed_drv_tlv_hdr** %5, align 8
  %61 = getelementptr inbounds %struct.qed_drv_tlv_hdr, %struct.qed_drv_tlv_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 132
  store i32 %63, i32* %8, align 4
  %64 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %6, align 8
  %65 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %64, i32 0, i32 9
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %59
  %73 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %6, align 8
  %74 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %73, i32 0, i32 0
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %81 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  %82 = load i32, i32* @ETH_ALEN, align 4
  store i32 %82, i32* %4, align 4
  br label %130

83:                                               ; preds = %59
  br label %129

84:                                               ; preds = %3
  %85 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %6, align 8
  %86 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %6, align 8
  %91 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %90, i32 0, i32 1
  %92 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %93 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %92, i32 0, i32 1
  store i32* %91, i32** %93, align 8
  store i32 4, i32* %4, align 4
  br label %130

94:                                               ; preds = %84
  br label %129

95:                                               ; preds = %3
  %96 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %6, align 8
  %97 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %6, align 8
  %102 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %101, i32 0, i32 2
  %103 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %104 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %103, i32 0, i32 1
  store i32* %102, i32** %104, align 8
  store i32 4, i32* %4, align 4
  br label %130

105:                                              ; preds = %95
  br label %129

106:                                              ; preds = %3
  %107 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %6, align 8
  %108 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %6, align 8
  %113 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %112, i32 0, i32 3
  %114 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %115 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %114, i32 0, i32 1
  store i32* %113, i32** %115, align 8
  store i32 4, i32* %4, align 4
  br label %130

116:                                              ; preds = %106
  br label %129

117:                                              ; preds = %3
  %118 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %6, align 8
  %119 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %6, align 8
  %124 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %123, i32 0, i32 4
  %125 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %7, align 8
  %126 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %125, i32 0, i32 1
  store i32* %124, i32** %126, align 8
  store i32 4, i32* %4, align 4
  br label %130

127:                                              ; preds = %117
  br label %129

128:                                              ; preds = %3
  br label %129

129:                                              ; preds = %128, %127, %116, %105, %94, %83, %58
  store i32 -1, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %122, %111, %100, %89, %72, %18
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
